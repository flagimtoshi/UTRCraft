attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 size;//set this to the width and height of the thing being drawn.
uniform float radius;// radius of blur in pixels
const int num = 64;//quality
const float val = 6.28/float(num);
void main()
{
    gl_FragColor = texture2D( gm_BaseTexture,v_vTexcoord) * v_vColour;
    vec2 S = (radius/size.xy)*vec2(1.,size.x/size.y);
    vec4 tex;
    for(int i = 0; i<num;i++)
    {
        tex += texture2D( gm_BaseTexture,v_vTexcoord+vec2(cos(float(i)*val),
        (sin(float(i)*val)))*S)/4.0;
        tex += texture2D( gm_BaseTexture,v_vTexcoord+vec2(cos(float(i)*val),
        (sin(float(i)*val)))*S*0.8)/4.0;
        tex += texture2D( gm_BaseTexture,v_vTexcoord+vec2(cos(float(i)*val),
        (sin(float(i)*val)))*S*0.6)/4.0;
        tex += texture2D( gm_BaseTexture,v_vTexcoord+vec2(cos(float(i)*val),
        (sin(float(i)*val)))*S*0.4)/4.0;
        
    }
    gl_FragColor.rgb += (tex.rgb*(tex.a/float(num)))/(float(num));
    gl_FragColor.rgb /= 2.0;
}
