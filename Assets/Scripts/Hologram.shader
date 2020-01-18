Shader "Custom/Hologram"
//Modified from https://github.com/andydbc/HologramShader/blob/master/Assets/Hologram/Shader/Hologram.shader
{
	Properties
	{
		// General
		_Brightness("Brightness", Range(0.1, 6.0)) = 3.0
		_Alpha("Alpha", Range(0.0, 1.0)) = 1.0
		_Direction("Direction", Vector) = (0,1,0,0)
		// Main Color
		_MainTex("MainTexture", 2D) = "white" {}
		_MainColor("MainColor", Color) = (1,1,1,1)
		// Rim/Fresnel
		_RimColor("Rim Color", Color) = (1,1,1,1)
		_RimPower("Rim Power", Range(0.1, 10)) = 5.0
		// Scanline
		_ScanTiling("Scan Tiling", Range(0.01, 1000.0)) = 0.05
		_ScanSpeed("Scan Speed", Range(-2.0, 2.0)) = 1.0
		//Vertical Noise
		_NoisePower("Noise Power", Range(0, 10000)) = 1000
	}
		SubShader
			{
				Tags { "Queue" = "Transparent" "RenderType" = "Transparent" }
				Blend SrcAlpha OneMinusSrcAlpha
				LOD 100
				ColorMask RGB
				Cull Back

				Pass
				{
					CGPROGRAM
					#pragma vertex vert
					#pragma fragment frag

					#include "UnityCG.cginc"

					struct appdata
					{
						float4 vertex : POSITION;
						float3 normal : NORMAL;
						float2 uv : TEXCOORD0;
					};

					struct v2f
					{
						float4 vertex : SV_POSITION;
						float2 uv : TEXCOORD0;
						float4 worldVertex : TEXCOORD1;
						float3 viewDir : TEXCOORD2;
						float3 worldNormal : NORMAL;
					};

					sampler2D _MainTex;
					float4 _Direction;
					float4 _MainTex_ST;
					float4 _MainColor;
					float4 _RimColor;
					float _RimPower;
					float _Brightness;
					float _Alpha;
					float _ScanTiling;
					float _ScanSpeed;
					float _NoisePower;

					v2f vert(appdata v)
					{
						v2f o;

						o.vertex = UnityObjectToClipPos(v.vertex);

						o.uv = TRANSFORM_TEX(v.uv, _MainTex);
						o.worldVertex = mul(unity_ObjectToWorld, v.vertex);
						o.worldNormal = UnityObjectToWorldNormal(v.normal);
						o.viewDir = normalize(UnityWorldSpaceViewDir(o.worldVertex.xyz));

						return o;
					}


					fixed4 frag(v2f i) : SV_Target
					{
						fixed4 texColor = tex2D(_MainTex, i.uv);

						half dirVertex = (dot(i.worldVertex, normalize(float4(_Direction.xyz, 1.0))) + 1) / 2;

						// Scanlines
						float scan = 0.0;
							scan = saturate(frac(dirVertex * _ScanTiling + _Time.w * _ScanSpeed));

								// Rim Light
								half rim = 1.0 - saturate(dot(i.viewDir, i.worldNormal));
								fixed4 rimColor = _RimColor * pow(rim, _RimPower);

								fixed4 col = texColor * _MainColor + (0.35 * _MainColor) + rimColor;
								//col.a = texColor.a * _Alpha * (scan + rim);
								col.a = texColor.a * _Alpha * (scan + rim) * saturate((step(sin(i.worldVertex.z * _NoisePower), 0)) + 0.5f);
								col.rgb *= _Brightness;

								return col;
							}
							ENDCG
						}
			}
}