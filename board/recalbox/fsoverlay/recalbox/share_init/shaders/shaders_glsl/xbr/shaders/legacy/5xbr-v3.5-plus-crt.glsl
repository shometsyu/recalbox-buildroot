// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1.xy = vec2(_ps.x, 0.00000000E+00);
    _OUT._t1.zw = vec2(0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 _t1;
};
vec4 _ret_0;
vec3 _TMP37;
vec3 _TMP55;
float _TMP54;
float _TMP53;
float _TMP52;
vec3 _TMP29;
vec3 _TMP31;
vec3 _TMP33;
vec3 _TMP35;
vec3 _TMP36;
vec3 _TMP34;
vec3 _TMP32;
vec3 _TMP30;
vec4 _TMP22;
vec4 _TMP21;
vec3 _TMP46;
vec3 _TMP44;
vec3 _TMP42;
vec3 _TMP40;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0088;
vec2 _c0090;
vec2 _c0092;
vec2 _c0094;
vec2 _c0096;
vec2 _c0100;
vec2 _c0102;
vec2 _c0104;
vec2 _c0106;
vec2 _c0108;
vec2 _c0110;
vec2 _c0112;
vec2 _c0114;
vec2 _c0116;
vec2 _c0118;
vec2 _c0120;
vec2 _c0122;
vec2 _c0124;
vec2 _c0126;
vec2 _c0128;
vec2 _c0130;
vec3 _r0176;
vec3 _r0186;
vec3 _r0196;
vec3 _r0206;
vec3 _r0218;
vec3 _r0228;
vec3 _r0238;
vec3 _r0248;
vec3 _r0260;
vec3 _r0270;
vec3 _r0280;
vec3 _r0290;
vec3 _r0302;
vec3 _r0312;
vec3 _r0322;
vec3 _r0332;
vec3 _r0344;
vec3 _r0354;
vec3 _r0364;
vec3 _r0374;
vec3 _r0386;
vec3 _r0396;
vec3 _r0406;
vec3 _r0416;
vec3 _r0428;
vec3 _r0438;
vec3 _r0448;
vec3 _r0458;
vec3 _r0470;
vec3 _r0480;
vec3 _r0490;
vec3 _r0500;
vec3 _r0722;
vec3 _r0732;
vec3 _r0742;
vec3 _r0752;
vec3 _r0806;
vec3 _r0816;
vec3 _r0826;
vec3 _r0836;
vec3 _r0932;
vec3 _r0942;
vec3 _r0952;
vec3 _r0962;
vec3 _r0974;
vec3 _r0984;
vec3 _r0994;
vec3 _r1004;
vec4 _TMP1015;
vec4 _a1018;
vec4 _TMP1019;
vec4 _a1022;
vec4 _TMP1023;
vec4 _a1026;
vec4 _TMP1027;
vec4 _a1030;
vec4 _TMP1031;
vec4 _a1034;
vec4 _TMP1037;
vec4 _a1040;
vec4 _TMP1041;
vec4 _a1044;
vec4 _TMP1045;
vec4 _a1048;
vec4 _TMP1049;
vec4 _a1052;
vec4 _TMP1053;
vec4 _a1056;
vec4 _TMP1057;
vec4 _a1060;
vec4 _TMP1061;
vec4 _a1064;
vec4 _TMP1065;
vec4 _a1068;
vec4 _TMP1069;
vec4 _a1072;
vec4 _TMP1073;
vec4 _a1076;
vec4 _TMP1077;
vec4 _a1080;
vec3 _TMP1105;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
    vec2 _fp;
    vec4 _b2;
    vec4 _c2;
    vec4 _d2;
    vec4 _e1;
    vec4 _f1;
    vec4 _g1;
    vec4 _h1;
    vec4 _i;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _f4;
    vec3 _color;
    float _ddy;
    float _v_weight_00;
    vec3 _coords10;
    vec3 _colorNB;
    float _v_weight_10;
    _x0088 = TEX0.xy*TextureSize;
    _fp = fract(_x0088);
    _c0090 = (TEX0.xy - TEX1.xy) - TEX1.zw;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0090);
    _c0092 = TEX0.xy - TEX1.zw;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0092);
    _c0094 = (TEX0.xy + TEX1.xy) - TEX1.zw;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0094);
    _c0096 = TEX0.xy - TEX1.xy;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0096);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0100 = TEX0.xy + TEX1.xy;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0100);
    _c0102 = (TEX0.xy - TEX1.xy) + TEX1.zw;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0102);
    _c0104 = TEX0.xy + TEX1.zw;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0104);
    _c0106 = TEX0.xy + TEX1.xy + TEX1.zw;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0106);
    _c0108 = (TEX0.xy - TEX1.xy) - 2.00000000E+00*TEX1.zw;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0108);
    _c0110 = (TEX0.xy + TEX1.xy) - 2.00000000E+00*TEX1.zw;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0110);
    _c0112 = (TEX0.xy - 2.00000000E+00*TEX1.xy) - TEX1.zw;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0112);
    _c0114 = (TEX0.xy - 2.00000000E+00*TEX1.xy) + TEX1.zw;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0114);
    _c0116 = (TEX0.xy + 2.00000000E+00*TEX1.xy) - TEX1.zw;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0116);
    _c0118 = TEX0.xy + 2.00000000E+00*TEX1.xy + TEX1.zw;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0118);
    _c0120 = (TEX0.xy - TEX1.xy) + 2.00000000E+00*TEX1.zw;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0120);
    _c0122 = TEX0.xy + TEX1.xy + 2.00000000E+00*TEX1.zw;
    _TMP16 = COMPAT_TEXTURE(Texture, _c0122);
    _c0124 = TEX0.xy - 2.00000000E+00*TEX1.zw;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0124);
    _c0126 = TEX0.xy - 2.00000000E+00*TEX1.xy;
    _TMP18 = COMPAT_TEXTURE(Texture, _c0126);
    _c0128 = TEX0.xy + 2.00000000E+00*TEX1.zw;
    _TMP19 = COMPAT_TEXTURE(Texture, _c0128);
    _c0130 = TEX0.xy + 2.00000000E+00*TEX1.xy;
    _TMP20 = COMPAT_TEXTURE(Texture, _c0130);
    _r0176.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0176.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0176.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP40 = abs(_r0176);
    _r0186.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0186.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0186.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP42 = abs(_r0186);
    _r0196.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0196.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0196.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP44 = abs(_r0196);
    _r0206.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0206.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0206.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP46 = abs(_r0206);
    _b2 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0218.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP2.xyz);
    _r0218.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP2.xyz);
    _r0218.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP2.xyz);
    _TMP40 = abs(_r0218);
    _r0228.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP0.xyz);
    _r0228.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP0.xyz);
    _r0228.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP0.xyz);
    _TMP42 = abs(_r0228);
    _r0238.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP6.xyz);
    _r0238.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP6.xyz);
    _r0238.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP6.xyz);
    _TMP44 = abs(_r0238);
    _r0248.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0248.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0248.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP46 = abs(_r0248);
    _c2 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0260.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0260.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0260.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP40 = abs(_r0260);
    _r0270.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0270.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0270.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP42 = abs(_r0270);
    _r0280.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0280.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0280.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP44 = abs(_r0280);
    _r0290.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0290.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0290.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP46 = abs(_r0290);
    _d2 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0302.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0302.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0302.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP40 = abs(_r0302);
    _r0312.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0312.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0312.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP42 = abs(_r0312);
    _r0322.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0322.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0322.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP44 = abs(_r0322);
    _r0332.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0332.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0332.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP46 = abs(_r0332);
    _e1 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0344.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0344.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0344.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP40 = abs(_r0344);
    _r0354.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0354.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0354.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP42 = abs(_r0354);
    _r0364.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0364.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0364.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP44 = abs(_r0364);
    _r0374.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0374.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0374.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP46 = abs(_r0374);
    _f1 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0386.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP6.xyz);
    _r0386.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP6.xyz);
    _r0386.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP6.xyz);
    _TMP40 = abs(_r0386);
    _r0396.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0396.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0396.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP42 = abs(_r0396);
    _r0406.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP2.xyz);
    _r0406.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP2.xyz);
    _r0406.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP2.xyz);
    _TMP44 = abs(_r0406);
    _r0416.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP0.xyz);
    _r0416.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP0.xyz);
    _r0416.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP0.xyz);
    _TMP46 = abs(_r0416);
    _g1 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0428.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0428.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0428.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP40 = abs(_r0428);
    _r0438.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0438.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0438.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP42 = abs(_r0438);
    _r0448.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0448.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0448.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP44 = abs(_r0448);
    _r0458.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0458.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0458.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP46 = abs(_r0458);
    _h1 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0470.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0470.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0470.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP40 = abs(_r0470);
    _r0480.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP2.xyz);
    _r0480.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP2.xyz);
    _r0480.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP2.xyz);
    _TMP42 = abs(_r0480);
    _r0490.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP0.xyz);
    _r0490.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP0.xyz);
    _r0490.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP0.xyz);
    _TMP44 = abs(_r0490);
    _r0500.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP6.xyz);
    _r0500.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP6.xyz);
    _r0500.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP6.xyz);
    _TMP46 = abs(_r0500);
    _i = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0722.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP14.xyz);
    _r0722.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP14.xyz);
    _r0722.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP14.xyz);
    _TMP40 = abs(_r0722);
    _r0732.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP10.xyz);
    _r0732.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP10.xyz);
    _r0732.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP10.xyz);
    _TMP42 = abs(_r0732);
    _r0742.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP11.xyz);
    _r0742.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP11.xyz);
    _r0742.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP11.xyz);
    _TMP44 = abs(_r0742);
    _r0752.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP15.xyz);
    _r0752.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP15.xyz);
    _r0752.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP15.xyz);
    _TMP46 = abs(_r0752);
    _i4 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0806.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP16.xyz);
    _r0806.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP16.xyz);
    _r0806.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP16.xyz);
    _TMP40 = abs(_r0806);
    _r0816.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP13.xyz);
    _r0816.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP13.xyz);
    _r0816.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP13.xyz);
    _TMP42 = abs(_r0816);
    _r0826.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP9.xyz);
    _r0826.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP9.xyz);
    _r0826.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP9.xyz);
    _TMP44 = abs(_r0826);
    _r0836.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP12.xyz);
    _r0836.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP12.xyz);
    _r0836.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP12.xyz);
    _TMP46 = abs(_r0836);
    _i5 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0932.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP19.xyz);
    _r0932.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP19.xyz);
    _r0932.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP19.xyz);
    _TMP40 = abs(_r0932);
    _r0942.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP20.xyz);
    _r0942.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP20.xyz);
    _r0942.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP20.xyz);
    _TMP42 = abs(_r0942);
    _r0952.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP17.xyz);
    _r0952.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP17.xyz);
    _r0952.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP17.xyz);
    _TMP44 = abs(_r0952);
    _r0962.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP18.xyz);
    _r0962.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP18.xyz);
    _r0962.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP18.xyz);
    _TMP46 = abs(_r0962);
    _h5 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _r0974.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP20.xyz);
    _r0974.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP20.xyz);
    _r0974.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP20.xyz);
    _TMP40 = abs(_r0974);
    _r0984.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP17.xyz);
    _r0984.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP17.xyz);
    _r0984.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP17.xyz);
    _TMP42 = abs(_r0984);
    _r0994.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP18.xyz);
    _r0994.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP18.xyz);
    _r0994.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP18.xyz);
    _TMP44 = abs(_r0994);
    _r1004.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP19.xyz);
    _r1004.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP19.xyz);
    _r1004.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP19.xyz);
    _TMP46 = abs(_r1004);
    _f4 = vec4(_TMP40.x, _TMP42.x, _TMP44.x, _TMP46.x);
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 5.00000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > 0.00000000E+00);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 2.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > 0.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 5.00000000E-01);
    _interp_restriction_lv1 = bvec4(_e1.x != _f1.x && _e1.x != _h1.x, _e1.y != _f1.y && _e1.y != _h1.y, _e1.z != _f1.z && _e1.z != _h1.z, _e1.w != _f1.w && _e1.w != _h1.w);
    _interp_restriction_lv2_left = bvec4(_e1.x != _g1.x && _d2.x != _g1.x, _e1.y != _g1.y && _d2.y != _g1.y, _e1.z != _g1.z && _d2.z != _g1.z, _e1.w != _g1.w && _d2.w != _g1.w);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c2.x && _b2.x != _c2.x, _e1.y != _c2.y && _b2.y != _c2.y, _e1.z != _c2.z && _b2.z != _c2.z, _e1.w != _c2.w && _b2.w != _c2.w);
    _a1018 = _e1 - _c2;
    _TMP1015 = abs(_a1018);
    _a1022 = _e1 - _g1;
    _TMP1019 = abs(_a1022);
    _a1026 = _i - _h5;
    _TMP1023 = abs(_a1026);
    _a1030 = _i - _f4;
    _TMP1027 = abs(_a1030);
    _a1034 = _h1 - _f1;
    _TMP1031 = abs(_a1034);
    _TMP21 = _TMP1015 + _TMP1019 + _TMP1023 + _TMP1027 + 4.00000000E+00*_TMP1031;
    _a1040 = _h1 - _d2;
    _TMP1037 = abs(_a1040);
    _a1044 = _h1 - _i5;
    _TMP1041 = abs(_a1044);
    _a1048 = _f1 - _i4;
    _TMP1045 = abs(_a1048);
    _a1052 = _f1 - _b2;
    _TMP1049 = abs(_a1052);
    _a1056 = _e1 - _i;
    _TMP1053 = abs(_a1056);
    _TMP22 = _TMP1037 + _TMP1041 + _TMP1045 + _TMP1049 + 4.00000000E+00*_TMP1053;
    _edr = bvec4(_TMP21.x < _TMP22.x && _interp_restriction_lv1.x, _TMP21.y < _TMP22.y && _interp_restriction_lv1.y, _TMP21.z < _TMP22.z && _interp_restriction_lv1.z, _TMP21.w < _TMP22.w && _interp_restriction_lv1.w);
    _a1060 = _f1 - _g1;
    _TMP1057 = abs(_a1060);
    _a1064 = _h1 - _c2;
    _TMP1061 = abs(_a1064);
    _edr_left = bvec4((2.00000000E+00*_TMP1057).x <= _TMP1061.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP1057).y <= _TMP1061.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP1057).z <= _TMP1061.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP1057).w <= _TMP1061.w && _interp_restriction_lv2_left.w);
    _a1068 = _f1 - _g1;
    _TMP1065 = abs(_a1068);
    _a1072 = _h1 - _c2;
    _TMP1069 = abs(_a1072);
    _edr_up = bvec4(_TMP1065.x >= (2.00000000E+00*_TMP1069).x && _interp_restriction_lv2_up.x, _TMP1065.y >= (2.00000000E+00*_TMP1069).y && _interp_restriction_lv2_up.y, _TMP1065.z >= (2.00000000E+00*_TMP1069).z && _interp_restriction_lv2_up.z, _TMP1065.w >= (2.00000000E+00*_TMP1069).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a1076 = _e1 - _f1;
    _TMP1073 = abs(_a1076);
    _a1080 = _e1 - _h1;
    _TMP1077 = abs(_a1080);
    _px = bvec4(_TMP1073.x <= _TMP1077.x, _TMP1073.y <= _TMP1077.y, _TMP1073.z <= _TMP1077.z, _TMP1073.w <= _TMP1077.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP30 = _TMP5.xyz;
        } else {
            _TMP30 = _TMP7.xyz;
        } 
        _TMP29 = _TMP30;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP32 = _TMP1.xyz;
            } else {
                _TMP32 = _TMP5.xyz;
            } 
            _TMP31 = _TMP32;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP34 = _TMP3.xyz;
                } else {
                    _TMP34 = _TMP1.xyz;
                } 
                _TMP33 = _TMP34;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP36 = _TMP7.xyz;
                    } else {
                        _TMP36 = _TMP3.xyz;
                    } 
                    _TMP35 = _TMP36;
                } else {
                    _TMP35 = _TMP4.xyz;
                } 
                _TMP33 = _TMP35;
            } 
            _TMP31 = _TMP33;
        } 
        _TMP29 = _TMP31;
    } 
    _TMP52 = pow(_TMP29.x, 2.40000010E+00);
    _TMP53 = pow(_TMP29.y, 2.40000010E+00);
    _TMP54 = pow(_TMP29.z, 2.40000010E+00);
    _color = vec3(_TMP52, _TMP53, _TMP54);
    _ddy = _fp.y - 5.00000000E-01;
    _v_weight_00 = _ddy/5.00000000E-01;
    if (_v_weight_00 > 1.00000000E+00) { 
        _v_weight_00 = 1.00000000E+00;
    } 
    _v_weight_00 = 1.00000000E+00 - _v_weight_00*_v_weight_00;
    _v_weight_00 = _v_weight_00*_v_weight_00;
    _color = _color*vec3(_v_weight_00, _v_weight_00, _v_weight_00);
    if (_ddy > 0.00000000E+00) { 
        _coords10 = _TMP7.xyz;
        _ddy = 1.00000000E+00 - _ddy;
    } else {
        _coords10 = _TMP1.xyz;
        _ddy = 1.00000000E+00 + _ddy;
    } 
    _TMP52 = pow(_coords10.x, 2.40000010E+00);
    _TMP53 = pow(_coords10.y, 2.40000010E+00);
    _TMP54 = pow(_coords10.z, 2.40000010E+00);
    _colorNB = vec3(_TMP52, _TMP53, _TMP54);
    _v_weight_10 = _ddy/5.00000000E-01;
    if (_v_weight_10 > 1.00000000E+00) { 
        _v_weight_10 = 1.00000000E+00;
    } 
    _v_weight_10 = 1.00000000E+00 - _v_weight_10*_v_weight_10;
    _v_weight_10 = _v_weight_10*_v_weight_10;
    _color = _color + _colorNB*vec3(_v_weight_10, _v_weight_10, _v_weight_10);
    _color = _color*vec3( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _TMP52 = pow(_color.x, 4.54545438E-01);
    _TMP53 = pow(_color.y, 4.54545438E-01);
    _TMP54 = pow(_color.z, 4.54545438E-01);
    _TMP37 = vec3(_TMP52, _TMP53, _TMP54);
    _TMP55 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP37);
    _TMP1105 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP55);
    _ret_0 = vec4(_TMP1105.x, _TMP1105.y, _TMP1105.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
