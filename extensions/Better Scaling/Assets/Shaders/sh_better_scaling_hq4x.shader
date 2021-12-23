attribute vec4 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec4 v_vTexcoord[7];
varying vec4 v_vColour;

uniform vec2 texel_size;

void main() {
    float x = 0.5 * texel_size.x; float y = 0.5 * texel_size.y;
    vec2 dg1 = vec2(x, y);
    vec2 dg2 = vec2(-x, y);
    vec2 sd1 = dg1 * 0.5;
    vec2 sd2 = dg2 * 0.5;
    
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y , in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vTexcoord[0].xy = in_TextureCoord; //Current tx.
    v_vTexcoord[1].xy = v_vTexcoord[0].xy - sd1; //Current tx -0.25,-0.25.
    v_vTexcoord[2].xy = v_vTexcoord[0].xy - sd2; //Current tx  0.25,-0.25.
    v_vTexcoord[3].xy = v_vTexcoord[0].xy + sd1; //Current tx  0.25, 0.25.
    v_vTexcoord[4].xy = v_vTexcoord[0].xy + sd2; //Current tx -0.25, 0.25.
    v_vTexcoord[5].xy = v_vTexcoord[0].xy - dg1; //Current tx -0.50,-0.50.
    v_vTexcoord[6].xy = v_vTexcoord[0].xy + dg1; //Current tx  0.50, 0.50.
    v_vTexcoord[5].zw = v_vTexcoord[0].xy - dg2; //Current tx  0.50,-0.50.
    v_vTexcoord[6].zw = v_vTexcoord[0].xy + dg2; //Current tx -0.50, 0.50.
    
    v_vColour = in_Colour;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec4 v_vTexcoord[7];
varying vec4 v_vColour;

void main() {
    vec4 c = texture2D(gm_BaseTexture, v_vTexcoord[0].xy);
    vec4 i1 = texture2D(gm_BaseTexture, v_vTexcoord[1].xy);
    vec4 i2 = texture2D(gm_BaseTexture, v_vTexcoord[2].xy); 
    vec4 i3 = texture2D(gm_BaseTexture, v_vTexcoord[3].xy); 
    vec4 i4 = texture2D(gm_BaseTexture, v_vTexcoord[4].xy); 
    vec4 o1 = texture2D(gm_BaseTexture, v_vTexcoord[5].xy);
    vec4 o3 = texture2D(gm_BaseTexture, v_vTexcoord[6].xy); 
    vec4 o2 = texture2D(gm_BaseTexture, v_vTexcoord[5].zw);
    vec4 o4 = texture2D(gm_BaseTexture, v_vTexcoord[6].zw); 
    
    float ko1 = dot(abs(o1 - c), vec4(1.0));
    float ko2 = dot(abs(o2 - c), vec4(1.0));
    float ko3 = dot(abs(o3 - c), vec4(1.0));
    float ko4 = dot(abs(o4 - c), vec4(1.0));
    
    float k1 = min(dot(abs(i1 - i3), vec4(1.0)), max(ko1, ko3));
    float k2 = min(dot(abs(i2 - i4), vec4(1.0)), max(ko2, ko4));
    
    float w1 = k2; if (ko3 < ko1) w1 *= ko3 / ko1;
    float w2 = k1; if (ko4 < ko2) w2 *= ko4 / ko2;
    float w3 = k2; if (ko1 < ko3) w3 *= ko1 / ko3;
    float w4 = k1; if (ko2 < ko4) w4 *= ko2 / ko4;
    
    gl_FragColor = (w1 * o1 + w2 * o2 + w3 * o3 + w4 * o4 + 0.001 * c) / (w1 + w2 + w3 + w4 + 0.001) * v_vColour;
}
