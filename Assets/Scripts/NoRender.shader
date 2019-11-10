Shader "Custom/NoRender"
{
		Properties{
		}

			SubShader{
				Tags { "RenderType" = "Transparent" "Queue" = "Transparent"}
				CGPROGRAM

				#pragma surface surf Lambert alpha:premul
				#pragma target 3.0
				#pragma glsl

					struct Input {
						float3 viewDir;
					};


					// SURFACE
					void surf(Input i, inout SurfaceOutput o) {
						o.Alpha = 0;
						discard;
					}

					ENDCG
				}
}
