attribute vec4 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform float size;

void main() {
    gl_FragColor = vec4(2.0 * 0.1329062576 * texture2D(gm_BaseTexture, v_vTexcoord).rgb, 1.0);
    gl_FragColor.rgb += 2.0 * 0.1270834220 * (texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y -       size)).rgb + texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y +       size)).rgb);
    gl_FragColor.rgb += 2.0 * 0.1109147155 * (texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 2.0 * size)).rgb + texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 2.0 * size)).rgb);
    gl_FragColor.rgb += 2.0 * 0.0884076034 * (texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 3.0 * size)).rgb + texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 3.0 * size)).rgb);
    gl_FragColor.rgb += 2.0 * 0.0643561781 * (texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 4.0 * size)).rgb + texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 4.0 * size)).rgb);
    gl_FragColor.rgb += 2.0 * 0.0427849522 * (texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 5.0 * size)).rgb + texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 5.0 * size)).rgb);
}
