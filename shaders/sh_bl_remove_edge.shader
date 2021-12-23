attribute vec4 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform vec2 texel_size;

vec2
t_0 = vec2(texel_size.x, 0.0),
t_1 = vec2(texel_size.x, -texel_size.y),
t_2 = vec2(0.0, -texel_size.y),
t_3 = vec2(-texel_size.x, -texel_size.y),
t_4 = vec2(-texel_size.x, 0.0),
t_5 = vec2(-texel_size.x, texel_size.y),
t_6 = vec2(0.0, texel_size.y),
t_7 = vec2(texel_size.x, texel_size.y);

void main() {
    gl_FragColor = vec4(
        1.0 - vec3(
            texture2D(gm_BaseTexture, v_vTexcoord).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_0).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_1).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_2).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_3).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_4).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_5).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_6).r == 0.0 &&
            texture2D(gm_BaseTexture, v_vTexcoord + t_7).r == 0.0
        ),
        1.0
    );
}
