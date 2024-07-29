//Etha's rotating billboard v1.0
//skype: nordbow

#define dpi3 2.09439510239
float4x4 wvp : WORLDVIEWPROJECTION;
float t:TIME;
float timeNext, timeLag, p, pw, pt;

texture tex1;
sampler s1 = sampler_state{
    Texture = (tex1);
	MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Wrap;
    AddressV = Wrap;
};
texture tex2;
sampler s2 = sampler_state{
    Texture = (tex2);
	MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Wrap;
    AddressV = Wrap;
};
texture tex3;
sampler s3 = sampler_state{
    Texture = (tex3);
	MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Wrap;
    AddressV = Wrap;
};/**/

////////////////////////////////////////////////////////////
struct VSInput
{
	float4 P 		: POSITION0;
	float2 TC 		: TEXCOORD0;
	float3 Normal 	: NORMAL0;
	float4 col		: COLOR0;
};
//////////////////////////////
struct PSInput
{
	float4 P 	: POSITION0;
	float2 TC 	: TEXCOORD0;
};
////////////////////////////////////////////////////////////
PSInput vs(VSInput VS,uniform int v )
{
    PSInput PS ;

	float number=VS.col.r*255;
	PS.TC=float2((VS.P.x + number + .5)/16.0, VS.TC.y);				
	float a;	
	float delta=modf((t-timeNext*number+timeLag)/p, a);
	a += max(delta-pw, 0)/pt;
	a=dpi3 * (a+v);
	float2x2 rot={	cos(a),-sin(a),
					sin(a),	cos(a)};
	VS.P.xy=mul(VS.P.xy,rot);
	VS.P.x+=number-8+.5;	
	PS.P=mul(VS.P,wvp);
	
    return PS;
}
//////////////////////////////

float4 ps(PSInput PS,uniform sampler s) : COLOR0{
	return tex2D(s, PS.TC);	
}
 
technique rotating_billboard{
	pass Pass0{    
		VertexShader = compile vs_2_0 vs(1);
		PixelShader = compile ps_2_0 ps(s1);
	} 
	pass Pass1{    
		VertexShader = compile vs_2_0 vs(2);
		PixelShader = compile ps_2_0 ps(s2);
	}
	pass Pass33{    
		VertexShader = compile vs_2_0 vs(3);
		PixelShader = compile ps_2_0 ps(s3);
	}/**/
}










/* c2h5oh */