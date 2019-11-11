/************************************************************************
 * Written by Nicholas Mirchandani in November 2019                     *
 *                                                                      *
 * The purpose of NoRender.shader is to function as a hack to allow us  *
 * to hide the default SteamVR controllers without breaking built in	*
 * VRTK functionality, which somehow relies on it.						*
 *                                                                      *
 * Edited by Nicholas Mirchandani on 11/10/19                           *
 ************************************************************************/
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
