//Toon Shader created using Erik Roystan Ross's Toon Shader as a reference for a base toon shader, which was then iterated upon
//https://github.com/IronWarrior/UnityToonShader
Shader "Custom/ParallaxBase" {
    Properties {	//NOTE: HDR indicates that a texture property expects a high-dynamic range (HDR) texture.
		_Color("Color", Color) = (1, 1, 1, 1)
        _MainTex("Main Texture", 2D) = "white" {}
		_HighlightDetailTex("Highlights Detail Texture", 2D) = "white" {}
		_HighlightDetailStrength("Highlight Detail Strength", Float) = 1
		_MidDetailTex("Midtones Detail Texture", 2D) = "white" {}
		_MidtoneDetailStrength("Midtones Detail Strength", Float) = 1
		_ShadowDetailTex("Shadows Detail Texture", 2D) = "white" {}
		_ShadowDetailStrength("Shadow Detail Strength", Float) = 1
		_InterpolationAmount("Interpolation Amount", Float) = 0.05
		//Ambient Color is applied Uniformly to all surfaces of the object
		[HDR] _AmbientColor("Ambient Color", Color) = (0.4, 0.4, 0.4, 1)
		[HDR] _SpecularColor("Specular Color", Color) = (0.9, 0.9, 0.9, 1)
		//Controls the size of the specular reflection
		_Glossiness("Glossiness", Float) = 32
		[HDR] _RimColor("Rim Color", Color) = (1, 1, 1, 1)
		/*_RimAmount("Rim Amount", Range(0,1)) = 0.716
		//Controls how the rim edges get blended out on unlit parts of the surface.
		_RimThreshold("Rim Threshold", Range(0,1)) = 0.1*/
    }
    SubShader {
        Tags { "RenderType"="Opaque" }

        Pass {
			//Setting up our pass to be the first lighting pass
			Tags {
			"LightMode" = "ForwardBase"
			}

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fwdbase

            #include "UnityCG.cginc"
			//Required includes for lighting and shadows
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define LOW_MID_THRESHOLD 0.25
			#define MID_HIGH_THRESHOLD 0.75
			#define SHADOW_LIGHTINTENSITY 0.0
			#define MIDTONE_LIGHTINTENSITY 0.5
			#define HIGHLIGHT_LIGHTINTENSITY 1.0

            struct appdata {
                float4 vertex : POSITION;
				float3 normal : NORMAL;
                float2 uv : TEXCOORD0;
            };

            struct v2f {
				float4 pos : SV_POSITION;
				float3 worldNormal : NORMAL;
                float2 uv : TEXCOORD0;
				float3 viewDir : TEXCOORD1;
				//Puts a custom value into TEXCOORD2 (Thus the 2) to be used for shadows later.  From Autolight.cginc
				SHADOW_COORDS(2)
				float2 uvHigh : TEXCOORD3;
				float2 uvMid : TEXCOORD4;
				float2 uvShadow : TEXCOORD5;
            };

			sampler2D _MainTex;
			float4 _MainTex_ST;

			sampler2D _HighlightDetailTex;
			float4 _HighlightDetailTex_ST;
			sampler2D _MidDetailTex;
			float4 _MidDetailTex_ST;
			sampler2D _ShadowDetailTex;
			float4 _ShadowDetailTex_ST;


            v2f vert (appdata v) {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
				o.worldNormal = UnityObjectToWorldNormal(v.normal);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.viewDir = WorldSpaceViewDir(v.vertex);
				//Transfers the ShadowCoord given in TEXCOORD2 from world space to shadow-map space.  From Autolight.cginc
				TRANSFER_SHADOW(o)
				o.uvHigh = TRANSFORM_TEX(v.uv, _HighlightDetailTex);
				o.uvMid = TRANSFORM_TEX(v.uv, _MidDetailTex);
				o.uvShadow = TRANSFORM_TEX(v.uv, _ShadowDetailTex);
                return o;
            }

			float4 _Color;

			float4 _AmbientColor;

			float4 _SpecularColor;
			float4 _Glossiness;

			float4 _RimColor;
			float4 _RimAmount;
			float4 _RimThreshold;

			float _HighlightDetailStrength;
			float _MidtoneDetailStrength;
			float _ShadowDetailStrength;

			float _InterpolationAmount;

            fixed4 frag (v2f i) : SV_Target {
				float3 normal = normalize(i.worldNormal);
				float3 viewDir = normalize(i.viewDir);

				//Lighting calculated as is standard in Lambertian Lighting as N dot L
				float NdotL = dot(_WorldSpaceLightPos0, normal);	//_WorldSpaceLightPos0 is the first light, and since this is forwardBase will always be the light we want
				//Calculates shadow, once again using macros from Autolight.cginc
				float shadow = SHADOW_ATTENUATION(i);

				float shadowToMidInterpolation = LOW_MID_THRESHOLD - _InterpolationAmount;
				float midToHighInterpolation = MID_HIGH_THRESHOLD - _InterpolationAmount;
				//lightIntensity's expression is a long concatenation of conditional operators designed to segment the shader into 3 tones but interpolate between them along the edges at the threshold
				float lightIntensity = NdotL > shadowToMidInterpolation ? (NdotL >= LOW_MID_THRESHOLD ? (NdotL > midToHighInterpolation ? (NdotL >= MID_HIGH_THRESHOLD ? 1.0 : (NdotL - MID_HIGH_THRESHOLD + _InterpolationAmount) * ((HIGHLIGHT_LIGHTINTENSITY - MIDTONE_LIGHTINTENSITY) / (_InterpolationAmount)) + MIDTONE_LIGHTINTENSITY) : MIDTONE_LIGHTINTENSITY) : (NdotL - LOW_MID_THRESHOLD + _InterpolationAmount) * ((MIDTONE_LIGHTINTENSITY - SHADOW_LIGHTINTENSITY)/(_InterpolationAmount)) + SHADOW_LIGHTINTENSITY) : SHADOW_LIGHTINTENSITY;
				//Multiply in the main light color to the light for shader calculations
				float4 light = lightIntensity * _LightColor0;

				//Calculating vector between lightDir and viewDir for specular reflection
				float3 halfVector = normalize(_WorldSpaceLightPos0 + viewDir);
				float NdotH = dot(normal, halfVector);
				//Raise specularIntensity to the power of Glossiness to give more creative control over the effect
				float specularIntensity = pow(NdotH * lightIntensity, _Glossiness * _Glossiness);
				float specularIntensitySmooth = smoothstep(0.0, 0.01, specularIntensity);
				float4 specular = specularIntensitySmooth * _SpecularColor;

				//Rim Lighting
				float rimDot = 1 - dot(viewDir, normal);
				rimDot = rimDot * _RimColor;
				/*//Ensuring the rim lighting only appears on thelit side of the surface
				float rimIntensity = rimDot * pow(NdotL, _RimThreshold);
				rimIntensity = smoothstep(_RimAmount - 0.01, _RimAmount + 0.01, rimIntensity);
				float4 rim = rimIntensity * _RimColor;*/

				//Getting the texture at that point and combining the rest of the calculations
				float4 mainTex = tex2D(_MainTex, i.uv);
				float4 highlightDetailRaw = tex2D(_HighlightDetailTex, i.uvHigh);
				float4 midtoneDetailRaw = tex2D(_MidDetailTex, i.uvMid);
				float4 shadowDetailRaw = tex2D(_ShadowDetailTex, i.uvShadow);

				float highlightDetailAvg = (highlightDetailRaw.r + highlightDetailRaw.g + highlightDetailRaw.b) / 3;
				float midtoneDetailAvg = (midtoneDetailRaw.r + midtoneDetailRaw.g + midtoneDetailRaw.b) / 3;
				float shadowDetailAvg = (shadowDetailRaw.r + shadowDetailRaw.g + shadowDetailRaw.b) / 3;

				float4 highlightDetail = float4(highlightDetailAvg, highlightDetailAvg, highlightDetailAvg, highlightDetailRaw.a);
				float4 midtoneDetail = float4(midtoneDetailAvg, midtoneDetailAvg, midtoneDetailAvg, midtoneDetailRaw.a);
				float4 shadowDetail = float4(shadowDetailAvg, shadowDetailAvg, shadowDetailAvg, shadowDetailRaw.a);

				//Highlight Detail, with hard coded intensity of 1.0
				mainTex = mainTex + (_HighlightDetailStrength * (lightIntensity == HIGHLIGHT_LIGHTINTENSITY) * highlightDetail);

				//Midtone Detail, with hard coded intensity of 0.5
				mainTex = mainTex + (_MidtoneDetailStrength * (lightIntensity == MIDTONE_LIGHTINTENSITY) * midtoneDetail);

				//Shadow Detail, with hard coded intensity of 0.00
				mainTex = mainTex + (_ShadowDetailStrength * (lightIntensity == SHADOW_LIGHTINTENSITY) * shadowDetail);
				//TODO: Implement detail textures to whiten sample

				return (light + _AmbientColor + rimDot + specular) * _Color * mainTex;
            }
            ENDCG
        }
    //Cast generic flat shadows
	UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
	}
}
