//
// Icy blue overlay shader.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	//Texture
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//Mult
	gl_FragColor.r *= 0.7;
	gl_FragColor.b *= 1.2;
	
	//Add
	gl_FragColor.r -= 0.2;
	gl_FragColor.g += 0.1;
	gl_FragColor.b += 0.3;
}
