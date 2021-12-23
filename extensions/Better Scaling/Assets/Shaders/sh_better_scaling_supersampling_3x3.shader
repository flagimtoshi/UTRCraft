attribute vec4 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 offset;

void main() {
    gl_FragColor = v_vColour * (
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(-0.6666666667, -0.6666666667)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(-0.6666666667, 0.0)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(-0.6666666667, 0.6666666667)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.0, -0.6666666667)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.0, 0.0)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.0, 0.6666666667)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.6666666667, -0.6666666667)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.6666666667, 0.0)) +
        texture2D(gm_BaseTexture, v_vTexcoord + offset * vec2(0.6666666667, 0.6666666667))
    ) * 0.1111111111;
}
