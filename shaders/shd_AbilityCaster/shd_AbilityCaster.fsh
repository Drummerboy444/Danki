//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float in_Multiply[4];
uniform float in_Add[4];

void main()
{	
	vec4 v_Mult = vec4(in_Multiply[0], in_Multiply[1], in_Multiply[2], in_Multiply[3]);
	vec4 v_Add = vec4(in_Add[0], in_Add[1], in_Add[2], in_Add[3]);
	
	vec4 texColour = texture2D(gm_BaseTexture, v_vTexcoord);
	
	gl_FragColor = v_vColour * texColour;
	
	gl_FragColor = gl_FragColor * v_Mult;
	gl_FragColor =  gl_FragColor + v_Add;
}
