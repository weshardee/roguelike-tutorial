pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const struct_Vector2 = extern struct {
    x: f32,
    y: f32,
};
pub const Vector2 = struct_Vector2;
pub const struct_Vector3 = extern struct {
    x: f32,
    y: f32,
    z: f32,
};
pub const Vector3 = struct_Vector3;
pub const struct_Vector4 = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const Vector4 = struct_Vector4;
pub const Quaternion = Vector4;
pub const struct_Matrix = extern struct {
    m0: f32,
    m4: f32,
    m8: f32,
    m12: f32,
    m1: f32,
    m5: f32,
    m9: f32,
    m13: f32,
    m2: f32,
    m6: f32,
    m10: f32,
    m14: f32,
    m3: f32,
    m7: f32,
    m11: f32,
    m15: f32,
};
pub const Matrix = struct_Matrix;
pub const struct_Color = extern struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,
};
pub const Color = struct_Color;
pub const struct_Rectangle = extern struct {
    x: f32,
    y: f32,
    width: f32,
    height: f32,
};
pub const Rectangle = struct_Rectangle;
pub const struct_Image = extern struct {
    data: ?*anyopaque,
    width: c_int,
    height: c_int,
    mipmaps: c_int,
    format: c_int,
};
pub const Image = struct_Image;
pub const struct_Texture = extern struct {
    id: c_uint,
    width: c_int,
    height: c_int,
    mipmaps: c_int,
    format: c_int,
};
pub const Texture = struct_Texture;
pub const Texture2D = Texture;
pub const TextureCubemap = Texture;
pub const struct_RenderTexture = extern struct {
    id: c_uint,
    texture: Texture,
    depth: Texture,
};
pub const RenderTexture = struct_RenderTexture;
pub const RenderTexture2D = RenderTexture;
pub const struct_NPatchInfo = extern struct {
    source: Rectangle,
    left: c_int,
    top: c_int,
    right: c_int,
    bottom: c_int,
    layout: c_int,
};
pub const NPatchInfo = struct_NPatchInfo;
pub const struct_GlyphInfo = extern struct {
    value: c_int,
    offsetX: c_int,
    offsetY: c_int,
    advanceX: c_int,
    image: Image,
};
pub const GlyphInfo = struct_GlyphInfo;
pub const struct_Font = extern struct {
    baseSize: c_int,
    glyphCount: c_int,
    glyphPadding: c_int,
    texture: Texture2D,
    recs: [*c]Rectangle,
    glyphs: [*c]GlyphInfo,
};
pub const Font = struct_Font;
pub const struct_Camera3D = extern struct {
    position: Vector3,
    target: Vector3,
    up: Vector3,
    fovy: f32,
    projection: c_int,
};
pub const Camera3D = struct_Camera3D;
pub const Camera = Camera3D;
pub const struct_Camera2D = extern struct {
    offset: Vector2,
    target: Vector2,
    rotation: f32,
    zoom: f32,
};
pub const Camera2D = struct_Camera2D;
pub const struct_Mesh = extern struct {
    vertexCount: c_int,
    triangleCount: c_int,
    vertices: [*c]f32,
    texcoords: [*c]f32,
    texcoords2: [*c]f32,
    normals: [*c]f32,
    tangents: [*c]f32,
    colors: [*c]u8,
    indices: [*c]c_ushort,
    animVertices: [*c]f32,
    animNormals: [*c]f32,
    boneIds: [*c]u8,
    boneWeights: [*c]f32,
    vaoId: c_uint,
    vboId: [*c]c_uint,
};
pub const Mesh = struct_Mesh;
pub const struct_Shader = extern struct {
    id: c_uint,
    locs: [*c]c_int,
};
pub const Shader = struct_Shader;
pub const struct_MaterialMap = extern struct {
    texture: Texture2D,
    color: Color,
    value: f32,
};
pub const MaterialMap = struct_MaterialMap;
pub const struct_Material = extern struct {
    shader: Shader,
    maps: [*c]MaterialMap,
    params: [4]f32,
};
pub const Material = struct_Material;
pub const struct_Transform = extern struct {
    translation: Vector3,
    rotation: Quaternion,
    scale: Vector3,
};
pub const Transform = struct_Transform;
pub const struct_BoneInfo = extern struct {
    name: [32]u8,
    parent: c_int,
};
pub const BoneInfo = struct_BoneInfo;
pub const struct_Model = extern struct {
    transform: Matrix,
    meshCount: c_int,
    materialCount: c_int,
    meshes: [*c]Mesh,
    materials: [*c]Material,
    meshMaterial: [*c]c_int,
    boneCount: c_int,
    bones: [*c]BoneInfo,
    bindPose: [*c]Transform,
};
pub const Model = struct_Model;
pub const struct_ModelAnimation = extern struct {
    boneCount: c_int,
    frameCount: c_int,
    bones: [*c]BoneInfo,
    framePoses: [*c][*c]Transform,
};
pub const ModelAnimation = struct_ModelAnimation;
pub const struct_Ray = extern struct {
    position: Vector3,
    direction: Vector3,
};
pub const Ray = struct_Ray;
pub const struct_RayCollision = extern struct {
    hit: bool,
    distance: f32,
    point: Vector3,
    normal: Vector3,
};
pub const RayCollision = struct_RayCollision;
pub const struct_BoundingBox = extern struct {
    min: Vector3,
    max: Vector3,
};
pub const BoundingBox = struct_BoundingBox;
pub const struct_Wave = extern struct {
    frameCount: c_uint,
    sampleRate: c_uint,
    sampleSize: c_uint,
    channels: c_uint,
    data: ?*anyopaque,
};
pub const Wave = struct_Wave;
pub const struct_rAudioBuffer = opaque {};
pub const rAudioBuffer = struct_rAudioBuffer;
pub const struct_rAudioProcessor = opaque {};
pub const rAudioProcessor = struct_rAudioProcessor;
pub const struct_AudioStream = extern struct {
    buffer: ?*rAudioBuffer,
    processor: ?*rAudioProcessor,
    sampleRate: c_uint,
    sampleSize: c_uint,
    channels: c_uint,
};
pub const AudioStream = struct_AudioStream;
pub const struct_Sound = extern struct {
    stream: AudioStream,
    frameCount: c_uint,
};
pub const Sound = struct_Sound;
pub const struct_Music = extern struct {
    stream: AudioStream,
    frameCount: c_uint,
    looping: bool,
    ctxType: c_int,
    ctxData: ?*anyopaque,
};
pub const Music = struct_Music;
pub const struct_VrDeviceInfo = extern struct {
    hResolution: c_int,
    vResolution: c_int,
    hScreenSize: f32,
    vScreenSize: f32,
    vScreenCenter: f32,
    eyeToScreenDistance: f32,
    lensSeparationDistance: f32,
    interpupillaryDistance: f32,
    lensDistortionValues: [4]f32,
    chromaAbCorrection: [4]f32,
};
pub const VrDeviceInfo = struct_VrDeviceInfo;
pub const struct_VrStereoConfig = extern struct {
    projection: [2]Matrix,
    viewOffset: [2]Matrix,
    leftLensCenter: [2]f32,
    rightLensCenter: [2]f32,
    leftScreenCenter: [2]f32,
    rightScreenCenter: [2]f32,
    scale: [2]f32,
    scaleIn: [2]f32,
};
pub const VrStereoConfig = struct_VrStereoConfig;
pub const struct_FilePathList = extern struct {
    capacity: c_uint,
    count: c_uint,
    paths: [*c][*c]u8,
};
pub const FilePathList = struct_FilePathList;
pub const FLAG_VSYNC_HINT: c_int = 64;
pub const FLAG_FULLSCREEN_MODE: c_int = 2;
pub const FLAG_WINDOW_RESIZABLE: c_int = 4;
pub const FLAG_WINDOW_UNDECORATED: c_int = 8;
pub const FLAG_WINDOW_HIDDEN: c_int = 128;
pub const FLAG_WINDOW_MINIMIZED: c_int = 512;
pub const FLAG_WINDOW_MAXIMIZED: c_int = 1024;
pub const FLAG_WINDOW_UNFOCUSED: c_int = 2048;
pub const FLAG_WINDOW_TOPMOST: c_int = 4096;
pub const FLAG_WINDOW_ALWAYS_RUN: c_int = 256;
pub const FLAG_WINDOW_TRANSPARENT: c_int = 16;
pub const FLAG_WINDOW_HIGHDPI: c_int = 8192;
pub const FLAG_WINDOW_MOUSE_PASSTHROUGH: c_int = 16384;
pub const FLAG_MSAA_4X_HINT: c_int = 32;
pub const FLAG_INTERLACED_HINT: c_int = 65536;
pub const ConfigFlags = c_uint;
pub const LOG_ALL: c_int = 0;
pub const LOG_TRACE: c_int = 1;
pub const LOG_DEBUG: c_int = 2;
pub const LOG_INFO: c_int = 3;
pub const LOG_WARNING: c_int = 4;
pub const LOG_ERROR: c_int = 5;
pub const LOG_FATAL: c_int = 6;
pub const LOG_NONE: c_int = 7;
pub const TraceLogLevel = c_uint;
pub const KEY_NULL: c_int = 0;
pub const KEY_APOSTROPHE: c_int = 39;
pub const KEY_COMMA: c_int = 44;
pub const KEY_MINUS: c_int = 45;
pub const KEY_PERIOD: c_int = 46;
pub const KEY_SLASH: c_int = 47;
pub const KEY_ZERO: c_int = 48;
pub const KEY_ONE: c_int = 49;
pub const KEY_TWO: c_int = 50;
pub const KEY_THREE: c_int = 51;
pub const KEY_FOUR: c_int = 52;
pub const KEY_FIVE: c_int = 53;
pub const KEY_SIX: c_int = 54;
pub const KEY_SEVEN: c_int = 55;
pub const KEY_EIGHT: c_int = 56;
pub const KEY_NINE: c_int = 57;
pub const KEY_SEMICOLON: c_int = 59;
pub const KEY_EQUAL: c_int = 61;
pub const KEY_A: c_int = 65;
pub const KEY_B: c_int = 66;
pub const KEY_C: c_int = 67;
pub const KEY_D: c_int = 68;
pub const KEY_E: c_int = 69;
pub const KEY_F: c_int = 70;
pub const KEY_G: c_int = 71;
pub const KEY_H: c_int = 72;
pub const KEY_I: c_int = 73;
pub const KEY_J: c_int = 74;
pub const KEY_K: c_int = 75;
pub const KEY_L: c_int = 76;
pub const KEY_M: c_int = 77;
pub const KEY_N: c_int = 78;
pub const KEY_O: c_int = 79;
pub const KEY_P: c_int = 80;
pub const KEY_Q: c_int = 81;
pub const KEY_R: c_int = 82;
pub const KEY_S: c_int = 83;
pub const KEY_T: c_int = 84;
pub const KEY_U: c_int = 85;
pub const KEY_V: c_int = 86;
pub const KEY_W: c_int = 87;
pub const KEY_X: c_int = 88;
pub const KEY_Y: c_int = 89;
pub const KEY_Z: c_int = 90;
pub const KEY_LEFT_BRACKET: c_int = 91;
pub const KEY_BACKSLASH: c_int = 92;
pub const KEY_RIGHT_BRACKET: c_int = 93;
pub const KEY_GRAVE: c_int = 96;
pub const KEY_SPACE: c_int = 32;
pub const KEY_ESCAPE: c_int = 256;
pub const KEY_ENTER: c_int = 257;
pub const KEY_TAB: c_int = 258;
pub const KEY_BACKSPACE: c_int = 259;
pub const KEY_INSERT: c_int = 260;
pub const KEY_DELETE: c_int = 261;
pub const KEY_RIGHT: c_int = 262;
pub const KEY_LEFT: c_int = 263;
pub const KEY_DOWN: c_int = 264;
pub const KEY_UP: c_int = 265;
pub const KEY_PAGE_UP: c_int = 266;
pub const KEY_PAGE_DOWN: c_int = 267;
pub const KEY_HOME: c_int = 268;
pub const KEY_END: c_int = 269;
pub const KEY_CAPS_LOCK: c_int = 280;
pub const KEY_SCROLL_LOCK: c_int = 281;
pub const KEY_NUM_LOCK: c_int = 282;
pub const KEY_PRINT_SCREEN: c_int = 283;
pub const KEY_PAUSE: c_int = 284;
pub const KEY_F1: c_int = 290;
pub const KEY_F2: c_int = 291;
pub const KEY_F3: c_int = 292;
pub const KEY_F4: c_int = 293;
pub const KEY_F5: c_int = 294;
pub const KEY_F6: c_int = 295;
pub const KEY_F7: c_int = 296;
pub const KEY_F8: c_int = 297;
pub const KEY_F9: c_int = 298;
pub const KEY_F10: c_int = 299;
pub const KEY_F11: c_int = 300;
pub const KEY_F12: c_int = 301;
pub const KEY_LEFT_SHIFT: c_int = 340;
pub const KEY_LEFT_CONTROL: c_int = 341;
pub const KEY_LEFT_ALT: c_int = 342;
pub const KEY_LEFT_SUPER: c_int = 343;
pub const KEY_RIGHT_SHIFT: c_int = 344;
pub const KEY_RIGHT_CONTROL: c_int = 345;
pub const KEY_RIGHT_ALT: c_int = 346;
pub const KEY_RIGHT_SUPER: c_int = 347;
pub const KEY_KB_MENU: c_int = 348;
pub const KEY_KP_0: c_int = 320;
pub const KEY_KP_1: c_int = 321;
pub const KEY_KP_2: c_int = 322;
pub const KEY_KP_3: c_int = 323;
pub const KEY_KP_4: c_int = 324;
pub const KEY_KP_5: c_int = 325;
pub const KEY_KP_6: c_int = 326;
pub const KEY_KP_7: c_int = 327;
pub const KEY_KP_8: c_int = 328;
pub const KEY_KP_9: c_int = 329;
pub const KEY_KP_DECIMAL: c_int = 330;
pub const KEY_KP_DIVIDE: c_int = 331;
pub const KEY_KP_MULTIPLY: c_int = 332;
pub const KEY_KP_SUBTRACT: c_int = 333;
pub const KEY_KP_ADD: c_int = 334;
pub const KEY_KP_ENTER: c_int = 335;
pub const KEY_KP_EQUAL: c_int = 336;
pub const KEY_BACK: c_int = 4;
pub const KEY_MENU: c_int = 82;
pub const KEY_VOLUME_UP: c_int = 24;
pub const KEY_VOLUME_DOWN: c_int = 25;
pub const KeyboardKey = c_uint;
pub const MOUSE_BUTTON_LEFT: c_int = 0;
pub const MOUSE_BUTTON_RIGHT: c_int = 1;
pub const MOUSE_BUTTON_MIDDLE: c_int = 2;
pub const MOUSE_BUTTON_SIDE: c_int = 3;
pub const MOUSE_BUTTON_EXTRA: c_int = 4;
pub const MOUSE_BUTTON_FORWARD: c_int = 5;
pub const MOUSE_BUTTON_BACK: c_int = 6;
pub const MouseButton = c_uint;
pub const MOUSE_CURSOR_DEFAULT: c_int = 0;
pub const MOUSE_CURSOR_ARROW: c_int = 1;
pub const MOUSE_CURSOR_IBEAM: c_int = 2;
pub const MOUSE_CURSOR_CROSSHAIR: c_int = 3;
pub const MOUSE_CURSOR_POINTING_HAND: c_int = 4;
pub const MOUSE_CURSOR_RESIZE_EW: c_int = 5;
pub const MOUSE_CURSOR_RESIZE_NS: c_int = 6;
pub const MOUSE_CURSOR_RESIZE_NWSE: c_int = 7;
pub const MOUSE_CURSOR_RESIZE_NESW: c_int = 8;
pub const MOUSE_CURSOR_RESIZE_ALL: c_int = 9;
pub const MOUSE_CURSOR_NOT_ALLOWED: c_int = 10;
pub const MouseCursor = c_uint;
pub const GAMEPAD_BUTTON_UNKNOWN: c_int = 0;
pub const GAMEPAD_BUTTON_LEFT_FACE_UP: c_int = 1;
pub const GAMEPAD_BUTTON_LEFT_FACE_RIGHT: c_int = 2;
pub const GAMEPAD_BUTTON_LEFT_FACE_DOWN: c_int = 3;
pub const GAMEPAD_BUTTON_LEFT_FACE_LEFT: c_int = 4;
pub const GAMEPAD_BUTTON_RIGHT_FACE_UP: c_int = 5;
pub const GAMEPAD_BUTTON_RIGHT_FACE_RIGHT: c_int = 6;
pub const GAMEPAD_BUTTON_RIGHT_FACE_DOWN: c_int = 7;
pub const GAMEPAD_BUTTON_RIGHT_FACE_LEFT: c_int = 8;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_1: c_int = 9;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_2: c_int = 10;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_1: c_int = 11;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_2: c_int = 12;
pub const GAMEPAD_BUTTON_MIDDLE_LEFT: c_int = 13;
pub const GAMEPAD_BUTTON_MIDDLE: c_int = 14;
pub const GAMEPAD_BUTTON_MIDDLE_RIGHT: c_int = 15;
pub const GAMEPAD_BUTTON_LEFT_THUMB: c_int = 16;
pub const GAMEPAD_BUTTON_RIGHT_THUMB: c_int = 17;
pub const GamepadButton = c_uint;
pub const GAMEPAD_AXIS_LEFT_X: c_int = 0;
pub const GAMEPAD_AXIS_LEFT_Y: c_int = 1;
pub const GAMEPAD_AXIS_RIGHT_X: c_int = 2;
pub const GAMEPAD_AXIS_RIGHT_Y: c_int = 3;
pub const GAMEPAD_AXIS_LEFT_TRIGGER: c_int = 4;
pub const GAMEPAD_AXIS_RIGHT_TRIGGER: c_int = 5;
pub const GamepadAxis = c_uint;
pub const MATERIAL_MAP_ALBEDO: c_int = 0;
pub const MATERIAL_MAP_METALNESS: c_int = 1;
pub const MATERIAL_MAP_NORMAL: c_int = 2;
pub const MATERIAL_MAP_ROUGHNESS: c_int = 3;
pub const MATERIAL_MAP_OCCLUSION: c_int = 4;
pub const MATERIAL_MAP_EMISSION: c_int = 5;
pub const MATERIAL_MAP_HEIGHT: c_int = 6;
pub const MATERIAL_MAP_CUBEMAP: c_int = 7;
pub const MATERIAL_MAP_IRRADIANCE: c_int = 8;
pub const MATERIAL_MAP_PREFILTER: c_int = 9;
pub const MATERIAL_MAP_BRDF: c_int = 10;
pub const MaterialMapIndex = c_uint;
pub const SHADER_LOC_VERTEX_POSITION: c_int = 0;
pub const SHADER_LOC_VERTEX_TEXCOORD01: c_int = 1;
pub const SHADER_LOC_VERTEX_TEXCOORD02: c_int = 2;
pub const SHADER_LOC_VERTEX_NORMAL: c_int = 3;
pub const SHADER_LOC_VERTEX_TANGENT: c_int = 4;
pub const SHADER_LOC_VERTEX_COLOR: c_int = 5;
pub const SHADER_LOC_MATRIX_MVP: c_int = 6;
pub const SHADER_LOC_MATRIX_VIEW: c_int = 7;
pub const SHADER_LOC_MATRIX_PROJECTION: c_int = 8;
pub const SHADER_LOC_MATRIX_MODEL: c_int = 9;
pub const SHADER_LOC_MATRIX_NORMAL: c_int = 10;
pub const SHADER_LOC_VECTOR_VIEW: c_int = 11;
pub const SHADER_LOC_COLOR_DIFFUSE: c_int = 12;
pub const SHADER_LOC_COLOR_SPECULAR: c_int = 13;
pub const SHADER_LOC_COLOR_AMBIENT: c_int = 14;
pub const SHADER_LOC_MAP_ALBEDO: c_int = 15;
pub const SHADER_LOC_MAP_METALNESS: c_int = 16;
pub const SHADER_LOC_MAP_NORMAL: c_int = 17;
pub const SHADER_LOC_MAP_ROUGHNESS: c_int = 18;
pub const SHADER_LOC_MAP_OCCLUSION: c_int = 19;
pub const SHADER_LOC_MAP_EMISSION: c_int = 20;
pub const SHADER_LOC_MAP_HEIGHT: c_int = 21;
pub const SHADER_LOC_MAP_CUBEMAP: c_int = 22;
pub const SHADER_LOC_MAP_IRRADIANCE: c_int = 23;
pub const SHADER_LOC_MAP_PREFILTER: c_int = 24;
pub const SHADER_LOC_MAP_BRDF: c_int = 25;
pub const ShaderLocationIndex = c_uint;
pub const SHADER_UNIFORM_f32: c_int = 0;
pub const SHADER_UNIFORM_VEC2: c_int = 1;
pub const SHADER_UNIFORM_VEC3: c_int = 2;
pub const SHADER_UNIFORM_VEC4: c_int = 3;
pub const SHADER_UNIFORM_INT: c_int = 4;
pub const SHADER_UNIFORM_IVEC2: c_int = 5;
pub const SHADER_UNIFORM_IVEC3: c_int = 6;
pub const SHADER_UNIFORM_IVEC4: c_int = 7;
pub const SHADER_UNIFORM_SAMPLER2D: c_int = 8;
pub const ShaderUniformDataType = c_uint;
pub const SHADER_ATTRIB_f32: c_int = 0;
pub const SHADER_ATTRIB_VEC2: c_int = 1;
pub const SHADER_ATTRIB_VEC3: c_int = 2;
pub const SHADER_ATTRIB_VEC4: c_int = 3;
pub const ShaderAttributeDataType = c_uint;
pub const PIXELFORMAT_UNCOMPRESSED_GRAYSCALE: c_int = 1;
pub const PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA: c_int = 2;
pub const PIXELFORMAT_UNCOMPRESSED_R5G6B5: c_int = 3;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8: c_int = 4;
pub const PIXELFORMAT_UNCOMPRESSED_R5G5B5A1: c_int = 5;
pub const PIXELFORMAT_UNCOMPRESSED_R4G4B4A4: c_int = 6;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8A8: c_int = 7;
pub const PIXELFORMAT_UNCOMPRESSED_R32: c_int = 8;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32: c_int = 9;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32A32: c_int = 10;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGB: c_int = 11;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGBA: c_int = 12;
pub const PIXELFORMAT_COMPRESSED_DXT3_RGBA: c_int = 13;
pub const PIXELFORMAT_COMPRESSED_DXT5_RGBA: c_int = 14;
pub const PIXELFORMAT_COMPRESSED_ETC1_RGB: c_int = 15;
pub const PIXELFORMAT_COMPRESSED_ETC2_RGB: c_int = 16;
pub const PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA: c_int = 17;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGB: c_int = 18;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGBA: c_int = 19;
pub const PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA: c_int = 20;
pub const PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA: c_int = 21;
pub const PixelFormat = c_uint;
pub const TEXTURE_FILTER_POINT: c_int = 0;
pub const TEXTURE_FILTER_BILINEAR: c_int = 1;
pub const TEXTURE_FILTER_TRILINEAR: c_int = 2;
pub const TEXTURE_FILTER_ANISOTROPIC_4X: c_int = 3;
pub const TEXTURE_FILTER_ANISOTROPIC_8X: c_int = 4;
pub const TEXTURE_FILTER_ANISOTROPIC_16X: c_int = 5;
pub const TextureFilter = c_uint;
pub const TEXTURE_WRAP_REPEAT: c_int = 0;
pub const TEXTURE_WRAP_CLAMP: c_int = 1;
pub const TEXTURE_WRAP_MIRROR_REPEAT: c_int = 2;
pub const TEXTURE_WRAP_MIRROR_CLAMP: c_int = 3;
pub const TextureWrap = c_uint;
pub const CUBEMAP_LAYOUT_AUTO_DETECT: c_int = 0;
pub const CUBEMAP_LAYOUT_LINE_VERTICAL: c_int = 1;
pub const CUBEMAP_LAYOUT_LINE_HORIZONTAL: c_int = 2;
pub const CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR: c_int = 3;
pub const CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE: c_int = 4;
pub const CUBEMAP_LAYOUT_PANORAMA: c_int = 5;
pub const CubemapLayout = c_uint;
pub const FONT_DEFAULT: c_int = 0;
pub const FONT_BITMAP: c_int = 1;
pub const FONT_SDF: c_int = 2;
pub const FontType = c_uint;
pub const BLEND_ALPHA: c_int = 0;
pub const BLEND_ADDITIVE: c_int = 1;
pub const BLEND_MULTIPLIED: c_int = 2;
pub const BLEND_ADD_COLORS: c_int = 3;
pub const BLEND_SUBTRACT_COLORS: c_int = 4;
pub const BLEND_ALPHA_PREMULTIPLY: c_int = 5;
pub const BLEND_CUSTOM: c_int = 6;
pub const BlendMode = c_uint;
pub const GESTURE_NONE: c_int = 0;
pub const GESTURE_TAP: c_int = 1;
pub const GESTURE_DOUBLETAP: c_int = 2;
pub const GESTURE_HOLD: c_int = 4;
pub const GESTURE_DRAG: c_int = 8;
pub const GESTURE_SWIPE_RIGHT: c_int = 16;
pub const GESTURE_SWIPE_LEFT: c_int = 32;
pub const GESTURE_SWIPE_UP: c_int = 64;
pub const GESTURE_SWIPE_DOWN: c_int = 128;
pub const GESTURE_PINCH_IN: c_int = 256;
pub const GESTURE_PINCH_OUT: c_int = 512;
pub const Gesture = c_uint;
pub const CAMERA_CUSTOM: c_int = 0;
pub const CAMERA_FREE: c_int = 1;
pub const CAMERA_ORBITAL: c_int = 2;
pub const CAMERA_FIRST_PERSON: c_int = 3;
pub const CAMERA_THIRD_PERSON: c_int = 4;
pub const CameraMode = c_uint;
pub const CAMERA_PERSPECTIVE: c_int = 0;
pub const CAMERA_ORTHOGRAPHIC: c_int = 1;
pub const CameraProjection = c_uint;
pub const NPATCH_NINE_PATCH: c_int = 0;
pub const NPATCH_THREE_PATCH_VERTICAL: c_int = 1;
pub const NPATCH_THREE_PATCH_HORIZONTAL: c_int = 2;
pub const NPatchLayout = c_uint;
pub const TraceLogCallback = ?fn (c_int, [*c]const u8, [*c]struct___va_list_tag) callconv(.C) void;
pub const LoadFileDataCallback = ?fn ([*c]const u8, [*c]c_uint) callconv(.C) [*c]u8;
pub const SaveFileDataCallback = ?fn ([*c]const u8, ?*anyopaque, c_uint) callconv(.C) bool;
pub const LoadFileTextCallback = ?fn ([*c]const u8) callconv(.C) [*c]u8;
pub const SaveFileTextCallback = ?fn ([*c]const u8, [*c]u8) callconv(.C) bool;
pub extern fn InitWindow(width: c_int, height: c_int, title: [*c]const u8) void;
pub extern fn WindowShouldClose() bool;
pub extern fn CloseWindow() void;
pub extern fn IsWindowReady() bool;
pub extern fn IsWindowFullscreen() bool;
pub extern fn IsWindowHidden() bool;
pub extern fn IsWindowMinimized() bool;
pub extern fn IsWindowMaximized() bool;
pub extern fn IsWindowFocused() bool;
pub extern fn IsWindowResized() bool;
pub extern fn IsWindowState(flag: c_uint) bool;
pub extern fn SetWindowState(flags: c_uint) void;
pub extern fn ClearWindowState(flags: c_uint) void;
pub extern fn ToggleFullscreen() void;
pub extern fn MaximizeWindow() void;
pub extern fn MinimizeWindow() void;
pub extern fn RestoreWindow() void;
pub extern fn SetWindowIcon(image: Image) void;
pub extern fn SetWindowTitle(title: [*c]const u8) void;
pub extern fn SetWindowPosition(x: c_int, y: c_int) void;
pub extern fn SetWindowMonitor(monitor: c_int) void;
pub extern fn SetWindowMinSize(width: c_int, height: c_int) void;
pub extern fn SetWindowSize(width: c_int, height: c_int) void;
pub extern fn SetWindowOpacity(opacity: f32) void;
pub extern fn GetWindowHandle() ?*anyopaque;
pub extern fn GetScreenWidth() c_int;
pub extern fn GetScreenHeight() c_int;
pub extern fn GetRenderWidth() c_int;
pub extern fn GetRenderHeight() c_int;
pub extern fn GetMonitorCount() c_int;
pub extern fn GetCurrentMonitor() c_int;
pub extern fn GetMonitorPosition(monitor: c_int) Vector2;
pub extern fn GetMonitorWidth(monitor: c_int) c_int;
pub extern fn GetMonitorHeight(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalWidth(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalHeight(monitor: c_int) c_int;
pub extern fn GetMonitorRefreshRate(monitor: c_int) c_int;
pub extern fn GetWindowPosition() Vector2;
pub extern fn GetWindowScaleDPI() Vector2;
pub extern fn GetMonitorName(monitor: c_int) [*c]const u8;
pub extern fn SetClipboardText(text: [*c]const u8) void;
pub extern fn GetClipboardText() [*c]const u8;
pub extern fn EnableEventWaiting() void;
pub extern fn DisableEventWaiting() void;
pub extern fn SwapScreenBuffer() void;
pub extern fn PollInputEvents() void;
pub extern fn WaitTime(seconds: f64) void;
pub extern fn ShowCursor() void;
pub extern fn HideCursor() void;
pub extern fn IsCursorHidden() bool;
pub extern fn EnableCursor() void;
pub extern fn DisableCursor() void;
pub extern fn IsCursorOnScreen() bool;
pub extern fn ClearBackground(color: Color) void;
pub extern fn BeginDrawing() void;
pub extern fn EndDrawing() void;
pub extern fn BeginMode2D(camera: Camera2D) void;
pub extern fn EndMode2D() void;
pub extern fn BeginMode3D(camera: Camera3D) void;
pub extern fn EndMode3D() void;
pub extern fn BeginTextureMode(target: RenderTexture2D) void;
pub extern fn EndTextureMode() void;
pub extern fn BeginShaderMode(shader: Shader) void;
pub extern fn EndShaderMode() void;
pub extern fn BeginBlendMode(mode: c_int) void;
pub extern fn EndBlendMode() void;
pub extern fn BeginScissorMode(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn EndScissorMode() void;
pub extern fn BeginVrStereoMode(config: VrStereoConfig) void;
pub extern fn EndVrStereoMode() void;
pub extern fn LoadVrStereoConfig(device: VrDeviceInfo) VrStereoConfig;
pub extern fn UnloadVrStereoConfig(config: VrStereoConfig) void;
pub extern fn LoadShader(vsFileName: [*c]const u8, fsFileName: [*c]const u8) Shader;
pub extern fn LoadShaderFromMemory(vsCode: [*c]const u8, fsCode: [*c]const u8) Shader;
pub extern fn GetShaderLocation(shader: Shader, uniformName: [*c]const u8) c_int;
pub extern fn GetShaderLocationAttrib(shader: Shader, attribName: [*c]const u8) c_int;
pub extern fn SetShaderValue(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int) void;
pub extern fn SetShaderValueV(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int, count: c_int) void;
pub extern fn SetShaderValueMatrix(shader: Shader, locIndex: c_int, mat: Matrix) void;
pub extern fn SetShaderValueTexture(shader: Shader, locIndex: c_int, texture: Texture2D) void;
pub extern fn UnloadShader(shader: Shader) void;
pub extern fn GetMouseRay(mousePosition: Vector2, camera: Camera) Ray;
pub extern fn GetCameraMatrix(camera: Camera) Matrix;
pub extern fn GetCameraMatrix2D(camera: Camera2D) Matrix;
pub extern fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;
pub extern fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: c_int, height: c_int) Vector2;
pub extern fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn SetTargetFPS(fps: c_int) void;
pub extern fn GetFPS() c_int;
pub extern fn GetFrameTime() f32;
pub extern fn GetTime() f64;
pub extern fn GetRandomValue(min: c_int, max: c_int) c_int;
pub extern fn SetRandomSeed(seed: c_uint) void;
pub extern fn TakeScreenshot(fileName: [*c]const u8) void;
pub extern fn SetConfigFlags(flags: c_uint) void;
pub extern fn TraceLog(logLevel: c_int, text: [*c]const u8, ...) void;
pub extern fn SetTraceLogLevel(logLevel: c_int) void;
pub extern fn MemAlloc(size: c_int) ?*anyopaque;
pub extern fn MemRealloc(ptr: ?*anyopaque, size: c_int) ?*anyopaque;
pub extern fn MemFree(ptr: ?*anyopaque) void;
pub extern fn OpenURL(url: [*c]const u8) void;
pub extern fn SetTraceLogCallback(callback: TraceLogCallback) void;
pub extern fn SetLoadFileDataCallback(callback: LoadFileDataCallback) void;
pub extern fn SetSaveFileDataCallback(callback: SaveFileDataCallback) void;
pub extern fn SetLoadFileTextCallback(callback: LoadFileTextCallback) void;
pub extern fn SetSaveFileTextCallback(callback: SaveFileTextCallback) void;
pub extern fn LoadFileData(fileName: [*c]const u8, bytesRead: [*c]c_uint) [*c]u8;
pub extern fn UnloadFileData(data: [*c]u8) void;
pub extern fn SaveFileData(fileName: [*c]const u8, data: ?*anyopaque, bytesToWrite: c_uint) bool;
pub extern fn ExportDataAsCode(data: [*c]const u8, size: c_uint, fileName: [*c]const u8) bool;
pub extern fn LoadFileText(fileName: [*c]const u8) [*c]u8;
pub extern fn UnloadFileText(text: [*c]u8) void;
pub extern fn SaveFileText(fileName: [*c]const u8, text: [*c]u8) bool;
pub extern fn FileExists(fileName: [*c]const u8) bool;
pub extern fn DirectoryExists(dirPath: [*c]const u8) bool;
pub extern fn IsFileExtension(fileName: [*c]const u8, ext: [*c]const u8) bool;
pub extern fn GetFileLength(fileName: [*c]const u8) c_int;
pub extern fn GetFileExtension(fileName: [*c]const u8) [*c]const u8;
pub extern fn GetFileName(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetFileNameWithoutExt(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetDirectoryPath(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetPrevDirectoryPath(dirPath: [*c]const u8) [*c]const u8;
pub extern fn GetWorkingDirectory() [*c]const u8;
pub extern fn GetApplicationDirectory() [*c]const u8;
pub extern fn ChangeDirectory(dir: [*c]const u8) bool;
pub extern fn IsPathFile(path: [*c]const u8) bool;
pub extern fn LoadDirectoryFiles(dirPath: [*c]const u8) FilePathList;
pub extern fn LoadDirectoryFilesEx(basePath: [*c]const u8, filter: [*c]const u8, scanSubdirs: bool) FilePathList;
pub extern fn UnloadDirectoryFiles(files: FilePathList) void;
pub extern fn IsFileDropped() bool;
pub extern fn LoadDroppedFiles() FilePathList;
pub extern fn UnloadDroppedFiles(files: FilePathList) void;
pub extern fn GetFileModTime(fileName: [*c]const u8) c_long;
pub extern fn CompressData(data: [*c]const u8, dataSize: c_int, compDataSize: [*c]c_int) [*c]u8;
pub extern fn DecompressData(compData: [*c]const u8, compDataSize: c_int, dataSize: [*c]c_int) [*c]u8;
pub extern fn EncodeDataBase64(data: [*c]const u8, dataSize: c_int, outputSize: [*c]c_int) [*c]u8;
pub extern fn DecodeDataBase64(data: [*c]const u8, outputSize: [*c]c_int) [*c]u8;
pub extern fn IsKeyPressed(key: c_int) bool;
pub extern fn IsKeyDown(key: c_int) bool;
pub extern fn IsKeyReleased(key: c_int) bool;
pub extern fn IsKeyUp(key: c_int) bool;
pub extern fn SetExitKey(key: c_int) void;
pub extern fn GetKeyPressed() c_int;
pub extern fn GetCharPressed() c_int;
pub extern fn IsGamepadAvailable(gamepad: c_int) bool;
pub extern fn GetGamepadName(gamepad: c_int) [*c]const u8;
pub extern fn IsGamepadButtonPressed(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonDown(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonReleased(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonUp(gamepad: c_int, button: c_int) bool;
pub extern fn GetGamepadButtonPressed() c_int;
pub extern fn GetGamepadAxisCount(gamepad: c_int) c_int;
pub extern fn GetGamepadAxisMovement(gamepad: c_int, axis: c_int) f32;
pub extern fn SetGamepadMappings(mappings: [*c]const u8) c_int;
pub extern fn IsMouseButtonPressed(button: c_int) bool;
pub extern fn IsMouseButtonDown(button: c_int) bool;
pub extern fn IsMouseButtonReleased(button: c_int) bool;
pub extern fn IsMouseButtonUp(button: c_int) bool;
pub extern fn GetMouseX() c_int;
pub extern fn GetMouseY() c_int;
pub extern fn GetMousePosition() Vector2;
pub extern fn GetMouseDelta() Vector2;
pub extern fn SetMousePosition(x: c_int, y: c_int) void;
pub extern fn SetMouseOffset(offsetX: c_int, offsetY: c_int) void;
pub extern fn SetMouseScale(scaleX: f32, scaleY: f32) void;
pub extern fn GetMouseWheelMove() f32;
pub extern fn GetMouseWheelMoveV() Vector2;
pub extern fn SetMouseCursor(cursor: c_int) void;
pub extern fn GetTouchX() c_int;
pub extern fn GetTouchY() c_int;
pub extern fn GetTouchPosition(index: c_int) Vector2;
pub extern fn GetTouchPointId(index: c_int) c_int;
pub extern fn GetTouchPointCount() c_int;
pub extern fn SetGesturesEnabled(flags: c_uint) void;
pub extern fn IsGestureDetected(gesture: c_int) bool;
pub extern fn GetGestureDetected() c_int;
pub extern fn GetGestureHoldDuration() f32;
pub extern fn GetGestureDragVector() Vector2;
pub extern fn GetGestureDragAngle() f32;
pub extern fn GetGesturePinchVector() Vector2;
pub extern fn GetGesturePinchAngle() f32;
pub extern fn SetCameraMode(camera: Camera, mode: c_int) void;
pub extern fn UpdateCamera(camera: [*c]Camera) void;
pub extern fn SetCameraPanControl(keyPan: c_int) void;
pub extern fn SetCameraAltControl(keyAlt: c_int) void;
pub extern fn SetCameraSmoothZoomControl(keySmoothZoom: c_int) void;
pub extern fn SetCameraMoveControls(keyFront: c_int, keyBack: c_int, keyRight: c_int, keyLeft: c_int, keyUp: c_int, keyDown: c_int) void;
pub extern fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;
pub extern fn DrawPixel(posX: c_int, posY: c_int, color: Color) void;
pub extern fn DrawPixelV(position: Vector2, color: Color) void;
pub extern fn DrawLine(startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;
pub extern fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezierQuad(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezierCubic(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawCircle(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawCircleSector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleGradient(centerX: c_int, centerY: c_int, radius: f32, color1: Color, color2: Color) void;
pub extern fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;
pub extern fn DrawCircleLines(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawEllipse(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawEllipseLines(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangle(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleV(position: Vector2, size: Vector2, color: Color) void;
pub extern fn DrawRectangleRec(rec: Rectangle, color: Color) void;
pub extern fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;
pub extern fn DrawRectangleGradientV(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientH(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;
pub extern fn DrawRectangleLines(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleLinesEx(rec: Rectangle, lineThick: f32, color: Color) void;
pub extern fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: c_int, lineThick: f32, color: Color) void;
pub extern fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleFan(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawTriangleStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawPoly(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLines(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLinesEx(center: Vector2, sides: c_int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;
pub extern fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;
pub extern fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;
pub extern fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;
pub extern fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;
pub extern fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;
pub extern fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;
pub extern fn CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: [*c]Vector2) bool;
pub extern fn CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: c_int) bool;
pub extern fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;
pub extern fn LoadImage(fileName: [*c]const u8) Image;
pub extern fn LoadImageRaw(fileName: [*c]const u8, width: c_int, height: c_int, format: c_int, headerSize: c_int) Image;
pub extern fn LoadImageAnim(fileName: [*c]const u8, frames: [*c]c_int) Image;
pub extern fn LoadImageFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Image;
pub extern fn LoadImageFromTexture(texture: Texture2D) Image;
pub extern fn LoadImageFromScreen() Image;
pub extern fn UnloadImage(image: Image) void;
pub extern fn ExportImage(image: Image, fileName: [*c]const u8) bool;
pub extern fn ExportImageAsCode(image: Image, fileName: [*c]const u8) bool;
pub extern fn GenImageColor(width: c_int, height: c_int, color: Color) Image;
pub extern fn GenImageGradientV(width: c_int, height: c_int, top: Color, bottom: Color) Image;
pub extern fn GenImageGradientH(width: c_int, height: c_int, left: Color, right: Color) Image;
pub extern fn GenImageGradientRadial(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageChecked(width: c_int, height: c_int, checksX: c_int, checksY: c_int, col1: Color, col2: Color) Image;
pub extern fn GenImageWhiteNoise(width: c_int, height: c_int, factor: f32) Image;
pub extern fn GenImageCellular(width: c_int, height: c_int, tileSize: c_int) Image;
pub extern fn ImageCopy(image: Image) Image;
pub extern fn ImageFromImage(image: Image, rec: Rectangle) Image;
pub extern fn ImageText(text: [*c]const u8, fontSize: c_int, color: Color) Image;
pub extern fn ImageTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32, tint: Color) Image;
pub extern fn ImageFormat(image: [*c]Image, newFormat: c_int) void;
pub extern fn ImageToPOT(image: [*c]Image, fill: Color) void;
pub extern fn ImageCrop(image: [*c]Image, crop: Rectangle) void;
pub extern fn ImageAlphaCrop(image: [*c]Image, threshold: f32) void;
pub extern fn ImageAlphaClear(image: [*c]Image, color: Color, threshold: f32) void;
pub extern fn ImageAlphaMask(image: [*c]Image, alphaMask: Image) void;
pub extern fn ImageAlphaPremultiply(image: [*c]Image) void;
pub extern fn ImageResize(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeNN(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeCanvas(image: [*c]Image, newWidth: c_int, newHeight: c_int, offsetX: c_int, offsetY: c_int, fill: Color) void;
pub extern fn ImageMipmaps(image: [*c]Image) void;
pub extern fn ImageDither(image: [*c]Image, rBpp: c_int, gBpp: c_int, bBpp: c_int, aBpp: c_int) void;
pub extern fn ImageFlipVertical(image: [*c]Image) void;
pub extern fn ImageFlipHorizontal(image: [*c]Image) void;
pub extern fn ImageRotateCW(image: [*c]Image) void;
pub extern fn ImageRotateCCW(image: [*c]Image) void;
pub extern fn ImageColorTint(image: [*c]Image, color: Color) void;
pub extern fn ImageColorInvert(image: [*c]Image) void;
pub extern fn ImageColorGrayscale(image: [*c]Image) void;
pub extern fn ImageColorContrast(image: [*c]Image, contrast: f32) void;
pub extern fn ImageColorBrightness(image: [*c]Image, brightness: c_int) void;
pub extern fn ImageColorReplace(image: [*c]Image, color: Color, replace: Color) void;
pub extern fn LoadImageColors(image: Image) [*c]Color;
pub extern fn LoadImagePalette(image: Image, maxPaletteSize: c_int, colorCount: [*c]c_int) [*c]Color;
pub extern fn UnloadImageColors(colors: [*c]Color) void;
pub extern fn UnloadImagePalette(colors: [*c]Color) void;
pub extern fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;
pub extern fn GetImageColor(image: Image, x: c_int, y: c_int) Color;
pub extern fn ImageClearBackground(dst: [*c]Image, color: Color) void;
pub extern fn ImageDrawPixel(dst: [*c]Image, posX: c_int, posY: c_int, color: Color) void;
pub extern fn ImageDrawPixelV(dst: [*c]Image, position: Vector2, color: Color) void;
pub extern fn ImageDrawLine(dst: [*c]Image, startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn ImageDrawLineV(dst: [*c]Image, start: Vector2, end: Vector2, color: Color) void;
pub extern fn ImageDrawCircle(dst: [*c]Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleV(dst: [*c]Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawRectangle(dst: [*c]Image, posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn ImageDrawRectangleV(dst: [*c]Image, position: Vector2, size: Vector2, color: Color) void;
pub extern fn ImageDrawRectangleRec(dst: [*c]Image, rec: Rectangle, color: Color) void;
pub extern fn ImageDrawRectangleLines(dst: [*c]Image, rec: Rectangle, thick: c_int, color: Color) void;
pub extern fn ImageDraw(dst: [*c]Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;
pub extern fn ImageDrawText(dst: [*c]Image, text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn ImageDrawTextEx(dst: [*c]Image, font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn LoadTexture(fileName: [*c]const u8) Texture2D;
pub extern fn LoadTextureFromImage(image: Image) Texture2D;
pub extern fn LoadTextureCubemap(image: Image, layout: c_int) TextureCubemap;
pub extern fn LoadRenderTexture(width: c_int, height: c_int) RenderTexture2D;
pub extern fn UnloadTexture(texture: Texture2D) void;
pub extern fn UnloadRenderTexture(target: RenderTexture2D) void;
pub extern fn UpdateTexture(texture: Texture2D, pixels: ?*const anyopaque) void;
pub extern fn UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: ?*const anyopaque) void;
pub extern fn GenTextureMipmaps(texture: [*c]Texture2D) void;
pub extern fn SetTextureFilter(texture: Texture2D, filter: c_int) void;
pub extern fn SetTextureWrap(texture: Texture2D, wrap: c_int) void;
pub extern fn DrawTexture(texture: Texture2D, posX: c_int, posY: c_int, tint: Color) void;
pub extern fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;
pub extern fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;
pub extern fn DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;
pub extern fn DrawTextureQuad(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color) void;
pub extern fn DrawTextureTiled(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, scale: f32, tint: Color) void;
pub extern fn DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn DrawTexturePoly(texture: Texture2D, center: Vector2, points: [*c]Vector2, texcoords: [*c]Vector2, pointCount: c_int, tint: Color) void;
pub extern fn Fade(color: Color, alpha: f32) Color;
pub extern fn ColorToInt(color: Color) c_int;
pub extern fn ColorNormalize(color: Color) Vector4;
pub extern fn ColorFromNormalized(normalized: Vector4) Color;
pub extern fn ColorToHSV(color: Color) Vector3;
pub extern fn ColorFromHSV(hue: f32, saturation: f32, value: f32) Color;
pub extern fn ColorAlpha(color: Color, alpha: f32) Color;
pub extern fn ColorAlphaBlend(dst: Color, src: Color, tint: Color) Color;
pub extern fn GetColor(hexValue: c_uint) Color;
pub extern fn GetPixelColor(srcPtr: ?*anyopaque, format: c_int) Color;
pub extern fn SetPixelColor(dstPtr: ?*anyopaque, color: Color, format: c_int) void;
pub extern fn GetPixelDataSize(width: c_int, height: c_int, format: c_int) c_int;
pub extern fn GetFontDefault() Font;
pub extern fn LoadFont(fileName: [*c]const u8) Font;
pub extern fn LoadFontEx(fileName: [*c]const u8, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int) Font;
pub extern fn LoadFontFromImage(image: Image, key: Color, firstChar: c_int) Font;
pub extern fn LoadFontFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int) Font;
pub extern fn LoadFontData(fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int, @"type": c_int) [*c]GlyphInfo;
pub extern fn GenImageFontAtlas(chars: [*c]const GlyphInfo, recs: [*c][*c]Rectangle, glyphCount: c_int, fontSize: c_int, padding: c_int, packMethod: c_int) Image;
pub extern fn UnloadFontData(chars: [*c]GlyphInfo, glyphCount: c_int) void;
pub extern fn UnloadFont(font: Font) void;
pub extern fn ExportFontAsCode(font: Font, fileName: [*c]const u8) bool;
pub extern fn DrawFPS(posX: c_int, posY: c_int) void;
pub extern fn DrawText(text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn DrawTextEx(font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextPro(font: Font, text: [*c]const u8, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextCodepoint(font: Font, codepoint: c_int, position: Vector2, fontSize: f32, tint: Color) void;
pub extern fn DrawTextCodepoints(font: Font, codepoints: [*c]const c_int, count: c_int, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn MeasureText(text: [*c]const u8, fontSize: c_int) c_int;
pub extern fn MeasureTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32) Vector2;
pub extern fn GetGlyphIndex(font: Font, codepoint: c_int) c_int;
pub extern fn GetGlyphInfo(font: Font, codepoint: c_int) GlyphInfo;
pub extern fn GetGlyphAtlasRec(font: Font, codepoint: c_int) Rectangle;
pub extern fn LoadCodepoints(text: [*c]const u8, count: [*c]c_int) [*c]c_int;
pub extern fn UnloadCodepoints(codepoints: [*c]c_int) void;
pub extern fn GetCodepointCount(text: [*c]const u8) c_int;
pub extern fn GetCodepoint(text: [*c]const u8, bytesProcessed: [*c]c_int) c_int;
pub extern fn CodepointToUTF8(codepoint: c_int, byteSize: [*c]c_int) [*c]const u8;
pub extern fn TextCodepointsToUTF8(codepoints: [*c]const c_int, length: c_int) [*c]u8;
pub extern fn TextCopy(dst: [*c]u8, src: [*c]const u8) c_int;
pub extern fn TextIsEqual(text1: [*c]const u8, text2: [*c]const u8) bool;
pub extern fn TextLength(text: [*c]const u8) c_uint;
pub extern fn TextFormat(text: [*c]const u8, ...) [*c]const u8;
pub extern fn TextSubtext(text: [*c]const u8, position: c_int, length: c_int) [*c]const u8;
pub extern fn TextReplace(text: [*c]u8, replace: [*c]const u8, by: [*c]const u8) [*c]u8;
pub extern fn TextInsert(text: [*c]const u8, insert: [*c]const u8, position: c_int) [*c]u8;
pub extern fn TextJoin(textList: [*c][*c]const u8, count: c_int, delimiter: [*c]const u8) [*c]const u8;
pub extern fn TextSplit(text: [*c]const u8, delimiter: u8, count: [*c]c_int) [*c][*c]const u8;
pub extern fn TextAppend(text: [*c]u8, append: [*c]const u8, position: [*c]c_int) void;
pub extern fn TextFindIndex(text: [*c]const u8, find: [*c]const u8) c_int;
pub extern fn TextToUpper(text: [*c]const u8) [*c]const u8;
pub extern fn TextToLower(text: [*c]const u8) [*c]const u8;
pub extern fn TextToPascal(text: [*c]const u8) [*c]const u8;
pub extern fn TextToInteger(text: [*c]const u8) c_int;
pub extern fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;
pub extern fn DrawPoint3D(position: Vector3, color: Color) void;
pub extern fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;
pub extern fn DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) void;
pub extern fn DrawTriangleStrip3D(points: [*c]Vector3, pointCount: c_int, color: Color) void;
pub extern fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeWiresV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeTexture(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeTextureRec(texture: Texture2D, source: Rectangle, position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;
pub extern fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawPlane(centerPos: Vector3, size: Vector2, color: Color) void;
pub extern fn DrawRay(ray: Ray, color: Color) void;
pub extern fn DrawGrid(slices: c_int, spacing: f32) void;
pub extern fn LoadModel(fileName: [*c]const u8) Model;
pub extern fn LoadModelFromMesh(mesh: Mesh) Model;
pub extern fn UnloadModel(model: Model) void;
pub extern fn UnloadModelKeepMeshes(model: Model) void;
pub extern fn GetModelBoundingBox(model: Model) BoundingBox;
pub extern fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawBoundingBox(box: BoundingBox, color: Color) void;
pub extern fn DrawBillboard(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color) void;
pub extern fn DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: Vector2, tint: Color) void;
pub extern fn DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn UploadMesh(mesh: [*c]Mesh, dynamic: bool) void;
pub extern fn UpdateMeshBuffer(mesh: Mesh, index: c_int, data: ?*const anyopaque, dataSize: c_int, offset: c_int) void;
pub extern fn UnloadMesh(mesh: Mesh) void;
pub extern fn DrawMesh(mesh: Mesh, material: Material, transform: Matrix) void;
pub extern fn DrawMeshInstanced(mesh: Mesh, material: Material, transforms: [*c]const Matrix, instances: c_int) void;
pub extern fn ExportMesh(mesh: Mesh, fileName: [*c]const u8) bool;
pub extern fn GetMeshBoundingBox(mesh: Mesh) BoundingBox;
pub extern fn GenMeshTangents(mesh: [*c]Mesh) void;
pub extern fn GenMeshPoly(sides: c_int, radius: f32) Mesh;
pub extern fn GenMeshPlane(width: f32, length: f32, resX: c_int, resZ: c_int) Mesh;
pub extern fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;
pub extern fn GenMeshSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshHemiSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshCylinder(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshCone(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshTorus(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshKnot(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshHeightmap(heightmap: Image, size: Vector3) Mesh;
pub extern fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;
pub extern fn LoadMaterials(fileName: [*c]const u8, materialCount: [*c]c_int) [*c]Material;
pub extern fn LoadMaterialDefault() Material;
pub extern fn UnloadMaterial(material: Material) void;
pub extern fn SetMaterialTexture(material: [*c]Material, mapType: c_int, texture: Texture2D) void;
pub extern fn SetModelMeshMaterial(model: [*c]Model, meshId: c_int, materialId: c_int) void;
pub extern fn LoadModelAnimations(fileName: [*c]const u8, animCount: [*c]c_uint) [*c]ModelAnimation;
pub extern fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: c_int) void;
pub extern fn UnloadModelAnimation(anim: ModelAnimation) void;
pub extern fn UnloadModelAnimations(animations: [*c]ModelAnimation, count: c_uint) void;
pub extern fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;
pub extern fn CheckCollisionSpheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) bool;
pub extern fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;
pub extern fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;
pub extern fn GetRayCollisionSphere(ray: Ray, center: Vector3, radius: f32) RayCollision;
pub extern fn GetRayCollisionBox(ray: Ray, box: BoundingBox) RayCollision;
pub extern fn GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix) RayCollision;
pub extern fn GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayCollision;
pub extern fn GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) RayCollision;
pub const AudioCallback = ?fn (?*anyopaque, c_uint) callconv(.C) void;
pub extern fn InitAudioDevice() void;
pub extern fn CloseAudioDevice() void;
pub extern fn IsAudioDeviceReady() bool;
pub extern fn SetMasterVolume(volume: f32) void;
pub extern fn LoadWave(fileName: [*c]const u8) Wave;
pub extern fn LoadWaveFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Wave;
pub extern fn LoadSound(fileName: [*c]const u8) Sound;
pub extern fn LoadSoundFromWave(wave: Wave) Sound;
pub extern fn UpdateSound(sound: Sound, data: ?*const anyopaque, sampleCount: c_int) void;
pub extern fn UnloadWave(wave: Wave) void;
pub extern fn UnloadSound(sound: Sound) void;
pub extern fn ExportWave(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn ExportWaveAsCode(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn PlaySound(sound: Sound) void;
pub extern fn StopSound(sound: Sound) void;
pub extern fn PauseSound(sound: Sound) void;
pub extern fn ResumeSound(sound: Sound) void;
pub extern fn PlaySoundMulti(sound: Sound) void;
pub extern fn StopSoundMulti() void;
pub extern fn GetSoundsPlaying() c_int;
pub extern fn IsSoundPlaying(sound: Sound) bool;
pub extern fn SetSoundVolume(sound: Sound, volume: f32) void;
pub extern fn SetSoundPitch(sound: Sound, pitch: f32) void;
pub extern fn SetSoundPan(sound: Sound, pan: f32) void;
pub extern fn WaveCopy(wave: Wave) Wave;
pub extern fn WaveCrop(wave: [*c]Wave, initSample: c_int, finalSample: c_int) void;
pub extern fn WaveFormat(wave: [*c]Wave, sampleRate: c_int, sampleSize: c_int, channels: c_int) void;
pub extern fn LoadWaveSamples(wave: Wave) [*c]f32;
pub extern fn UnloadWaveSamples(samples: [*c]f32) void;
pub extern fn LoadMusicStream(fileName: [*c]const u8) Music;
pub extern fn LoadMusicStreamFromMemory(fileType: [*c]const u8, data: [*c]const u8, dataSize: c_int) Music;
pub extern fn UnloadMusicStream(music: Music) void;
pub extern fn PlayMusicStream(music: Music) void;
pub extern fn IsMusicStreamPlaying(music: Music) bool;
pub extern fn UpdateMusicStream(music: Music) void;
pub extern fn StopMusicStream(music: Music) void;
pub extern fn PauseMusicStream(music: Music) void;
pub extern fn ResumeMusicStream(music: Music) void;
pub extern fn SeekMusicStream(music: Music, position: f32) void;
pub extern fn SetMusicVolume(music: Music, volume: f32) void;
pub extern fn SetMusicPitch(music: Music, pitch: f32) void;
pub extern fn SetMusicPan(music: Music, pan: f32) void;
pub extern fn GetMusicTimeLength(music: Music) f32;
pub extern fn GetMusicTimePlayed(music: Music) f32;
pub extern fn LoadAudioStream(sampleRate: c_uint, sampleSize: c_uint, channels: c_uint) AudioStream;
pub extern fn UnloadAudioStream(stream: AudioStream) void;
pub extern fn UpdateAudioStream(stream: AudioStream, data: ?*const anyopaque, frameCount: c_int) void;
pub extern fn IsAudioStreamProcessed(stream: AudioStream) bool;
pub extern fn PlayAudioStream(stream: AudioStream) void;
pub extern fn PauseAudioStream(stream: AudioStream) void;
pub extern fn ResumeAudioStream(stream: AudioStream) void;
pub extern fn IsAudioStreamPlaying(stream: AudioStream) bool;
pub extern fn StopAudioStream(stream: AudioStream) void;
pub extern fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;
pub extern fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;
pub extern fn SetAudioStreamPan(stream: AudioStream, pan: f32) void;
pub extern fn SetAudioStreamBufferSizeDefault(size: c_int) void;
pub extern fn SetAudioStreamCallback(stream: AudioStream, callback: AudioCallback) void;
pub extern fn AttachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn DetachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn __assert_rtn([*c]const u8, [*c]const u8, c_int, [*c]const u8) noreturn;
pub const f32_t = f32;
pub const double_t = f64;
pub extern fn __math_errhandling() c_int;
pub extern fn __fpclassifyf(f32) c_int;
pub extern fn __fpclassifyd(f64) c_int;
pub extern fn __fpclassifyl(c_longdouble) c_int;
pub inline fn __inline_isfinitef(arg___x: f32) c_int {
    var __x = arg___x;
    return @boolToInt((__x == __x) and (__builtin_fabsf(__x) != __builtin_inff()));
} // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:194:49: warning: TODO implement function '__builtin_inf' in std.zig.c_builtins
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:193:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isfinited(arg___x: f64) c_int; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:197:26: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:196:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isfinitel(arg___x: c_longdouble) c_int;
pub inline fn __inline_isinff(arg___x: f32) c_int {
    var __x = arg___x;
    return @boolToInt(__builtin_fabsf(__x) == __builtin_inff());
} // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:203:35: warning: TODO implement function '__builtin_inf' in std.zig.c_builtins
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:202:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isinfd(arg___x: f64) c_int; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:206:12: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:205:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isinfl(arg___x: c_longdouble) c_int;
pub inline fn __inline_isnanf(arg___x: f32) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub inline fn __inline_isnand(arg___x: f64) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub inline fn __inline_isnanl(arg___x: c_longdouble) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub inline fn __inline_isnormalf(arg___x: f32) c_int {
    var __x = arg___x;
    return @boolToInt((__inline_isfinitef(__x) != 0) and (__builtin_fabsf(__x) >= 0.000000000000000000000000000000000000011754943508222875));
}
pub inline fn __inline_isnormald(arg___x: f64) c_int {
    var __x = arg___x;
    return @boolToInt((__inline_isfinited(__x) != 0) and (__builtin_fabs(__x) >= 0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022250738585072014));
} // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:250:39: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:249:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isnormall(arg___x: c_longdouble) c_int;
pub inline fn __inline_signbitf(arg___x: f32) c_int {
    var __x = arg___x;
    const union_unnamed_1 = extern union {
        __f: f32,
        __u: c_uint,
    };
    _ = union_unnamed_1;
    var __u: union_unnamed_1 = undefined;
    __u.__f = __x;
    return @bitCast(c_int, __u.__u >> @intCast(@import("std").math.Log2Int(c_uint), 31));
}
pub inline fn __inline_signbitd(arg___x: f64) c_int {
    var __x = arg___x;
    const union_unnamed_2 = extern union {
        __f: f64,
        __u: c_ulonglong,
    };
    _ = union_unnamed_2;
    var __u: union_unnamed_2 = undefined;
    __u.__f = __x;
    return @bitCast(c_int, @truncate(c_uint, __u.__u >> @intCast(@import("std").math.Log2Int(c_ulonglong), 63)));
}
const struct_unnamed_4 = extern struct {
    __m: c_ulonglong,
    __sexp: c_ushort,
};
pub inline fn __inline_signbitl(arg___x: c_longdouble) c_int {
    var __x = arg___x;
    const union_unnamed_3 = extern union {
        __ld: c_longdouble,
        __p: struct_unnamed_4,
    };
    _ = union_unnamed_3;
    var __u: union_unnamed_3 = undefined;
    __u.__ld = __x;
    return @bitCast(c_int, @as(c_uint, __u.__p.__sexp)) >> @intCast(@import("std").math.Log2Int(c_int), 15);
}
pub extern fn acosf(f32) f32;
pub extern fn acos(f64) f64;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn asinf(f32) f32;
pub extern fn asin(f64) f64;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn atanf(f32) f32;
pub extern fn atan(f64) f64;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2(f64, f64) f64;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn cosf(f32) f32;
pub extern fn cos(f64) f64;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn sinf(f32) f32;
pub extern fn sin(f64) f64;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn tanf(f32) f32;
pub extern fn tan(f64) f64;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn acoshf(f32) f32;
pub extern fn acosh(f64) f64;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asinhf(f32) f32;
pub extern fn asinh(f64) f64;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atanhf(f32) f32;
pub extern fn atanh(f64) f64;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn coshf(f32) f32;
pub extern fn cosh(f64) f64;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn sinhf(f32) f32;
pub extern fn sinh(f64) f64;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn tanhf(f32) f32;
pub extern fn tanh(f64) f64;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn expf(f32) f32;
pub extern fn exp(f64) f64;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2f(f32) f32;
pub extern fn exp2(f64) f64;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1f(f32) f32;
pub extern fn expm1(f64) f64;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn logf(f32) f32;
pub extern fn log(f64) f64;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10f(f32) f32;
pub extern fn log10(f64) f64;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log2f(f32) f32;
pub extern fn log2(f64) f64;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn log1pf(f32) f32;
pub extern fn log1p(f64) f64;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn logbf(f32) f32;
pub extern fn logb(f64) f64;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modf(f64, [*c]f64) f64;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn ldexpf(f32, c_int) f32;
pub extern fn ldexp(f64, c_int) f64;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn frexpf(f32, [*c]c_int) f32;
pub extern fn frexp(f64, [*c]c_int) f64;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn fabsf(f32) f32;
pub extern fn fabs(f64) f64;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn hypotf(f32, f32) f32;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn powf(f32, f32) f32;
pub extern fn pow(f64, f64) f64;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrt(f64) f64;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn erff(f32) f32;
pub extern fn erf(f64) f64;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfcf(f32) f32;
pub extern fn erfc(f64) f64;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn lgammaf(f32) f32;
pub extern fn lgamma(f64) f64;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn tgammaf(f32) f32;
pub extern fn tgamma(f64) f64;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn ceilf(f32) f32;
pub extern fn ceil(f64) f64;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn floorf(f32) f32;
pub extern fn floor(f64) f64;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn rintf(f32) f32;
pub extern fn rint(f64) f64;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn lrintf(f32) c_long;
pub extern fn lrint(f64) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn roundf(f32) f32;
pub extern fn round(f64) f64;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn lroundf(f32) c_long;
pub extern fn lround(f64) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn truncf(f32) f32;
pub extern fn trunc(f64) f64;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmod(f64, f64) f64;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nanf([*c]const u8) f32;
pub extern fn nan([*c]const u8) f64;
pub extern fn nanl([*c]const u8) c_longdouble;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fdimf(f32, f32) f32;
pub extern fn fdim(f64, f64) f64;
pub extern fn fdiml(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fminf(f32, f32) f32;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn __inff() f32;
pub extern fn __inf() f64;
pub extern fn __infl() c_longdouble;
pub extern fn __nan() f32;
pub extern fn __exp10f(f32) f32;
pub extern fn __exp10(f64) f64;
pub const struct___f322 = extern struct {
    __sinval: f32,
    __cosval: f32,
};
pub inline fn __sincosf(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___f322 = __sincosf_stret(__x);
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub const struct___double2 = extern struct {
    __sinval: f64,
    __cosval: f64,
};
pub inline fn __sincos(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___double2 = __sincos_stret(__x);
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub extern fn __cospif(f32) f32;
pub extern fn __cospi(f64) f64;
pub extern fn __sinpif(f32) f32;
pub extern fn __sinpi(f64) f64;
pub extern fn __tanpif(f32) f32;
pub extern fn __tanpi(f64) f64;
pub inline fn __sincospif(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___f322 = __sincospif_stret(__x);
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub inline fn __sincospi(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___double2 = __sincospi_stret(__x);
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub extern fn __sincosf_stret(f32) struct___f322;
pub extern fn __sincos_stret(f64) struct___double2;
pub extern fn __sincospif_stret(f32) struct___f322;
pub extern fn __sincospi_stret(f64) struct___double2;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn scalb(f64, f64) f64;
pub extern var signgam: c_int;
pub extern fn rinttol(f64) c_long;
pub extern fn roundtol(f64) c_long;
pub extern fn drem(f64, f64) f64;
pub extern fn finite(f64) c_int;
pub extern fn gamma(f64) f64;
pub extern fn significand(f64) f64;
pub const struct_exception = extern struct {
    type: c_int,
    name: [*c]u8,
    arg1: f64,
    arg2: f64,
    retval: f64,
};
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?fn (?*anyopaque) callconv(.C) void,
    __arg: ?*anyopaque,
    __next: [*c]struct___darwin_pthread_handler_rec,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long,
    __opaque: [40]u8,
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long,
    __opaque: [192]u8,
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long,
    __opaque: [16]u8,
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec,
    __opaque: [8176]u8,
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn renamex_np([*c]const u8, [*c]const u8, c_uint) c_int;
pub extern fn renameatx_np(c_int, [*c]const u8, c_int, [*c]const u8, c_uint) c_int;
pub const fpos_t = __darwin_off_t;
pub const struct___sbuf = extern struct {
    _base: [*c]u8,
    _size: c_int,
};
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8,
    _r: c_int,
    _w: c_int,
    _flags: c_short,
    _file: c_short,
    _bf: struct___sbuf,
    _lbfsize: c_int,
    _cookie: ?*anyopaque,
    _close: ?fn (?*anyopaque) callconv(.C) c_int,
    _read: ?fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int,
    _seek: ?fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t,
    _write: ?fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int,
    _ub: struct___sbuf,
    _extra: ?*struct___sFILEX,
    _ur: c_int,
    _ubuf: [3]u8,
    _nbuf: [1]u8,
    _lb: struct___sbuf,
    _blksize: c_int,
    _offset: fpos_t,
};
pub const FILE = struct___sFILE;
pub extern var __stdinp: [*c]FILE;
pub extern var __stdoutp: [*c]FILE;
pub extern var __stderrp: [*c]FILE;
pub extern fn clearerr([*c]FILE) void;
pub extern fn fclose([*c]FILE) c_int;
pub extern fn feof([*c]FILE) c_int;
pub extern fn ferror([*c]FILE) c_int;
pub extern fn fflush([*c]FILE) c_int;
pub extern fn fgetc([*c]FILE) c_int;
pub extern fn fgetpos(noalias [*c]FILE, [*c]fpos_t) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, [*c]FILE) [*c]u8;
pub extern fn fopen(__filename: [*c]const u8, __mode: [*c]const u8) [*c]FILE;
pub extern fn fprintf([*c]FILE, [*c]const u8, ...) c_int;
pub extern fn fputc(c_int, [*c]FILE) c_int;
pub extern fn fputs(noalias [*c]const u8, noalias [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]FILE) [*c]FILE;
pub extern fn fscanf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fseek([*c]FILE, c_long, c_int) c_int;
pub extern fn fsetpos([*c]FILE, [*c]const fpos_t) c_int;
pub extern fn ftell([*c]FILE) c_long;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn getc([*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn gets([*c]u8) [*c]u8;
pub extern fn perror([*c]const u8) void;
pub extern fn printf([*c]const u8, ...) c_int;
pub extern fn putc(c_int, [*c]FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn rewind([*c]FILE) void;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn setbuf(noalias [*c]FILE, noalias [*c]u8) void;
pub extern fn setvbuf(noalias [*c]FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn sprintf([*c]u8, [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn ungetc(c_int, [*c]FILE) c_int;
pub extern fn vfprintf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vprintf([*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf([*c]u8, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn fdopen(c_int, [*c]const u8) [*c]FILE;
pub extern fn fileno([*c]FILE) c_int;
pub extern fn pclose([*c]FILE) c_int;
pub extern fn popen([*c]const u8, [*c]const u8) [*c]FILE;
pub extern fn __srget([*c]FILE) c_int;
pub extern fn __svfscanf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __swbuf(c_int, [*c]FILE) c_int;
pub inline fn __sputc(arg__c: c_int, arg__p: [*c]FILE) c_int {
    var _c = arg__c;
    var _p = arg__p;
    if (((blk: {
        const ref = &_p.*._w;
        ref.* -= 1;
        break :blk ref.*;
    }) >= @as(c_int, 0)) or ((_p.*._w >= _p.*._lbfsize) and (@bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, _c)))) != @as(c_int, '\n')))) return @bitCast(c_int, @as(c_uint, blk: {
        const tmp = @bitCast(u8, @truncate(i8, _c));
        (blk_1: {
            const ref = &_p.*._p;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })) else return __swbuf(_c, _p);
    return 0;
}
pub extern fn flockfile([*c]FILE) void;
pub extern fn ftrylockfile([*c]FILE) c_int;
pub extern fn funlockfile([*c]FILE) void;
pub extern fn getc_unlocked([*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, [*c]FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getw([*c]FILE) c_int;
pub extern fn putw(c_int, [*c]FILE) c_int;
pub extern fn tempnam(__dir: [*c]const u8, __prefix: [*c]const u8) [*c]u8;
pub const off_t = __darwin_off_t;
pub extern fn fseeko(__stream: [*c]FILE, __offset: off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) off_t;
pub extern fn snprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsnprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __str: [*c]const u8, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn getdelim(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) isize;
pub extern fn getline(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, noalias __stream: [*c]FILE) isize;
pub extern fn fmemopen(noalias __buf: ?*anyopaque, __size: usize, noalias __mode: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufp: [*c][*c]u8, __sizep: [*c]usize) [*c]FILE;
pub extern const sys_nerr: c_int;
pub extern const sys_errlist: [*c]const [*c]const u8;
pub extern fn asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn ctermid_r([*c]u8) [*c]u8;
pub extern fn fgetln([*c]FILE, [*c]usize) [*c]u8;
pub extern fn fmtcheck([*c]const u8, [*c]const u8) [*c]const u8;
pub extern fn fpurge([*c]FILE) c_int;
pub extern fn setbuffer([*c]FILE, [*c]u8, c_int) void;
pub extern fn setlinebuf([*c]FILE) c_int;
pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn funopen(?*const anyopaque, ?fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int, ?fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int, ?fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t, ?fn (?*anyopaque) callconv(.C) c_int) [*c]FILE;
pub extern fn __sprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __snprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __vsprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __vsnprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub const P_ALL: c_int = 0;
pub const P_PID: c_int = 1;
pub const P_PGID: c_int = 2;
pub const idtype_t = c_uint;
pub const pid_t = __darwin_pid_t;
pub const id_t = __darwin_id_t;
pub const sig_atomic_t = c_int;
pub const struct___darwin_i386_thread_state = extern struct {
    __eax: c_uint,
    __ebx: c_uint,
    __ecx: c_uint,
    __edx: c_uint,
    __edi: c_uint,
    __esi: c_uint,
    __ebp: c_uint,
    __esp: c_uint,
    __ss: c_uint,
    __eflags: c_uint,
    __eip: c_uint,
    __cs: c_uint,
    __ds: c_uint,
    __es: c_uint,
    __fs: c_uint,
    __gs: c_uint,
}; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/x86_64-macos.12-gnu/mach/i386/_structs.h:96:21: warning: struct demoted to opaque type - has bitfield
pub const struct___darwin_fp_control = opaque {};
pub const __darwin_fp_control_t = struct___darwin_fp_control; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/x86_64-macos.12-gnu/mach/i386/_structs.h:154:21: warning: struct demoted to opaque type - has bitfield
pub const struct___darwin_fp_status = opaque {};
pub const __darwin_fp_status_t = struct___darwin_fp_status;
pub const struct___darwin_mmst_reg = extern struct {
    __mmst_reg: [10]u8,
    __mmst_rsrv: [6]u8,
};
pub const struct___darwin_xmm_reg = extern struct {
    __xmm_reg: [16]u8,
};
pub const struct___darwin_ymm_reg = extern struct {
    __ymm_reg: [32]u8,
};
pub const struct___darwin_zmm_reg = extern struct {
    __zmm_reg: [64]u8,
};
pub const struct___darwin_opmask_reg = extern struct {
    __opmask_reg: [8]u8,
};
pub const struct___darwin_i386_f32_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_i386_avx_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
};
pub const struct___darwin_i386_avx512_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
};
pub const struct___darwin_i386_exception_state = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint32_t,
};
pub const struct___darwin_x86_debug_state32 = extern struct {
    __dr0: c_uint,
    __dr1: c_uint,
    __dr2: c_uint,
    __dr3: c_uint,
    __dr4: c_uint,
    __dr5: c_uint,
    __dr6: c_uint,
    __dr7: c_uint,
};
pub const struct___x86_instruction_state = extern struct {
    __insn_stream_valid_bytes: c_int,
    __insn_offset: c_int,
    __out_of_synch: c_int,
    __insn_bytes: [2380]__uint8_t,
    __insn_cacheline: [64]__uint8_t,
}; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/x86_64-macos.12-gnu/mach/i386/_structs.h:630:13: warning: struct demoted to opaque type - has bitfield
pub const struct___last_branch_record = opaque {}; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/x86_64-macos.12-gnu/mach/i386/_structs.h:641:15: warning: struct demoted to opaque type - has bitfield
pub const struct___last_branch_state = opaque {};
pub const struct___x86_pagein_state = extern struct {
    __pagein_error: c_int,
};
pub const struct___darwin_x86_thread_state64 = extern struct {
    __rax: __uint64_t,
    __rbx: __uint64_t,
    __rcx: __uint64_t,
    __rdx: __uint64_t,
    __rdi: __uint64_t,
    __rsi: __uint64_t,
    __rbp: __uint64_t,
    __rsp: __uint64_t,
    __r8: __uint64_t,
    __r9: __uint64_t,
    __r10: __uint64_t,
    __r11: __uint64_t,
    __r12: __uint64_t,
    __r13: __uint64_t,
    __r14: __uint64_t,
    __r15: __uint64_t,
    __rip: __uint64_t,
    __rflags: __uint64_t,
    __cs: __uint64_t,
    __fs: __uint64_t,
    __gs: __uint64_t,
};
pub const struct___darwin_x86_thread_full_state64 = extern struct {
    __ss64: struct___darwin_x86_thread_state64,
    __ds: __uint64_t,
    __es: __uint64_t,
    __ss: __uint64_t,
    __gsbase: __uint64_t,
};
pub const struct___darwin_x86_f32_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_x86_avx_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
};
pub const struct___darwin_x86_avx512_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
    __fpu_zmmh8: struct___darwin_ymm_reg,
    __fpu_zmmh9: struct___darwin_ymm_reg,
    __fpu_zmmh10: struct___darwin_ymm_reg,
    __fpu_zmmh11: struct___darwin_ymm_reg,
    __fpu_zmmh12: struct___darwin_ymm_reg,
    __fpu_zmmh13: struct___darwin_ymm_reg,
    __fpu_zmmh14: struct___darwin_ymm_reg,
    __fpu_zmmh15: struct___darwin_ymm_reg,
    __fpu_zmm16: struct___darwin_zmm_reg,
    __fpu_zmm17: struct___darwin_zmm_reg,
    __fpu_zmm18: struct___darwin_zmm_reg,
    __fpu_zmm19: struct___darwin_zmm_reg,
    __fpu_zmm20: struct___darwin_zmm_reg,
    __fpu_zmm21: struct___darwin_zmm_reg,
    __fpu_zmm22: struct___darwin_zmm_reg,
    __fpu_zmm23: struct___darwin_zmm_reg,
    __fpu_zmm24: struct___darwin_zmm_reg,
    __fpu_zmm25: struct___darwin_zmm_reg,
    __fpu_zmm26: struct___darwin_zmm_reg,
    __fpu_zmm27: struct___darwin_zmm_reg,
    __fpu_zmm28: struct___darwin_zmm_reg,
    __fpu_zmm29: struct___darwin_zmm_reg,
    __fpu_zmm30: struct___darwin_zmm_reg,
    __fpu_zmm31: struct___darwin_zmm_reg,
};
pub const struct___darwin_x86_exception_state64 = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint64_t,
};
pub const struct___darwin_x86_debug_state64 = extern struct {
    __dr0: __uint64_t,
    __dr1: __uint64_t,
    __dr2: __uint64_t,
    __dr3: __uint64_t,
    __dr4: __uint64_t,
    __dr5: __uint64_t,
    __dr6: __uint64_t,
    __dr7: __uint64_t,
};
pub const struct___darwin_x86_cpmu_state64 = extern struct {
    __ctrs: [16]__uint64_t,
};
pub const struct___darwin_mcontext32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_f32_state,
};
pub const struct___darwin_mcontext_avx32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx_state,
};
pub const struct___darwin_mcontext_avx512_32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx512_state,
};
pub const struct___darwin_mcontext64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_f32_state64,
};
pub const struct___darwin_mcontext64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_f32_state64,
};
pub const struct___darwin_mcontext_avx64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx512_64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const struct___darwin_mcontext_avx512_64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const mcontext_t = [*c]struct___darwin_mcontext64;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const struct___darwin_sigaltstack = extern struct {
    ss_sp: ?*anyopaque,
    ss_size: __darwin_size_t,
    ss_flags: c_int,
};
pub const stack_t = struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = extern struct {
    uc_onstack: c_int,
    uc_sigmask: __darwin_sigset_t,
    uc_stack: struct___darwin_sigaltstack,
    uc_link: [*c]struct___darwin_ucontext,
    uc_mcsize: __darwin_size_t,
    uc_mcontext: [*c]struct___darwin_mcontext64,
};
pub const ucontext_t = struct___darwin_ucontext;
pub const sigset_t = __darwin_sigset_t;
pub const uid_t = __darwin_uid_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
pub const struct_sigevent = extern struct {
    sigev_notify: c_int,
    sigev_signo: c_int,
    sigev_value: union_sigval,
    sigev_notify_function: ?fn (union_sigval) callconv(.C) void,
    sigev_notify_attributes: [*c]pthread_attr_t,
};
pub const struct___siginfo = extern struct {
    si_signo: c_int,
    si_errno: c_int,
    si_code: c_int,
    si_pid: pid_t,
    si_uid: uid_t,
    si_status: c_int,
    si_addr: ?*anyopaque,
    si_value: union_sigval,
    si_band: c_long,
    __pad: [7]c_ulong,
};
pub const siginfo_t = struct___siginfo;
pub const union___sigaction_u = extern union {
    __sa_handler: ?fn (c_int) callconv(.C) void,
    __sa_sigaction: ?fn (c_int, [*c]struct___siginfo, ?*anyopaque) callconv(.C) void,
};
pub const struct___sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_tramp: ?fn (?*anyopaque, c_int, c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const struct_sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const sig_t = ?fn (c_int) callconv(.C) void;
pub const struct_sigvec = extern struct {
    sv_handler: ?fn (c_int) callconv(.C) void,
    sv_mask: c_int,
    sv_flags: c_int,
};
pub const struct_sigstack = extern struct {
    ss_sp: [*c]u8,
    ss_onstack: c_int,
};
pub extern fn signal(c_int, ?fn (c_int) callconv(.C) void) ?fn (c_int) callconv(.C) void;
pub const struct_timeval = extern struct {
    tv_sec: __darwin_time_t,
    tv_usec: __darwin_suseconds_t,
};
pub const rlim_t = __uint64_t;
pub const struct_rusage = extern struct {
    ru_utime: struct_timeval,
    ru_stime: struct_timeval,
    ru_maxrss: c_long,
    ru_ixrss: c_long,
    ru_idrss: c_long,
    ru_isrss: c_long,
    ru_minflt: c_long,
    ru_majflt: c_long,
    ru_nswap: c_long,
    ru_inblock: c_long,
    ru_oublock: c_long,
    ru_msgsnd: c_long,
    ru_msgrcv: c_long,
    ru_nsignals: c_long,
    ru_nvcsw: c_long,
    ru_nivcsw: c_long,
};
pub const rusage_info_t = ?*anyopaque;
pub const struct_rusage_info_v0 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
};
pub const struct_rusage_info_v1 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
};
pub const struct_rusage_info_v2 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
};
pub const struct_rusage_info_v3 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
};
pub const struct_rusage_info_v4 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
    ri_logical_writes: u64,
    ri_lifetime_max_phys_footprint: u64,
    ri_instructions: u64,
    ri_cycles: u64,
    ri_billed_energy: u64,
    ri_serviced_energy: u64,
    ri_interval_max_phys_footprint: u64,
    ri_runnable_time: u64,
};
pub const struct_rusage_info_v5 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
    ri_logical_writes: u64,
    ri_lifetime_max_phys_footprint: u64,
    ri_instructions: u64,
    ri_cycles: u64,
    ri_billed_energy: u64,
    ri_serviced_energy: u64,
    ri_interval_max_phys_footprint: u64,
    ri_runnable_time: u64,
    ri_flags: u64,
};
pub const rusage_info_current = struct_rusage_info_v5;
pub const struct_rlimit = extern struct {
    rlim_cur: rlim_t,
    rlim_max: rlim_t,
};
pub const struct_proc_rlimit_control_wakeupmon = extern struct {
    wm_flags: u32,
    wm_rate: i32,
};
pub extern fn getpriority(c_int, id_t) c_int;
pub extern fn getiopolicy_np(c_int, c_int) c_int;
pub extern fn getrlimit(c_int, [*c]struct_rlimit) c_int;
pub extern fn getrusage(c_int, [*c]struct_rusage) c_int;
pub extern fn setpriority(c_int, id_t, c_int) c_int;
pub extern fn setiopolicy_np(c_int, c_int, c_int) c_int;
pub extern fn setrlimit(c_int, [*c]const struct_rlimit) c_int;
pub fn _OSSwapInt16(arg__data: __uint16_t) callconv(.C) __uint16_t {
    var _data = arg__data;
    return @bitCast(__uint16_t, @truncate(c_short, (@bitCast(c_int, @as(c_uint, _data)) << @intCast(@import("std").math.Log2Int(c_int), 8)) | (@bitCast(c_int, @as(c_uint, _data)) >> @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn _OSSwapInt32(arg__data: __uint32_t) callconv(.C) __uint32_t {
    var _data = arg__data;
    return __builtin_bswap32(_data);
}
pub fn _OSSwapInt64(arg__data: __uint64_t) callconv(.C) __uint64_t {
    var _data = arg__data;
    return __builtin_bswap64(_data);
} // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:201:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_5 = opaque {}; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:220:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_6 = opaque {};
pub const union_wait = extern union {
    w_status: c_int,
    w_T: struct_unnamed_5,
    w_S: struct_unnamed_6,
};
pub extern fn wait([*c]c_int) pid_t;
pub extern fn waitpid(pid_t, [*c]c_int, c_int) pid_t;
pub extern fn waitid(idtype_t, id_t, [*c]siginfo_t, c_int) c_int;
pub extern fn wait3([*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn wait4(pid_t, [*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn alloca(c_ulong) ?*anyopaque;
pub const ct_rune_t = __darwin_ct_rune_t;
pub const rune_t = __darwin_rune_t;
pub const wchar_t = __darwin_wchar_t;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern var __mb_cur_max: c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__count: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn free(?*anyopaque) void;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn abort() noreturn;
pub extern fn abs(c_int) c_int;
pub extern fn atexit(?fn () callconv(.C) void) c_int;
pub extern fn atof([*c]const u8) f64;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nel: usize, __width: usize, __compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;
pub extern fn div(c_int, c_int) div_t;
pub extern fn exit(c_int) noreturn;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn labs(c_long) c_long;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn llabs(c_longlong) c_longlong;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn qsort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn strtod([*c]const u8, [*c][*c]u8) f64;
pub extern fn strtof([*c]const u8, [*c][*c]u8) f32;
pub extern fn strtol(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn strtoll(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoul(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoull(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn system([*c]const u8) c_int;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn _Exit(c_int) noreturn;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn drand48() f64;
pub extern fn ecvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn fcvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn gcvt(f64, c_int, [*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn lrand48() c_long;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn ptsname_r(fildes: c_int, buffer: [*c]u8, buflen: usize) c_int;
pub extern fn putenv([*c]u8) c_int;
pub extern fn random() c_long;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn setkey([*c]const u8) void;
pub extern fn setstate([*c]const u8) [*c]u8;
pub extern fn srand48(c_long) void;
pub extern fn srandom(c_uint) void;
pub extern fn unlockpt(c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub const dev_t = __darwin_dev_t;
pub const mode_t = __darwin_mode_t;
pub extern fn arc4random() u32;
pub extern fn arc4random_addrandom([*c]u8, c_int) void;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __nbytes: usize) void;
pub extern fn arc4random_stir() void;
pub extern fn arc4random_uniform(__upper_bound: u32) u32; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:268:6: warning: unsupported type: 'BlockPointer'
pub const atexit_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:268:6
// /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:277:7: warning: unsupported type: 'BlockPointer'
pub const bsearch_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:277:7
pub extern fn cgetcap([*c]u8, [*c]const u8, c_int) [*c]u8;
pub extern fn cgetclose() c_int;
pub extern fn cgetent([*c][*c]u8, [*c][*c]u8, [*c]const u8) c_int;
pub extern fn cgetfirst([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetmatch([*c]const u8, [*c]const u8) c_int;
pub extern fn cgetnext([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetnum([*c]u8, [*c]const u8, [*c]c_long) c_int;
pub extern fn cgetset([*c]const u8) c_int;
pub extern fn cgetstr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn cgetustr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn daemon(c_int, c_int) c_int;
pub extern fn devname(dev_t, mode_t) [*c]u8;
pub extern fn devname_r(dev_t, mode_t, buf: [*c]u8, len: c_int) [*c]u8;
pub extern fn getbsize([*c]c_int, [*c]c_long) [*c]u8;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn getprogname() [*c]const u8;
pub extern fn setprogname([*c]const u8) void;
pub extern fn heapsort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) c_int; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:314:6: warning: unsupported type: 'BlockPointer'
pub const heapsort_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:314:6
pub extern fn mergesort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) c_int; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:321:6: warning: unsupported type: 'BlockPointer'
pub const mergesort_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:321:6
pub extern fn psort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:329:7: warning: unsupported type: 'BlockPointer'
pub const psort_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:329:7
pub extern fn psort_r(__base: ?*anyopaque, __nel: usize, __width: usize, ?*anyopaque, __compar: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void; // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:337:7: warning: unsupported type: 'BlockPointer'
pub const qsort_b = @compileError("unable to resolve prototype of function"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:337:7
pub extern fn qsort_r(__base: ?*anyopaque, __nel: usize, __width: usize, ?*anyopaque, __compar: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn radixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn rpmatch([*c]const u8) c_int;
pub extern fn sradixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn sranddev() void;
pub extern fn srandomdev() void;
pub extern fn reallocf(__ptr: ?*anyopaque, __size: usize) ?*anyopaque;
pub extern fn strtonum(__numstr: [*c]const u8, __minval: c_longlong, __maxval: c_longlong, __errstrp: [*c][*c]const u8) c_longlong;
pub extern fn strtoq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern var suboptarg: [*c]u8;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memcpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dst: ?*anyopaque, __src: ?*const anyopaque, __len: c_ulong) ?*anyopaque;
pub extern fn memset(__b: ?*anyopaque, __c: c_int, __len: c_ulong) ?*anyopaque;
pub extern fn strcat(__s1: [*c]u8, __s2: [*c]const u8) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strncat(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strpbrk(__s: [*c]const u8, __charset: [*c]const u8) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strstr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strtok(__str: [*c]u8, __sep: [*c]const u8) [*c]u8;
pub extern fn strxfrm(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strtok_r(__str: [*c]u8, __sep: [*c]const u8, __lasts: [*c][*c]u8) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __strerrbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn strdup(__s1: [*c]const u8) [*c]u8;
pub extern fn memccpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn stpcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn stpncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strndup(__s1: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strnlen(__s1: [*c]const u8, __n: usize) usize;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub const rsize_t = __darwin_size_t;
pub const errno_t = c_int;
pub extern fn memset_s(__s: ?*anyopaque, __smax: rsize_t, __c: c_int, __n: rsize_t) errno_t;
pub extern fn memmem(__big: ?*const anyopaque, __big_len: usize, __little: ?*const anyopaque, __little_len: usize) ?*anyopaque;
pub extern fn memset_pattern4(__b: ?*anyopaque, __pattern4: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern8(__b: ?*anyopaque, __pattern8: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern16(__b: ?*anyopaque, __pattern16: ?*const anyopaque, __len: usize) void;
pub extern fn strcasestr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strnstr(__big: [*c]const u8, __little: [*c]const u8, __len: usize) [*c]u8;
pub extern fn strlcat(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strlcpy(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strmode(__mode: c_int, __bp: [*c]u8) void;
pub extern fn strsep(__stringp: [*c][*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn swab(noalias ?*const anyopaque, noalias ?*anyopaque, isize) void;
pub extern fn timingsafe_bcmp(__b1: ?*const anyopaque, __b2: ?*const anyopaque, __len: usize) c_int;
pub extern fn strsignal_r(__sig: c_int, __strsignalbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn bcmp(?*const anyopaque, ?*const anyopaque, c_ulong) c_int;
pub extern fn bcopy(?*const anyopaque, ?*anyopaque, usize) void;
pub extern fn bzero(?*anyopaque, c_ulong) void;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn ffs(c_int) c_int;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn fls(c_int) c_int;
pub extern fn flsl(c_long) c_int;
pub extern fn flsll(c_longlong) c_int;
pub const struct_V2 = extern struct {
    x: f32,
    y: f32,
};
pub const v2 = struct_V2;
pub export fn v2_add(arg_a: v2, arg_b: v2) v2 {
    var a = arg_a;
    var b = arg_b;
    return v2{
        .x = a.x + b.x,
        .y = a.y + b.y,
    };
}
pub export fn v2_sub(arg_a: v2, arg_b: v2) v2 {
    var a = arg_a;
    var b = arg_b;
    return v2{
        .x = a.x - b.x,
        .y = a.y - b.y,
    };
}
pub const struct_int2 = extern struct {
    x: c_int,
    y: c_int,
};
pub const int2 = struct_int2;
pub export fn int2_add(arg_a: int2, arg_b: int2) int2 {
    var a = arg_a;
    var b = arg_b;
    return int2{
        .x = a.x + b.x,
        .y = a.y + b.y,
    };
}
pub export fn int2_sub(arg_a: int2, arg_b: int2) int2 {
    var a = arg_a;
    var b = arg_b;
    var result: int2 = undefined;
    result.x = a.x - b.x;
    result.y = a.y - b.y;
    return result;
}
pub export fn int2_to_v2(arg_val: int2) v2 {
    var val = arg_val;
    var result: v2 = undefined;
    result.x = @intTof32(f32, val.x);
    result.y = @intTof32(f32, val.y);
    return result;
}
pub const @"u8" = u8;
pub const @"i8" = i8;
pub const @"u16" = u16;
pub const @"i16" = i16;
pub const @"u32" = u32;
pub const @"i32" = i32;
pub const @"u64" = u64;
pub const @"i64" = i64;
pub const @"f32" = f32;
pub const @"f64" = f64;
pub const cstring = [*c]u8;
pub export fn rand_max(arg_max_1: c_int) c_int {
    var max_1 = arg_max_1;
    return @import("std").zig.c_translation.signedRemainder(rand(), max_1);
}
pub export fn rand_in_range(arg_a: c_int, arg_b: c_int) c_int {
    var a = arg_a;
    var b = arg_b;
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(b > a)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("rand_in_range", "shared.c", @as(c_int, 37), "b > a") else @as(c_int, 0);
    return a + rand_max(b - a);
}
pub export fn rand_f32() f32 {
    return @intTof32(f32, rand()) / @intTof32(f32, @as(c_int, 2147483647));
}
pub export fn rand_bool() bool {
    return rand_f32() < 0.5;
}
pub const Mem = extern struct {
    data: ?*anyopaque,
    size: usize,
};
pub const App_Context = extern struct {
    state: Mem,
};
pub var FONT: [*c]const u8 = "src/game/rl/square.ttf";
pub const View_Info = extern struct {
    dist: c_int,
    tile: int2,
    visible: bool,
    seen: bool,
};
pub const Tile = extern struct {
    open: bool,
    visible: bool,
    seen: bool,
    dist_to_player: c_int,
    abs_dist_to_player: c_int,
    dir_to_player: int2,
};
const struct_unnamed_7 = extern struct {
    player: bool,
    spacial: bool,
};
pub const Ent_Tags = extern union {
    bits: c_int,
    unnamed_0: struct_unnamed_7,
};
pub const Ents = extern struct {
    tags: [1024]Ent_Tags,
    pos: [1024]int2,
    rune: [1024]u8,
    color: [1024]Color,
    pos_offset: [1024]v2,
    hp: [1024]c_int,
    next: [1024]c_int,
};
pub const Ecs = extern struct {
    ents: Ents,
    next: c_int,
};
pub export fn init_ecs(arg_ecs: [*c]Ecs) void {
    var ecs = arg_ecs;
    {
        var e: c_int = 0;
        while (e < @as(c_int, 1024)) : (e += 1) {
            ecs.*.ents.next[@intCast(c_uint, e)] = e + @as(c_int, 1);
        }
    }
}
pub export fn push_ent(arg_ecs: [*c]Ecs, arg_tags: Ent_Tags) c_int {
    var ecs = arg_ecs;
    var tags = arg_tags;
    var e: c_int = ecs.*.next;
    ecs.*.next = ecs.*.ents.next[@intCast(c_uint, e)];
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(tags.bits != @as(c_int, 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("push_ent", "rl_common.c", @as(c_int, 92), "tags.bits != 0") else @as(c_int, 0);
    ecs.*.ents.tags[@intCast(c_uint, e)] = tags;
    return e;
}
pub export fn free_ent(arg_ecs: [*c]Ecs, arg_e: c_int) void {
    var ecs = arg_ecs;
    var e = arg_e;
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(ecs.*.ents.tags[@intCast(c_uint, e)].bits != @as(c_int, 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("free_ent", "rl_common.c", @as(c_int, 98), "ecs->ents.tags[e].bits != 0") else @as(c_int, 0);
    ecs.*.ents.tags[@intCast(c_uint, e)] = Ent_Tags{
        .bits = @as(c_int, 0),
    };
    ecs.*.ents.next[@intCast(c_uint, e)] = ecs.*.next;
    ecs.*.next = e;
}
pub const Ent_Iterator = extern struct {
    ecs: [*c]Ecs,
    tags: Ent_Tags,
    e: c_int,
    done: bool,
};
pub export fn ent_iterator(arg_ecs: [*c]Ecs, arg_tags: Ent_Tags) Ent_Iterator {
    var ecs = arg_ecs;
    var tags = arg_tags;
    return Ent_Iterator{
        .ecs = ecs,
        .tags = tags,
        .e = 0,
        .done = false,
    };
}
pub export fn each(arg_iter: [*c]Ent_Iterator) c_int {
    var iter = arg_iter;
    var ents: [*c]Ents = &iter.*.ecs.*.ents;
    while (iter.*.e < @as(c_int, 1024)) {
        var e: c_int = iter.*.e;
        iter.*.e += @as(c_int, 1);
        if ((iter.*.tags.bits & ents.*.tags[@intCast(c_uint, e)].bits) == iter.*.tags.bits) {
            return e;
        }
    }
    iter.*.done = @as(c_int, 1) != 0;
    return -@as(c_int, 1);
}
pub const State = extern struct {
    loaded: bool,
    player_e: c_int,
    ecs: Ecs,
    tiles: [20][20]Tile,
    walls: Texture2D,
    font: Font,
    font_path: [*c]const u8,
    rune_offset: v2,
    fov: [5][5]View_Info,
};
pub var state: [*c]State = @import("std").mem.zeroes([*c]State);
pub var ctx: [*c]App_Context = @import("std").mem.zeroes([*c]App_Context);
pub var update_timer: f32 = @import("std").mem.zeroes(f32);
pub const directions: [8]int2 = [8]int2{
    int2{
        .x = @as(c_int, -1),
        .y = @as(c_int, -1),
    },
    int2{
        .x = @as(c_int, 0),
        .y = @as(c_int, -1),
    },
    int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, -1),
    },
    int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 0),
    },
    int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 1),
    },
    int2{
        .x = @as(c_int, 0),
        .y = @as(c_int, 1),
    },
    int2{
        .x = @as(c_int, -1),
        .y = @as(c_int, 1),
    },
    int2{
        .x = @as(c_int, -1),
        .y = @as(c_int, 0),
    },
};
pub export fn get_player_pos() int2 {
    return state.*.ecs.ents.pos[@intCast(c_uint, state.*.player_e)];
}
pub export fn update_found_spaces() void {
    {
        var x: c_int = 0;
        while (x < @as(c_int, 20)) : (x += 1) {
            {
                var y: c_int = 0;
                while (y < @as(c_int, 20)) : (y += 1) {
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].seen |= @as(c_int, @boolToInt(state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].visible));
                }
            }
        }
    }
}
pub export fn is_wall(arg_pos: int2) bool {
    var pos = arg_pos;
    return !state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].open;
}
pub export fn is_floor(arg_pos: int2) bool {
    var pos = arg_pos;
    return state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].open;
}
pub export fn is_visible(arg_pos: int2) bool {
    var pos = arg_pos;
    return state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].visible;
}
pub export fn reveal(arg_pos: int2) void {
    var pos = arg_pos;
    state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].visible = @as(c_int, 1) != 0;
    state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].seen = @as(c_int, 1) != 0;
}
pub export fn rand_dir() int2 {
    var dir: c_int = @import("std").zig.c_translation.signedRemainder(rand(), @as(c_int, 4));
    if (dir == @as(c_int, 0)) return int2{
        .x = @as(c_int, 1),
        .y = -@as(c_int, 1),
    };
    if (dir == @as(c_int, 1)) return int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 0),
    };
    if (dir == @as(c_int, 2)) return int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 1),
    };
    if (dir == @as(c_int, 3)) return int2{
        .x = @as(c_int, 0),
        .y = @as(c_int, 1),
    };
    if (dir == @as(c_int, 4)) return int2{
        .x = -@as(c_int, 1),
        .y = @as(c_int, 1),
    };
    if (dir == @as(c_int, 5)) return int2{
        .x = -@as(c_int, 1),
        .y = @as(c_int, 0),
    };
    if (dir == @as(c_int, 6)) return int2{
        .x = -@as(c_int, 1),
        .y = -@as(c_int, 1),
    };
    if (dir == @as(c_int, 7)) return int2{
        .x = @as(c_int, 0),
        .y = -@as(c_int, 1),
    };
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(@as(c_int, 0) != 0)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("rand_dir", "rl_common.c", @as(c_int, 190), "false") else @as(c_int, 0);
    return @import("std").mem.zeroes(struct_int2);
}
pub export fn in_bounds(arg_pos: int2) bool {
    var pos = arg_pos;
    return (((pos.x >= @as(c_int, 0)) and (pos.y >= @as(c_int, 0))) and (pos.x < @as(c_int, 20))) and (pos.y < @as(c_int, 20));
}
pub export fn walkable(arg_pos: int2) bool {
    var pos = arg_pos;
    return (@as(c_int, @boolToInt(in_bounds(pos))) != 0) and (@as(c_int, @boolToInt(state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].open)) != 0);
}
pub export fn move_entity(arg_e: c_int, arg_dir: int2) bool {
    var e = arg_e;
    var dir = arg_dir;
    var ents: [*c]Ents = &state.*.ecs.ents;
    var next_pos: int2 = int2_add(ents.*.pos[@intCast(c_uint, e)], int2{
        .x = dir.x,
        .y = dir.y,
    });
    if (!walkable(next_pos)) {
        return @as(c_int, 0) != 0;
    }
    ents.*.pos[@intCast(c_uint, e)] = next_pos;
    ents.*.pos_offset[@intCast(c_uint, e)] = v2_sub(v2{
        .x = @intTof32(f32, @as(c_int, 0)),
        .y = -0.10000000149011612,
    }, int2_to_v2(dir));
    return @as(c_int, 1) != 0;
}
pub export fn move_player(arg_dir: int2) void {
    var dir = arg_dir;
    var did_move: bool = move_entity(state.*.player_e, dir);
    if (did_move) {
        {
            var e: c_int = 0;
            while (e < @as(c_int, 1024)) : (e += 1) {
                if (e == state.*.player_e) continue;
                _ = move_entity(e, rand_dir());
            }
        }
    }
}
pub export fn open_tile(arg_pos: int2) void {
    var pos = arg_pos;
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!in_bounds(pos)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("open_tile", "rl_common.c", @as(c_int, 223), "in_bounds(pos)") else @as(c_int, 0);
    state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].open = @as(c_int, 1) != 0;
}
pub export fn open_rect(arg_x0: c_int, arg_y0_1: c_int, arg_x1: c_int, arg_y1_2: c_int) void {
    var x0 = arg_x0;
    var y0_1 = arg_y0_1;
    var x1 = arg_x1;
    var y1_2 = arg_y1_2;
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!in_bounds(int2{
        .x = x0,
        .y = y0_1,
    })))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("open_rect", "rl_common.c", @as(c_int, 228), "in_bounds((int2){x0, y0})") else @as(c_int, 0);
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!in_bounds(int2{
        .x = x1,
        .y = y1_2,
    })))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("open_rect", "rl_common.c", @as(c_int, 229), "in_bounds((int2){x1, y1})") else @as(c_int, 0);
    {
        var x: c_int = x0;
        while (x <= x1) : (x += 1) {
            {
                var y: c_int = y0_1;
                while (y <= y1_2) : (y += 1) {
                    open_tile(int2{
                        .x = x,
                        .y = y,
                    });
                }
            }
        }
    }
}
pub export fn is_open(arg_pos: int2) bool {
    var pos = arg_pos;
    return (@as(c_int, @boolToInt(in_bounds(pos))) != 0) and (@as(c_int, @boolToInt(state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].open)) != 0);
}
pub export fn get_random_pos() int2 {
    return int2{
        .x = rand_max(@as(c_int, 20)),
        .y = rand_max(@as(c_int, 20)),
    };
}
pub export fn get_random_open_pos() int2 {
    var pos: int2 = get_random_pos();
    while (!is_open(pos)) {
        pos = get_random_pos();
    }
    return pos;
}
pub export fn is_seen(arg_pos: int2) bool {
    var pos = arg_pos;
    return (@as(c_int, @boolToInt(in_bounds(pos))) != 0) and (@as(c_int, @boolToInt(state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].seen)) != 0);
}
pub const N: c_int = 0;
pub const NE: c_int = 1;
pub const E: c_int = 2;
pub const SE: c_int = 3;
pub const S: c_int = 4;
pub const SW: c_int = 5;
pub const W: c_int = 6;
pub const NW: c_int = 7;
pub const enum_Wall_Open_Dir = c_uint;
pub const Player: c_int = 0;
pub const Floor: c_int = 1;
pub const Wall: c_int = 2;
pub const enum_Drawable_Symbol = c_uint;
pub export fn pos_v2(arg_tp: int2) v2 {
    var tp = arg_tp;
    return v2{
        .x = @intTof32(f32, tp.x) * @intTof32(f32, @as(c_int, 24)),
        .y = @intTof32(f32, tp.y) * @intTof32(f32, @as(c_int, 24)),
    };
}
pub export fn draw_rune(arg_tint: Color, arg_c: u8, arg_pos: int2, arg_offset: v2) void {
    var tint = arg_tint;
    var c = arg_c;
    var pos = arg_pos;
    var offset = arg_offset;
    var p: v2 = v2_add(pos_v2(pos), offset);
    p = v2_add(p, state.*.rune_offset);
    DrawTextCodepoint(state.*.font, @bitCast(c_int, @as(c_uint, c)), Vector2{
        .x = p.x,
        .y = p.y,
    }, @intTof32(f32, @as(c_int, 24)), tint);
}
pub export fn center(arg_tp: int2) v2 {
    var tp = arg_tp;
    return v2_add(pos_v2(tp), v2{
        .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))),
        .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))),
    });
}
pub export fn draw() void {
    BeginDrawing();
    ClearBackground(Color{
        .r = @bitCast(u8, @truncate(i8, @as(c_int, 46))),
        .g = @bitCast(u8, @truncate(i8, @as(c_int, 52))),
        .b = @bitCast(u8, @truncate(i8, @as(c_int, 64))),
        .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
    });
    BeginMode2D(Camera2D{
        .offset = Vector2{
            .x = 0,
            .y = 0,
        },
        .target = @import("std").mem.zeroes(struct_Vector2),
        .rotation = 0,
        .zoom = @intTof32(f32, @as(c_int, 1)),
    });
    var player_pos: int2 = get_player_pos();
    _ = player_pos;
    {
        var x: c_int = 0;
        while (x < @as(c_int, 20)) : (x += 1) {
            {
                var y: c_int = 0;
                while (y < @as(c_int, 20)) : (y += 1) {
                    var visible: bool = state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].visible;
                    var pos: v2 = pos_v2(int2{
                        .x = x,
                        .y = y,
                    });
                    var color: Color = if (@as(c_int, @boolToInt(visible)) != 0) Color{
                        .r = @bitCast(u8, @truncate(i8, @as(c_int, 59))),
                        .g = @bitCast(u8, @truncate(i8, @as(c_int, 66))),
                        .b = @bitCast(u8, @truncate(i8, @as(c_int, 82))),
                        .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                    } else Color{
                        .r = @bitCast(u8, @truncate(i8, @as(c_int, 46))),
                        .g = @bitCast(u8, @truncate(i8, @as(c_int, 52))),
                        .b = @bitCast(u8, @truncate(i8, @as(c_int, 64))),
                        .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                    };
                    DrawRectangleV(Vector2{
                        .x = pos.x,
                        .y = pos.y,
                    }, Vector2{
                        .x = @intTof32(f32, @as(c_int, 24)),
                        .y = @intTof32(f32, @as(c_int, 24)),
                    }, color);
                }
            }
        }
    }
    {
        var tile_x: c_int = 0;
        while (tile_x < @as(c_int, 20)) : (tile_x += 1) {
            {
                var tile_y: c_int = 0;
                while (tile_y < @as(c_int, 20)) : (tile_y += 1) {
                    var tile_pos: int2 = int2{
                        .x = tile_x,
                        .y = tile_y,
                    };
                    if (!is_seen(tile_pos)) continue;
                    if (is_open(tile_pos)) {
                        var pos: v2 = v2_add(pos_v2(tile_pos), v2{
                            .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))) - ((Vector2{
                                .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                                .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                            }).x / @intTof32(f32, @as(c_int, 2))),
                            .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))) - ((Vector2{
                                .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                                .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                            }).y / @intTof32(f32, @as(c_int, 2))),
                        });
                        DrawRectangleV(Vector2{
                            .x = pos.x,
                            .y = pos.y,
                        }, Vector2{
                            .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                            .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 4))),
                        }, Color{
                            .r = @bitCast(u8, @truncate(i8, @as(c_int, 226))),
                            .g = @bitCast(u8, @truncate(i8, @as(c_int, 233))),
                            .b = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                            .a = @bitCast(u8, @truncate(i8, @as(c_int, 40))),
                        });
                    } else {
                        var color: Color = if (@as(c_int, @boolToInt(state.*.tiles[@intCast(c_uint, tile_x)][@intCast(c_uint, tile_y)].visible)) != 0) Color{
                            .r = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                            .g = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                            .b = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                            .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                        } else Color{
                            .r = @bitCast(u8, @truncate(i8, @as(c_int, 130))),
                            .g = @bitCast(u8, @truncate(i8, @as(c_int, 130))),
                            .b = @bitCast(u8, @truncate(i8, @as(c_int, 130))),
                            .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
                        };
                        draw_rune(color, @bitCast(u8, @truncate(i8, @as(c_int, '#'))), tile_pos, v2{
                            .x = @intTof32(f32, @as(c_int, 0)),
                            .y = @intTof32(f32, @as(c_int, 0)),
                        });
                    }
                }
            }
        }
    }
    var ecs: [*c]Ecs = &state.*.ecs;
    var ents: [*c]Ents = &ecs.*.ents;
    var spacial: Ent_Iterator = ent_iterator(ecs, Ent_Tags{
        .unnamed_0 = struct_unnamed_7{
            .player = false,
            .spacial = @as(c_int, 1) != 0,
        },
    });
    {
        var e: c_int = each(&spacial);
        while (!spacial.done) : (e = each(&spacial)) {
            var pos: int2 = ents.*.pos[@intCast(c_uint, e)];
            if (state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].visible) {
                draw_rune(ents.*.color[@intCast(c_uint, e)], ents.*.rune[@intCast(c_uint, e)], pos, v2{
                    .x = @intTof32(f32, @as(c_int, 0)),
                    .y = @intTof32(f32, @as(c_int, 0)),
                });
            }
        }
    }
    EndMode2D();
    EndDrawing();
}
pub const struct_Room_Card = extern struct {
    w: c_int align(4),
    h: c_int,
    pub fn tiles(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) fn {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 8));
    }
};
pub export fn reset_dungeon() void {
    {
        var x: c_int = 0;
        while (x < @as(c_int, 20)) : (x += 1) {
            {
                var y: c_int = 0;
                while (y < @as(c_int, 20)) : (y += 1) {
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)] = Tile{
                        .open = @as(c_int, 0) != 0,
                        .visible = false,
                        .seen = false,
                        .dist_to_player = 0,
                        .abs_dist_to_player = 0,
                        .dir_to_player = @import("std").mem.zeroes(struct_int2),
                    };
                }
            }
        }
    }
    {
        var x: c_int = 2;
        while (x < (@as(c_int, 20) - @as(c_int, 2))) : (x += 1) {
            {
                var y: c_int = 2;
                while (y < (@as(c_int, 20) - @as(c_int, 2))) : (y += 1) {
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].open = @as(c_int, 1) != 0;
                }
            }
        }
    }
    {
        var x: c_int = @divTrunc(@as(c_int, 20), @as(c_int, 2)) - @as(c_int, 2);
        while (x < (@divTrunc(@as(c_int, 20), @as(c_int, 2)) + @as(c_int, 2))) : (x += 1) {
            {
                var y: c_int = @divTrunc(@as(c_int, 20), @as(c_int, 2)) - @as(c_int, 2);
                while (y < (@divTrunc(@as(c_int, 20), @as(c_int, 2)) + @as(c_int, 2))) : (y += 1) {
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].open = @as(c_int, 0) != 0;
                }
            }
        }
    }
}
pub export fn reset() void {
    init_ecs(&state.*.ecs);
    var ecs: [*c]Ecs = &state.*.ecs;
    var ents: [*c]Ents = &state.*.ecs.ents;
    reset_dungeon();
    state.*.player_e = push_ent(ecs, Ent_Tags{
        .unnamed_0 = struct_unnamed_7{
            .player = @as(c_int, 1) != 0,
            .spacial = @as(c_int, 1) != 0,
        },
    });
    ents.*.rune[@intCast(c_uint, state.*.player_e)] = '@';
    ents.*.pos[@intCast(c_uint, state.*.player_e)] = get_random_open_pos();
    ents.*.color[@intCast(c_uint, state.*.player_e)] = Color{
        .r = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .g = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .b = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
    };
    var npc_e: c_int = push_ent(ecs, Ent_Tags{
        .unnamed_0 = struct_unnamed_7{
            .player = false,
            .spacial = @as(c_int, 1) != 0,
        },
    });
    ents.*.rune[@intCast(c_uint, npc_e)] = 'N';
    ents.*.pos[@intCast(c_uint, npc_e)] = get_random_open_pos();
    ents.*.color[@intCast(c_uint, npc_e)] = Color{
        .r = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .g = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .b = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
        .a = @bitCast(u8, @truncate(i8, @as(c_int, 255))),
    };
}
pub export fn _load() void {
    if (state.*.loaded) {
        UnloadTexture(state.*.walls);
    } else {
        state.*.loaded = @as(c_int, 1) != 0;
        state.*.walls = LoadTexture("src/game/rl/walls.png");
        init_ecs(&state.*.ecs);
        reset();
    }
}
pub const north: c_int = 0;
pub const east: c_int = 1;
pub const south: c_int = 2;
pub const west: c_int = 3;
pub const Cardinal = c_uint;
pub const Quadrant = extern struct {
    cardinal: Cardinal,
    origin: int2,
};
pub const Quad_Row = extern struct {
    quadrant: Quadrant,
    depth: c_int,
    start_slope: f32,
    end_slope: f32,
};
pub const Quad_Tile = extern struct {
    quadrant: Quadrant,
    row: c_int,
    col: c_int,
};
pub export fn valid(arg_tile: Quad_Tile) bool {
    var tile = arg_tile;
    return (tile.row != -@as(c_int, 1)) and (tile.col != -@as(c_int, 1));
}
pub export fn next(arg_row: [*c]Quad_Row) Quad_Row {
    var row = arg_row;
    return Quad_Row{
        .quadrant = row.*.quadrant,
        .depth = row.*.depth + @as(c_int, 1),
        .start_slope = row.*.start_slope,
        .end_slope = row.*.end_slope,
    };
}
pub const Quad_Row_Iterator = extern struct {
    quadrant: Quadrant,
    depth: c_int,
    min_col: c_int,
    max_col: c_int,
    col: c_int,
};
pub const struct_Quad_Row_Iterator_Result = extern struct {
    tile: Quad_Tile,
    ok: bool,
};
pub export fn round_ties_up(arg_n: f32) f32 {
    var n = arg_n;
    return @f32Cast(f32, floor(@f32Cast(f64, n) + 0.5));
}
pub export fn round_ties_down(arg_n: f32) f32 {
    var n = arg_n;
    return @f32Cast(f32, ceil(@f32Cast(f64, n) - 0.5));
}
pub export fn row_tiles(arg_row: [*c]Quad_Row) Quad_Row_Iterator {
    var row = arg_row;
    var depth: c_int = row.*.depth;
    var min_col: c_int = @f32ToInt(c_int, round_ties_up(@intTof32(f32, depth) * row.*.start_slope));
    var max_col: c_int = @f32ToInt(c_int, round_ties_down(@intTof32(f32, depth) * row.*.end_slope));
    return Quad_Row_Iterator{
        .quadrant = row.*.quadrant,
        .depth = depth,
        .min_col = min_col,
        .max_col = max_col,
        .col = min_col,
    };
}
pub export fn iter_row_tiles(arg_iter: [*c]Quad_Row_Iterator) Quad_Tile {
    var iter = arg_iter;
    while ((iter.*.min_col <= iter.*.col) and (iter.*.col <= iter.*.max_col)) {
        var col: c_int = iter.*.col;
        iter.*.col += @as(c_int, 1);
        return Quad_Tile{
            .quadrant = iter.*.quadrant,
            .row = iter.*.depth,
            .col = col,
        };
    }
    return Quad_Tile{
        .quadrant = @import("std").mem.zeroes(Quadrant),
        .row = -@as(c_int, 1),
        .col = -@as(c_int, 1),
    };
}
pub export fn transform(arg_tile: Quad_Tile) int2 {
    var tile = arg_tile;
    var row: c_int = tile.row;
    var col: c_int = tile.col;
    var cardinal: c_int = @bitCast(c_int, tile.quadrant.cardinal);
    var origin: int2 = tile.quadrant.origin;
    if (cardinal == north) return int2{
        .x = origin.x + col,
        .y = origin.y - row,
    };
    if (cardinal == south) return int2{
        .x = origin.x + col,
        .y = origin.y + row,
    };
    if (cardinal == east) return int2{
        .x = origin.x + row,
        .y = origin.y + col,
    };
    if (cardinal == west) return int2{
        .x = origin.x - row,
        .y = origin.y + col,
    };
    _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(@as(c_int, 0) != 0)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("transform", "rl_shadowcast.c", @as(c_int, 90), "false") else @as(c_int, 0);
    return @import("std").mem.zeroes(struct_int2);
}
pub export fn quad_reveal(arg_tile: Quad_Tile) void {
    var tile = arg_tile;
    var pos: int2 = transform(tile);
    reveal(pos);
}
pub export fn quad_is_wall(arg_tile: Quad_Tile) bool {
    var tile = arg_tile;
    var pos: int2 = transform(tile);
    return is_wall(pos);
}
pub export fn quad_is_floor(arg_tile: Quad_Tile) bool {
    var tile = arg_tile;
    var pos: int2 = transform(tile);
    return is_floor(pos);
}
pub export fn slope(arg_tile: Quad_Tile) f32 {
    var tile = arg_tile;
    return ((2.0 * @intTof32(f32, tile.col)) - 1.0) / (2.0 * @intTof32(f32, tile.row));
}
pub export fn is_symmetric(arg_row: [*c]Quad_Row, arg_tile: Quad_Tile) bool {
    var row = arg_row;
    var tile = arg_tile;
    return (@intTof32(f32, tile.col) >= (@intTof32(f32, row.*.depth) * row.*.start_slope)) and (@intTof32(f32, tile.col) <= (@intTof32(f32, row.*.depth) * row.*.end_slope));
}
pub export fn scan(arg_row: [*c]Quad_Row) void {
    var row = arg_row;
    var prev_tile: Quad_Tile = Quad_Tile{
        .quadrant = @import("std").mem.zeroes(Quadrant),
        .row = -@as(c_int, 1),
        .col = -@as(c_int, 1),
    };
    var iter: Quad_Row_Iterator = row_tiles(row);
    {
        var tile: Quad_Tile = iter_row_tiles(&iter);
        while (valid(tile)) : (tile = iter_row_tiles(&iter)) {
            if ((@as(c_int, @boolToInt(quad_is_wall(tile))) != 0) or (@as(c_int, @boolToInt(is_symmetric(row, tile))) != 0)) {
                quad_reveal(tile);
            }
            if (((@as(c_int, @boolToInt(valid(prev_tile))) != 0) and (@as(c_int, @boolToInt(quad_is_wall(prev_tile))) != 0)) and (@as(c_int, @boolToInt(quad_is_floor(tile))) != 0)) {
                row.*.start_slope = slope(tile);
            }
            if (((@as(c_int, @boolToInt(valid(prev_tile))) != 0) and (@as(c_int, @boolToInt(quad_is_floor(prev_tile))) != 0)) and (@as(c_int, @boolToInt(quad_is_wall(tile))) != 0)) {
                var next_row: Quad_Row = next(row);
                next_row.end_slope = slope(tile);
                scan(&next_row);
            }
            prev_tile = tile;
        }
    }
    if (quad_is_floor(prev_tile)) {
        var next_row: Quad_Row = next(row);
        scan(&next_row);
    }
}
pub export fn update_shadowcast() void {
    var origin: int2 = get_player_pos();
    reveal(origin);
    {
        var i: c_int = 0;
        while (i < @as(c_int, 4)) : (i += 1) {
            var quadrant: Quadrant = Quadrant{
                .cardinal = @bitCast(c_uint, i),
                .origin = origin,
            };
            var first_row: Quad_Row = Quad_Row{
                .quadrant = quadrant,
                .depth = @as(c_int, 1),
                .start_slope = @intTof32(f32, -@as(c_int, 1)),
                .end_slope = @intTof32(f32, @as(c_int, 1)),
            };
            scan(&first_row);
        }
    }
}
pub export fn check_input() void {
    if (IsKeyPressed(KEY_S)) return move_player(int2{
        .x = @as(c_int, 0),
        .y = @as(c_int, 0),
    });
    if (IsKeyPressed(KEY_C)) return move_player(int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 1),
    });
    if (IsKeyPressed(KEY_Z)) return move_player(int2{
        .x = -@as(c_int, 1),
        .y = @as(c_int, 1),
    });
    if (IsKeyPressed(KEY_E)) return move_player(int2{
        .x = @as(c_int, 1),
        .y = -@as(c_int, 1),
    });
    if (IsKeyPressed(KEY_Q)) return move_player(int2{
        .x = -@as(c_int, 1),
        .y = -@as(c_int, 1),
    });
    if (IsKeyPressed(KEY_W)) return move_player(int2{
        .x = @as(c_int, 0),
        .y = -@as(c_int, 1),
    });
    if (IsKeyPressed(KEY_A)) return move_player(int2{
        .x = -@as(c_int, 1),
        .y = @as(c_int, 0),
    });
    if (IsKeyPressed(KEY_D)) return move_player(int2{
        .x = @as(c_int, 1),
        .y = @as(c_int, 0),
    });
    if (IsKeyPressed(KEY_X)) return move_player(int2{
        .x = @as(c_int, 0),
        .y = @as(c_int, 1),
    });
    if (IsKeyPressed(KEY_R)) return reset();
    if (IsKeyPressed(KEY_F)) return ToggleFullscreen();
}
pub export fn update_fixed() void {
    {
        var tile_x: c_int = 0;
        while (tile_x < @as(c_int, 20)) : (tile_x += 1) {
            {
                var tile_y: c_int = 0;
                while (tile_y < @as(c_int, 20)) : (tile_y += 1) {
                    state.*.tiles[@intCast(c_uint, tile_x)][@intCast(c_uint, tile_y)].visible = @as(c_int, 0) != 0;
                }
            }
        }
    }
    var player_pos: int2 = state.*.ecs.ents.pos[@intCast(c_uint, state.*.player_e)];
    {
        var x: c_int = 0;
        while (x < @as(c_int, 20)) : (x += 1) {
            {
                var y: c_int = 0;
                while (y < @as(c_int, 20)) : (y += 1) {
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].dist_to_player = -@as(c_int, 1);
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].abs_dist_to_player = if ((if ((x - player_pos.x) < @as(c_int, 0)) -(x - player_pos.x) else x - player_pos.x) > (if ((y - player_pos.y) < @as(c_int, 0)) -(y - player_pos.y) else y - player_pos.y)) if ((x - player_pos.x) < @as(c_int, 0)) -(x - player_pos.x) else x - player_pos.x else if ((y - player_pos.y) < @as(c_int, 0)) -(y - player_pos.y) else y - player_pos.y;
                    state.*.tiles[@intCast(c_uint, x)][@intCast(c_uint, y)].dir_to_player = int2_add(int2{
                        .x = x,
                        .y = y,
                    }, player_pos);
                }
            }
        }
    }
    state.*.tiles[@intCast(c_uint, player_pos.x)][@intCast(c_uint, player_pos.y)].visible = @as(c_int, 1) != 0;
    {
        var i: c_int = 0;
        while (@bitCast(c_ulong, @as(c_long, i)) < (@sizeOf([8]int2) / @sizeOf(int2))) : (i += 1) {
            var dir: int2 = directions[@intCast(c_uint, i)];
            var pos: int2 = int2_add(player_pos, dir);
            state.*.tiles[@intCast(c_uint, pos.x)][@intCast(c_uint, pos.y)].visible = @as(c_int, 1) != 0;
        }
    }
    update_shadowcast();
}
pub export fn _update() void {
    const update_timer_1 = struct {
        var static: f32 = @import("std").mem.zeroes(f32);
    };
    if ((state.*.font.baseSize != (@as(c_int, 24) * @as(c_int, 2))) or (state.*.font_path != FONT)) {
        if (state.*.font.glyphCount != @as(c_int, 0)) {
            UnloadFont(state.*.font);
        }
        state.*.font = LoadFontEx(FONT, @as(c_int, 24) * @as(c_int, 2), null, @as(c_int, 250));
        state.*.font_path = FONT;
    }
    var glyph_info: GlyphInfo = GetGlyphInfo(state.*.font, @as(c_int, '@'));
    state.*.rune_offset = v2_sub(v2{
        .x = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))),
        .y = @intTof32(f32, @divTrunc(@as(c_int, 24), @as(c_int, 2))),
    }, v2{
        .x = @intTof32(f32, glyph_info.image.width + glyph_info.offsetX) / @intTof32(f32, @as(c_int, 4)),
        .y = @intTof32(f32, glyph_info.offsetY + glyph_info.image.height) / @intTof32(f32, @as(c_int, 4)),
    });
    check_input();
    update_timer_1.static += GetFrameTime();
    if (update_timer_1.static >= (1.0 / 60.0)) {
        update_timer_1.static -= 1.0 / 60.0;
        update_fixed();
    }
    draw();
}
pub export fn load(arg_ctx_1: [*c]App_Context) void {
    var ctx_1 = arg_ctx_1;
    if (@sizeOf(State) > ctx_1.*.state.size) {
        var old: Mem = ctx_1.*.state;
        ctx_1.*.state = Mem{
            .data = malloc(@sizeOf(State)),
            .size = @sizeOf(State),
        };
        state = @ptrCast([*c]State, @alignCast(@import("std").meta.alignment(State), ctx_1.*.state.data));
        if (old.data != @intToPtr(?*anyopaque, @as(c_int, 0))) {
            _ = if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!(@as(c_int, 0) != 0)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __assert_rtn("load", "game.c", @as(c_int, 15), "false") else @as(c_int, 0);
        }
    }
    _load();
}
pub export fn update() void {
    _update();
}
pub export fn main() c_int {
    var ctx_1: App_Context = App_Context{
        .state = @import("std").mem.zeroes(Mem),
    };
    InitWindow((@as(c_int, 24) * @as(c_int, 20)) * @as(c_int, 1), (@as(c_int, 24) * @as(c_int, 20)) * @as(c_int, 1), "Roguelike");
    SetTargetFPS(@as(c_int, 60));
    SetWindowPosition(@as(c_int, 0), @as(c_int, 0));
    load(&ctx_1);
    while (!WindowShouldClose()) {
        update();
    }
    CloseWindow();
    return 0;
}
pub const __block = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):27:9
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):69:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):75:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):165:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):187:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):195:9
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`"); // (no file):278:9
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`"); // (no file):308:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`"); // (no file):309:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`"); // (no file):310:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):319:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):320:9
pub const __weak = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):368:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/include/stdarg.h:27:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:116:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:118:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:162:9
pub const __pure2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:163:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:164:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:169:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:174:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:180:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:190:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:191:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:192:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:204:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:208:10
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:219:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:225:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:247:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:280:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:292:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:303:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:313:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:347:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:360:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:373:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:376:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:397:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:399:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:401:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:404:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:407:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:411:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:415:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:419:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:424:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:428:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:432:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:436:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:454:9
pub const __DARWIN_ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:639:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:640:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:641:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:642:9
pub const __DARWIN_INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:643:9
pub const __DARWIN_1050 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:645:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:646:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:647:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:648:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:649:9
pub const __DARWIN_EXTSN = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:651:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:652:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:662:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:725:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:825:9
pub const __compiler_barrier = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:842:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:845:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:846:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:853:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:866:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:868:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:870:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:872:9
pub const __ASSERT_FILE_NAME = @compileError("unable to translate macro: undefined identifier `__FILE_NAME__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/assert.h:60:9
pub const __assert = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/assert.h:93:9
pub const assert = @compileError("unable to translate macro: undefined identifier `__func__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/assert.h:98:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token .Keyword_static_assert"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/assert.h:113:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:109:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:112:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:121:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:122:9
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2922:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2923:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2924:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2926:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2930:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2937:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2941:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2942:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2944:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2956:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2961:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2968:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2972:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2974:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2978:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2980:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2985:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2990:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2994:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2996:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3002:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3006:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3008:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3012:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3014:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3018:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3020:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3026:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3038:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3044:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3045:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3047:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3049:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3053:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3055:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3065:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3067:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3073:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3077:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3079:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3084:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3089:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3091:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3095:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3097:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3101:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3103:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3113:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3115:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3119:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3121:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3125:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3127:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3137:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3139:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3149:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3151:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3157:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3166:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3168:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3172:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3174:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3179:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3184:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3186:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3192:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3196:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3198:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3203:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3216:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3220:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3222:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3232:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3240:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3246:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3250:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3252:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3256:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3258:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3264:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3268:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3270:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3281:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3287:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3292:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3297:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3299:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3303:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3305:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3309:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3316:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3323:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3327:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3329:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3340:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3344:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3353:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3357:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3365:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3382:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3383:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3385:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3386:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3395:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3405:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3407:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3413:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3417:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3419:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3424:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3428:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3429:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3431:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3435:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3437:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3441:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3443:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3448:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3452:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3454:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3458:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3460:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3464:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3466:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3470:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3472:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3476:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3478:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3483:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3484:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3485:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3486:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3487:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3489:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3493:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3495:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3500:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3504:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3505:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3507:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3511:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3513:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3517:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3519:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3524:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3528:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3529:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3531:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3535:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3537:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3541:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3543:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3548:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3552:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3553:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3555:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3559:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3561:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3565:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3567:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3571:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3573:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3581:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3582:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3584:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3588:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3590:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3595:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3599:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3600:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3602:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3606:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3608:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3612:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3614:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3619:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3623:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3624:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3626:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3630:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3632:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3636:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3638:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3643:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3647:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3648:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3650:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3654:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3656:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3662:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3666:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3667:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3668:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3669:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3670:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3671:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3673:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3677:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3679:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3684:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3688:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3689:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3691:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3695:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3697:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3701:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3703:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3708:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3712:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3713:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3715:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3719:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3721:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3725:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3727:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3732:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3736:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3737:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3739:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3743:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3745:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3750:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3751:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3752:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3753:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3754:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3756:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3760:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3762:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3767:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3771:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3772:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3774:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3778:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3780:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3784:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3786:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3791:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3795:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3796:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3798:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3802:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3804:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3808:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3810:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3815:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3819:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3820:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3821:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3823:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3827:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3828:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3829:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3830:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3832:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3836:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3837:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3838:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3840:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3844:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3851:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3855:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3856:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3858:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3862:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3864:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3868:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3870:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3875:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3879:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3880:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3882:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3886:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3888:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3892:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3894:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3909:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3911:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3933:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3935:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3953:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3967:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3969:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3973:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3975:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3979:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3980:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3986:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3988:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3992:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3994:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4004:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4006:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4010:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4016:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4018:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4028:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4029:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4037:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4039:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4045:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4049:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4051:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4056:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4060:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4061:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4063:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4067:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4069:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4075:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4080:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4084:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4086:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4087:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4090:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4094:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4096:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4101:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4105:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4106:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4114:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4120:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4125:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4129:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4130:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4132:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4136:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4138:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4142:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4144:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4149:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4153:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4155:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4166:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4170:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4172:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4176:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4178:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4182:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4185:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4191:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4195:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4197:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4202:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4209:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4211:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4215:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4217:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4221:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4222:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4224:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4228:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4230:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4234:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4236:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4241:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4245:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4246:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4247:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4248:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4250:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4255:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4257:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4261:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4263:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4267:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4269:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4274:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4280:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4281:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4282:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4284:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4288:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4290:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4296:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4301:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4305:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4306:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4312:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4314:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4320:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4325:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4331:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4332:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4339:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4341:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4352:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4353:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4354:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4356:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4360:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4362:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4367:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4368:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4376:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4377:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4378:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4380:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4386:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4390:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4392:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4397:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4401:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4403:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4407:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4409:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4410:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4412:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4413:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4415:21
pub const __AVAILABILITY_INTERNAL__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4417:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4418:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4419:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4421:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4422:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4423:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4424:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4427:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4428:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4429:22
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4445:13
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4446:13
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4447:13
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4448:13
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4449:13
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4451:13
pub const __API_AVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4454:14
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4456:13
pub const __API_A = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4460:17
pub const __API_AVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4469:13
pub const __API_AVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4470:13
pub const __API_AVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4471:13
pub const __API_AVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4472:13
pub const __API_AVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4473:13
pub const __API_AVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4474:13
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4475:13
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4477:13
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4479:13
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4481:13
pub const __API_AVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4484:13
pub const __API_AVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4485:13
pub const __API_AVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4486:13
pub const __API_AVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4487:13
pub const __API_AVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4488:13
pub const __API_AVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4489:13
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4490:13
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4493:13
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4494:13
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4495:13
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4496:13
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4497:13
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4499:13
pub const __API_DEPRECATED_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4502:14
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4504:13
pub const __API_D = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4508:17
pub const __API_DEPRECATED_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4517:13
pub const __API_DEPRECATED_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4518:13
pub const __API_DEPRECATED_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4519:13
pub const __API_DEPRECATED_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4520:13
pub const __API_DEPRECATED_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4521:13
pub const __API_DEPRECATED_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4522:13
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4523:13
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4525:13
pub const __API_DEPRECATED_BEGIN_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4528:13
pub const __API_DEPRECATED_BEGIN_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4529:13
pub const __API_DEPRECATED_BEGIN_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4530:13
pub const __API_DEPRECATED_BEGIN_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4531:13
pub const __API_DEPRECATED_BEGIN_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4532:13
pub const __API_DEPRECATED_BEGIN_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4533:13
pub const __API_DEPRECATED_BEGIN_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4534:13
pub const __API_R = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4537:17
pub const __API_DEPRECATED_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4543:13
pub const __API_DEPRECATED_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4544:13
pub const __API_DEPRECATED_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4545:13
pub const __API_DEPRECATED_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4546:13
pub const __API_DEPRECATED_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4547:13
pub const __API_DEPRECATED_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4548:13
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4549:13
pub const __API_R_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4552:17
pub const __API_DEPRECATED_BEGIN_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4558:13
pub const __API_DEPRECATED_BEGIN_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4559:13
pub const __API_DEPRECATED_BEGIN_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4560:13
pub const __API_DEPRECATED_BEGIN_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4561:13
pub const __API_DEPRECATED_BEGIN_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4562:13
pub const __API_DEPRECATED_BEGIN_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4563:13
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4564:13
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4574:13
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4575:13
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4576:13
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4577:13
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4578:13
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4580:13
pub const __API_UNAVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4583:14
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4585:13
pub const __API_U = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4589:17
pub const __API_UNAVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4598:13
pub const __API_UNAVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4599:13
pub const __API_UNAVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4600:13
pub const __API_UNAVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4601:13
pub const __API_UNAVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4602:13
pub const __API_UNAVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4603:13
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4604:13
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4606:13
pub const __API_UNAVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4609:13
pub const __API_UNAVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4610:13
pub const __API_UNAVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4611:13
pub const __API_UNAVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4612:13
pub const __API_UNAVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4613:13
pub const __API_UNAVAILABLE_BEGIN7 = @compileError("unable to translate macro: undefined identifier `g`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4614:13
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4615:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4664:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4672:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:172:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:173:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:175:17
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:198:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:199:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:216:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:217:13
pub const __OS_EXTENSION_UNAVAILABLE = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:227:9
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:234:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:235:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:236:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:256:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:257:13
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:258:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:259:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:283:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:284:13
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:285:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:286:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:310:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:311:13
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:312:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:313:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:337:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:338:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:381:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:383:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:384:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:402:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:403:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:405:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:406:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:408:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:409:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:419:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:421:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:422:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:475:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/Availability.h:479:11
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:57:15
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:59:15
pub const fpclassify = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:126:9
pub const isnormal = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:149:9
pub const isfinite = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:154:9
pub const isinf = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:159:9
pub const isnan = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:164:9
pub const signbit = @compileError("unable to translate: TODO long double"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:169:9
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:543:9
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:544:9
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:545:9
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:546:9
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:547:9
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/math.h:548:9
pub const __offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_types.h:83:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/_types.h:31:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/_types.h:33:9
pub const __sgetc = @compileError("TODO unary inc/dec expr"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdio.h:251:9
pub const __sclearerr = @compileError("unable to translate C expr: expected ')' instead got: AmpersandEqual"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdio.h:275:9
pub const SIG_DFL = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: expected ')'"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/signal.h:134:9
pub const sv_onstack = @compileError("unable to translate macro: undefined identifier `sv_flags`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/signal.h:361:9
pub const ru_first = @compileError("unable to translate macro: undefined identifier `ru_ixrss`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/resource.h:164:9
pub const ru_last = @compileError("unable to translate macro: undefined identifier `ru_nivcsw`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/sys/resource.h:178:9
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/libkern/_OSByteOrder.h:67:17
pub const __DARWIN_OSSwapInt16 = @compileError("unable to translate macro: undefined identifier `__builtin_constant_p`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/libkern/_OSByteOrder.h:84:9
pub const __DARWIN_OSSwapInt32 = @compileError("unable to translate macro: undefined identifier `__builtin_constant_p`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/libkern/_OSByteOrder.h:87:9
pub const __DARWIN_OSSwapInt64 = @compileError("unable to translate macro: undefined identifier `__builtin_constant_p`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/libkern/_OSByteOrder.h:90:9
pub const NTOHL = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:143:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:144:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:145:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:146:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:147:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/_endian.h:148:9
pub const w_termsig = @compileError("unable to translate macro: undefined identifier `w_T`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:231:9
pub const w_coredump = @compileError("unable to translate macro: undefined identifier `w_T`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:232:9
pub const w_retcode = @compileError("unable to translate macro: undefined identifier `w_T`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:233:9
pub const w_stopval = @compileError("unable to translate macro: undefined identifier `w_S`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:234:9
pub const w_stopsig = @compileError("unable to translate macro: undefined identifier `w_S`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/sys/wait.h:235:9
pub const __alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos-any/alloca.h:40:9
pub const __bsearch_noescape = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:272:9
pub const __sort_noescape = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/local/Cellar/zig/0.9.1/lib/zig/libc/include/any-macos.12-any/stdlib.h:305:9
pub const len = @compileError("unable to translate C expr: unexpected token .Asterisk"); // ./../game/rl/../../shared/shared.c:30:9
pub const clamp = @compileError("unable to translate macro: undefined identifier `min`"); // ./../game/rl/../../shared/shared.c:31:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Homebrew Clang 13.0.1";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_f32__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_int;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120301, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const RAYLIB_H = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const RAYLIB_VERSION = "4.2-dev";
pub const RLAPI = "";
pub const PI = @as(f32, 3.14159265358979323846);
pub const DEG2RAD = PI / @as(f32, 180.0);
pub const RAD2DEG = @as(f32, 180.0) / PI;
pub inline fn RL_MALLOC(sz: anytype) @TypeOf(malloc(sz)) fn {
    return malloc(sz);
}
pub inline fn RL_CALLOC(n: anytype, sz: anytype) @TypeOf(calloc(n, sz)) fn {
    return calloc(n, sz);
}
pub inline fn RL_REALLOC(ptr: anytype, sz: anytype) @TypeOf(realloc(ptr, sz)) fn {
    return realloc(ptr, sz);
}
pub inline fn RL_FREE(ptr: anytype) @TypeOf(free(ptr)) fn {
    return free(ptr);
}
pub inline fn CLITERAL(@"type": anytype) @TypeOf(@"type") fn {
    return @"type";
}
pub const RL_COLOR_TYPE = "";
pub const RL_RECTANGLE_TYPE = "";
pub const RL_VECTOR2_TYPE = "";
pub const RL_VECTOR3_TYPE = "";
pub const RL_VECTOR4_TYPE = "";
pub const RL_QUATERNION_TYPE = "";
pub const RL_MATRIX_TYPE = "";
pub const LIGHTGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 200), @as(c_int, 200), @as(c_int, 255) });
pub const GRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 130), @as(c_int, 130), @as(c_int, 130), @as(c_int, 255) });
pub const DARKGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 80), @as(c_int, 80), @as(c_int, 80), @as(c_int, 255) });
pub const YELLOW = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 253), @as(c_int, 249), @as(c_int, 0), @as(c_int, 255) });
pub const GOLD = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 203), @as(c_int, 0), @as(c_int, 255) });
pub const ORANGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 161), @as(c_int, 0), @as(c_int, 255) });
pub const PINK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 109), @as(c_int, 194), @as(c_int, 255) });
pub const RED = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 230), @as(c_int, 41), @as(c_int, 55), @as(c_int, 255) });
pub const MAROON = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 190), @as(c_int, 33), @as(c_int, 55), @as(c_int, 255) });
pub const GREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 228), @as(c_int, 48), @as(c_int, 255) });
pub const LIME = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 158), @as(c_int, 47), @as(c_int, 255) });
pub const DARKGREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 117), @as(c_int, 44), @as(c_int, 255) });
pub const SKYBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 102), @as(c_int, 191), @as(c_int, 255), @as(c_int, 255) });
pub const BLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 121), @as(c_int, 241), @as(c_int, 255) });
pub const DARKBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 82), @as(c_int, 172), @as(c_int, 255) });
pub const PURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 122), @as(c_int, 255), @as(c_int, 255) });
pub const VIOLET = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 135), @as(c_int, 60), @as(c_int, 190), @as(c_int, 255) });
pub const DARKPURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 112), @as(c_int, 31), @as(c_int, 126), @as(c_int, 255) });
pub const BEIGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 211), @as(c_int, 176), @as(c_int, 131), @as(c_int, 255) });
pub const BROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 127), @as(c_int, 106), @as(c_int, 79), @as(c_int, 255) });
pub const DARKBROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 76), @as(c_int, 63), @as(c_int, 47), @as(c_int, 255) });
pub const WHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 255), @as(c_int, 255), @as(c_int, 255) });
pub const BLACK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 255) });
pub const BLANK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0) });
pub const MAGENTA = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 0), @as(c_int, 255), @as(c_int, 255) });
pub const RAYWHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 245), @as(c_int, 245), @as(c_int, 245), @as(c_int, 255) });
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const MOUSE_LEFT_BUTTON = MOUSE_BUTTON_LEFT;
pub const MOUSE_RIGHT_BUTTON = MOUSE_BUTTON_RIGHT;
pub const MOUSE_MIDDLE_BUTTON = MOUSE_BUTTON_MIDDLE;
pub const MATERIAL_MAP_DIFFUSE = MATERIAL_MAP_ALBEDO;
pub const MATERIAL_MAP_SPECULAR = MATERIAL_MAP_METALNESS;
pub const SHADER_LOC_MAP_DIFFUSE = SHADER_LOC_MAP_ALBEDO;
pub const SHADER_LOC_MAP_SPECULAR = SHADER_LOC_MAP_METALNESS;
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __P(protos: anytype) @TypeOf(protos) fn {
    return protos;
}
pub const __signed = c_int;
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) fn {
    return __deprecated_msg(_msg);
}
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 0);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 0);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "$INODE64";
pub const __DARWIN_SUF_1050 = "$1050";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) fn {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) fn {
    return x;
}
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub inline fn __CAST_AWAY_QUALIFIER(variable: anytype, qualifier: anytype, @"type": anytype) @TypeOf(@"type"(c_long)(variable)) fn {
    _ = qualifier;
    return @"type"(c_long)(variable);
}
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const _ASSERT_H_ = "";
pub const __MATH_H__ = "";
pub const __MATH__ = "";
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const MAC_OS_X_VERSION_10_0 = @as(c_int, 1000);
pub const MAC_OS_X_VERSION_10_1 = @as(c_int, 1010);
pub const MAC_OS_X_VERSION_10_2 = @as(c_int, 1020);
pub const MAC_OS_X_VERSION_10_3 = @as(c_int, 1030);
pub const MAC_OS_X_VERSION_10_4 = @as(c_int, 1040);
pub const MAC_OS_X_VERSION_10_5 = @as(c_int, 1050);
pub const MAC_OS_X_VERSION_10_6 = @as(c_int, 1060);
pub const MAC_OS_X_VERSION_10_7 = @as(c_int, 1070);
pub const MAC_OS_X_VERSION_10_8 = @as(c_int, 1080);
pub const MAC_OS_X_VERSION_10_9 = @as(c_int, 1090);
pub const MAC_OS_X_VERSION_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const MAC_OS_X_VERSION_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const MAC_OS_X_VERSION_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const MAC_OS_X_VERSION_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const MAC_OS_X_VERSION_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const MAC_OS_X_VERSION_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const MAC_OS_X_VERSION_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const MAC_OS_X_VERSION_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const MAC_OS_X_VERSION_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const MAC_OS_X_VERSION_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const MAC_OS_X_VERSION_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const MAC_OS_X_VERSION_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const MAC_OS_X_VERSION_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const MAC_OS_X_VERSION_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const MAC_OS_X_VERSION_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const MAC_OS_X_VERSION_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const MAC_OS_X_VERSION_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const MAC_OS_X_VERSION_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const MAC_OS_X_VERSION_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const MAC_OS_X_VERSION_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const MAC_OS_X_VERSION_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const MAC_OS_X_VERSION_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const MAC_OS_VERSION_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const MAC_OS_VERSION_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __DRIVERKIT_19_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 210000, .decimal);
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_12_0;
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = @as(c_int, 1);
pub inline fn __API_AVAILABLE1(x: anytype) @TypeOf(__API_A(x)) fn {
    return __API_A(x);
}
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) fn {
    return __API_RANGE_STRINGIFY2(x);
}
pub inline fn __API_AVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_A_BEGIN(a)) fn {
    return __API_A_BEGIN(a);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, x: anytype) @TypeOf(__API_D(msg, x)) fn {
    return __API_D(msg, x);
}
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: anytype, a: anytype) @TypeOf(__API_D_BEGIN(msg, a)) fn {
    return __API_D_BEGIN(msg, a);
}
pub inline fn __API_DEPRECATED_REP2(rep: anytype, x: anytype) @TypeOf(__API_R(rep, x)) fn {
    return __API_R(rep, x);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(rep: anytype, a: anytype) @TypeOf(__API_R_BEGIN(rep, a)) fn {
    return __API_R_BEGIN(rep, a);
}
pub inline fn __API_UNAVAILABLE1(x: anytype) @TypeOf(__API_U(x)) fn {
    return __API_U(x);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_U_BEGIN(a)) fn {
    return __API_U_BEGIN(a);
}
pub const HUGE_VALF = __builtin_huge_valf();
pub const NAN = __builtin_nanf("0x7fc00000");
pub const INFINITY = HUGE_VALF;
pub const FP_NAN = @as(c_int, 1);
pub const FP_INFINITE = @as(c_int, 2);
pub const FP_ZERO = @as(c_int, 3);
pub const FP_NORMAL = @as(c_int, 4);
pub const FP_SUBNORMAL = @as(c_int, 5);
pub const FP_SUPERNORMAL = @as(c_int, 6);
pub const FP_FAST_FMA = @as(c_int, 1);
pub const FP_FAST_FMAF = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = __math_errhandling();
pub const M_E = 2.71828182845904523536028747135266250;
pub const M_LOG2E = 1.44269504088896340735992468100189214;
pub const M_LOG10E = 0.434294481903251827651128918916605082;
pub const M_LN2 = 0.693147180559945309417232121458176568;
pub const M_LN10 = 2.30258509299404568401799145468436421;
pub const M_PI = 3.14159265358979323846264338327950288;
pub const M_PI_2 = 1.57079632679489661923132169163975144;
pub const M_PI_4 = 0.785398163397448309615660845819875721;
pub const M_1_PI = 0.318309886183790671537767526745028724;
pub const M_2_PI = 0.636619772367581343075535053490057448;
pub const M_2_SQRTPI = 1.12837916709551257389615890312154517;
pub const M_SQRT2 = 1.41421356237309504880168872420969808;
pub const M_SQRT1_2 = 0.707106781186547524400844362104849039;
pub const MAXf32 = @as(f32, 0x1.fffffep+127);
pub const FP_SNAN = FP_NAN;
pub const FP_QNAN = FP_NAN;
pub const HUGE = MAXf32;
pub const X_TLOSS = 1.41484755040568800000e+16;
pub const DOMAIN = @as(c_int, 1);
pub const SING = @as(c_int, 2);
pub const OVERFLOW = @as(c_int, 3);
pub const UNDERFLOW = @as(c_int, 4);
pub const TLOSS = @as(c_int, 5);
pub const PLOSS = @as(c_int, 6);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_I386__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const _INTPTR_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _I386_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) fn {
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) fn {
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) fn {
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) fn {
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) fn {
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const _STDIO_H_ = "";
pub const __STDIO_H_ = "";
pub const __TYPES_H_ = "";
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const _VA_LIST_T = "";
pub const _SIZE_T = "";
pub const NULL = __DARWIN_NULL;
pub const _SYS_STDIO_H_ = "";
pub const RENAME_SECLUDE = @as(c_int, 0x00000001);
pub const RENAME_SWAP = @as(c_int, 0x00000002);
pub const RENAME_EXCL = @as(c_int, 0x00000004);
pub const _FSTDIO = "";
pub const __SLBF = @as(c_int, 0x0001);
pub const __SNBF = @as(c_int, 0x0002);
pub const __SRD = @as(c_int, 0x0004);
pub const __SWR = @as(c_int, 0x0008);
pub const __SRW = @as(c_int, 0x0010);
pub const __SEOF = @as(c_int, 0x0020);
pub const __SERR = @as(c_int, 0x0040);
pub const __SMBF = @as(c_int, 0x0080);
pub const __SAPP = @as(c_int, 0x0100);
pub const __SSTR = @as(c_int, 0x0200);
pub const __SOPT = @as(c_int, 0x0400);
pub const __SNPT = @as(c_int, 0x0800);
pub const __SOFF = @as(c_int, 0x1000);
pub const __SMOD = @as(c_int, 0x2000);
pub const __SALC = @as(c_int, 0x4000);
pub const __SIGN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const EOF = -@as(c_int, 1);
pub const FOPEN_MAX = @as(c_int, 20);
pub const FILENAME_MAX = @as(c_int, 1024);
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = @as(c_int, 1024);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 308915776, .decimal);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const stdin = __stdinp;
pub const stdout = __stdoutp;
pub const stderr = __stderrp;
pub const L_ctermid = @as(c_int, 1024);
pub const _CTERMID_H_ = "";
pub inline fn __sfeof(p: anytype) @TypeOf((p.*._flags & __SEOF) != @as(c_int, 0)) fn {
    return (p.*._flags & __SEOF) != @as(c_int, 0);
}
pub inline fn __sferror(p: anytype) @TypeOf((p.*._flags & __SERR) != @as(c_int, 0)) fn {
    return (p.*._flags & __SERR) != @as(c_int, 0);
}
pub inline fn __sfileno(p: anytype) @TypeOf(p.*._file) fn {
    return p.*._file;
}
pub const _OFF_T = "";
pub const _SSIZE_T = "";
pub inline fn fropen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0))) fn {
    return funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
}
pub inline fn fwopen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0))) fn {
    return funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0));
}
pub inline fn feof_unlocked(p: anytype) @TypeOf(__sfeof(p)) fn {
    return __sfeof(p);
}
pub inline fn ferror_unlocked(p: anytype) @TypeOf(__sferror(p)) fn {
    return __sferror(p);
}
pub inline fn clearerr_unlocked(p: anytype) @TypeOf(__sclearerr(p)) fn {
    return __sclearerr(p);
}
pub inline fn fileno_unlocked(p: anytype) @TypeOf(__sfileno(p)) fn {
    return __sfileno(p);
}
pub const _SECURE__STDIO_H_ = "";
pub const _SECURE__COMMON_H_ = "";
pub const _USE_FORTIFY_LEVEL = @as(c_int, 2);
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin_object_size(object, @as(c_int, 0))) fn {
    return __builtin_object_size(object, @as(c_int, 0));
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0))) fn {
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0));
}
pub const _STDLIB_H_ = "";
pub const _SYS_WAIT_H_ = "";
pub const _PID_T = "";
pub const _ID_T = "";
pub const _SYS_SIGNAL_H_ = "";
pub const __SYS_APPLEAPIOPTS_H__ = "";
pub const __APPLE_API_STANDARD = "";
pub const __APPLE_API_STABLE = "";
pub const __APPLE_API_EVOLVING = "";
pub const __APPLE_API_UNSTABLE = "";
pub const __APPLE_API_PRIVATE = "";
pub const __APPLE_API_OBSOLETE = "";
pub const __DARWIN_NSIG = @as(c_int, 32);
pub const NSIG = __DARWIN_NSIG;
pub const _BSD_MACHINE_SIGNAL_H_ = "";
pub const _I386_SIGNAL_H_ = @as(c_int, 1);
pub const SIGHUP = @as(c_int, 1);
pub const SIGINT = @as(c_int, 2);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGILL = @as(c_int, 4);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGABRT = @as(c_int, 6);
pub const SIGIOT = SIGABRT;
pub const SIGEMT = @as(c_int, 7);
pub const SIGFPE = @as(c_int, 8);
pub const SIGKILL = @as(c_int, 9);
pub const SIGBUS = @as(c_int, 10);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGSYS = @as(c_int, 12);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGTERM = @as(c_int, 15);
pub const SIGURG = @as(c_int, 16);
pub const SIGSTOP = @as(c_int, 17);
pub const SIGTSTP = @as(c_int, 18);
pub const SIGCONT = @as(c_int, 19);
pub const SIGCHLD = @as(c_int, 20);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGIO = @as(c_int, 23);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGWINCH = @as(c_int, 28);
pub const SIGINFO = @as(c_int, 29);
pub const SIGUSR1 = @as(c_int, 30);
pub const SIGUSR2 = @as(c_int, 31);
pub const _BSD_MACHINE__MCONTEXT_H_ = "";
pub const __I386_MCONTEXT_H_ = "";
pub const _MACH_MACHINE__STRUCTS_H_ = "";
pub const _MACH_I386__STRUCTS_H_ = "";
pub const _STRUCT_X86_THREAD_STATE32 = struct___darwin_i386_thread_state;
pub const _STRUCT_FP_CONTROL = struct___darwin_fp_control;
pub const FP_PREC_24B = @as(c_int, 0);
pub const FP_PREC_53B = @as(c_int, 2);
pub const FP_PREC_64B = @as(c_int, 3);
pub const FP_RND_NEAR = @as(c_int, 0);
pub const FP_RND_DOWN = @as(c_int, 1);
pub const FP_RND_UP = @as(c_int, 2);
pub const FP_CHOP = @as(c_int, 3);
pub const _STRUCT_FP_STATUS = struct___darwin_fp_status;
pub const _STRUCT_MMST_REG = struct___darwin_mmst_reg;
pub const _STRUCT_XMM_REG = struct___darwin_xmm_reg;
pub const _STRUCT_YMM_REG = struct___darwin_ymm_reg;
pub const _STRUCT_ZMM_REG = struct___darwin_zmm_reg;
pub const _STRUCT_OPMASK_REG = struct___darwin_opmask_reg;
pub const FP_STATE_BYTES = @as(c_int, 512);
pub const _STRUCT_X86_f32_STATE32 = struct___darwin_i386_f32_state;
pub const _STRUCT_X86_AVX_STATE32 = struct___darwin_i386_avx_state;
pub const _STRUCT_X86_AVX512_STATE32 = struct___darwin_i386_avx512_state;
pub const _STRUCT_X86_EXCEPTION_STATE32 = struct___darwin_i386_exception_state;
pub const _STRUCT_X86_DEBUG_STATE32 = struct___darwin_x86_debug_state32;
pub const _STRUCT_X86_INSTRUCTION_STATE = struct___x86_instruction_state;
pub const _X86_INSTRUCTION_STATE_MAX_INSN_BYTES = (@as(c_int, 2448) - @as(c_int, 64)) - @as(c_int, 4);
pub const _X86_INSTRUCTION_STATE_CACHELINE_SIZE = @as(c_int, 64);
pub const _STRUCT_LAST_BRANCH_RECORD = struct___last_branch_record;
pub const _STRUCT_LAST_BRANCH_STATE = struct___last_branch_state;
pub const __LASTBRANCH_MAX = @as(c_int, 32);
pub const _STRUCT_X86_PAGEIN_STATE = struct___x86_pagein_state;
pub const _STRUCT_X86_THREAD_STATE64 = struct___darwin_x86_thread_state64;
pub const _STRUCT_X86_THREAD_FULL_STATE64 = struct___darwin_x86_thread_full_state64;
pub const _STRUCT_X86_f32_STATE64 = struct___darwin_x86_f32_state64;
pub const _STRUCT_X86_AVX_STATE64 = struct___darwin_x86_avx_state64;
pub const _STRUCT_X86_AVX512_STATE64 = struct___darwin_x86_avx512_state64;
pub const _STRUCT_X86_EXCEPTION_STATE64 = struct___darwin_x86_exception_state64;
pub const _STRUCT_X86_DEBUG_STATE64 = struct___darwin_x86_debug_state64;
pub const _STRUCT_X86_CPMU_STATE64 = struct___darwin_x86_cpmu_state64;
pub const _STRUCT_MCONTEXT32 = struct___darwin_mcontext32;
pub const _STRUCT_MCONTEXT_AVX32 = struct___darwin_mcontext_avx32;
pub const _STRUCT_MCONTEXT_AVX512_32 = struct___darwin_mcontext_avx512_32;
pub const _STRUCT_MCONTEXT64 = struct___darwin_mcontext64;
pub const _STRUCT_MCONTEXT64_FULL = struct___darwin_mcontext64_full;
pub const _STRUCT_MCONTEXT_AVX64 = struct___darwin_mcontext_avx64;
pub const _STRUCT_MCONTEXT_AVX64_FULL = struct___darwin_mcontext_avx64_full;
pub const _STRUCT_MCONTEXT_AVX512_64 = struct___darwin_mcontext_avx512_64;
pub const _STRUCT_MCONTEXT_AVX512_64_FULL = struct___darwin_mcontext_avx512_64_full;
pub const _MCONTEXT_T = "";
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const _PTHREAD_ATTR_T = "";
pub const _STRUCT_SIGALTSTACK = struct___darwin_sigaltstack;
pub const _STRUCT_UCONTEXT = struct___darwin_ucontext;
pub const _SIGSET_T = "";
pub const _UID_T = "";
pub const SIGEV_NONE = @as(c_int, 0);
pub const SIGEV_SIGNAL = @as(c_int, 1);
pub const SIGEV_THREAD = @as(c_int, 3);
pub const ILL_NOOP = @as(c_int, 0);
pub const ILL_ILLOPC = @as(c_int, 1);
pub const ILL_ILLTRP = @as(c_int, 2);
pub const ILL_PRVOPC = @as(c_int, 3);
pub const ILL_ILLOPN = @as(c_int, 4);
pub const ILL_ILLADR = @as(c_int, 5);
pub const ILL_PRVREG = @as(c_int, 6);
pub const ILL_COPROC = @as(c_int, 7);
pub const ILL_BADSTK = @as(c_int, 8);
pub const FPE_NOOP = @as(c_int, 0);
pub const FPE_FLTDIV = @as(c_int, 1);
pub const FPE_FLTOVF = @as(c_int, 2);
pub const FPE_FLTUND = @as(c_int, 3);
pub const FPE_FLTRES = @as(c_int, 4);
pub const FPE_FLTINV = @as(c_int, 5);
pub const FPE_FLTSUB = @as(c_int, 6);
pub const FPE_INTDIV = @as(c_int, 7);
pub const FPE_INTOVF = @as(c_int, 8);
pub const SEGV_NOOP = @as(c_int, 0);
pub const SEGV_MAPERR = @as(c_int, 1);
pub const SEGV_ACCERR = @as(c_int, 2);
pub const BUS_NOOP = @as(c_int, 0);
pub const BUS_ADRALN = @as(c_int, 1);
pub const BUS_ADRERR = @as(c_int, 2);
pub const BUS_OBJERR = @as(c_int, 3);
pub const TRAP_BRKPT = @as(c_int, 1);
pub const TRAP_TRACE = @as(c_int, 2);
pub const CLD_NOOP = @as(c_int, 0);
pub const CLD_EXITED = @as(c_int, 1);
pub const CLD_KILLED = @as(c_int, 2);
pub const CLD_DUMPED = @as(c_int, 3);
pub const CLD_TRAPPED = @as(c_int, 4);
pub const CLD_STOPPED = @as(c_int, 5);
pub const CLD_CONTINUED = @as(c_int, 6);
pub const POLL_IN = @as(c_int, 1);
pub const POLL_OUT = @as(c_int, 2);
pub const POLL_MSG = @as(c_int, 3);
pub const POLL_ERR = @as(c_int, 4);
pub const POLL_PRI = @as(c_int, 5);
pub const POLL_HUP = @as(c_int, 6);
pub const sa_handler = __sigaction_u.__sa_handler;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const SA_ONSTACK = @as(c_int, 0x0001);
pub const SA_RESTART = @as(c_int, 0x0002);
pub const SA_RESETHAND = @as(c_int, 0x0004);
pub const SA_NOCLDSTOP = @as(c_int, 0x0008);
pub const SA_NODEFER = @as(c_int, 0x0010);
pub const SA_NOCLDWAIT = @as(c_int, 0x0020);
pub const SA_SIGINFO = @as(c_int, 0x0040);
pub const SA_USERTRAMP = @as(c_int, 0x0100);
pub const SA_64REGSET = @as(c_int, 0x0200);
pub const SA_USERSPACE_MASK = (((((SA_ONSTACK | SA_RESTART) | SA_RESETHAND) | SA_NOCLDSTOP) | SA_NODEFER) | SA_NOCLDWAIT) | SA_SIGINFO;
pub const SIG_BLOCK = @as(c_int, 1);
pub const SIG_UNBLOCK = @as(c_int, 2);
pub const SIG_SETMASK = @as(c_int, 3);
pub const SI_USER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001, .hexadecimal);
pub const SI_QUEUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10002, .hexadecimal);
pub const SI_TIMER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10003, .hexadecimal);
pub const SI_ASYNCIO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004, .hexadecimal);
pub const SI_MESGQ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10005, .hexadecimal);
pub const SS_ONSTACK = @as(c_int, 0x0001);
pub const SS_DISABLE = @as(c_int, 0x0004);
pub const MINSIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const SV_ONSTACK = SA_ONSTACK;
pub const SV_INTERRUPT = SA_RESTART;
pub const SV_RESETHAND = SA_RESETHAND;
pub const SV_NODEFER = SA_NODEFER;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const SV_SIGINFO = SA_SIGINFO;
pub inline fn sigmask(m: anytype) @TypeOf(@as(c_int, 1) << (m - @as(c_int, 1))) fn {
    return @as(c_int, 1) << (m - @as(c_int, 1));
}
pub const BADSIG = SIG_ERR;
pub const _SYS_RESOURCE_H_ = "";
pub const _STRUCT_TIMEVAL = struct_timeval;
pub const PRIO_PROCESS = @as(c_int, 0);
pub const PRIO_PGRP = @as(c_int, 1);
pub const PRIO_USER = @as(c_int, 2);
pub const PRIO_DARWIN_THREAD = @as(c_int, 3);
pub const PRIO_DARWIN_PROCESS = @as(c_int, 4);
pub const PRIO_MIN = -@as(c_int, 20);
pub const PRIO_MAX = @as(c_int, 20);
pub const PRIO_DARWIN_BG = @as(c_int, 0x1000);
pub const PRIO_DARWIN_NONUI = @as(c_int, 0x1001);
pub const RUSAGE_SELF = @as(c_int, 0);
pub const RUSAGE_CHILDREN = -@as(c_int, 1);
pub const RUSAGE_INFO_V0 = @as(c_int, 0);
pub const RUSAGE_INFO_V1 = @as(c_int, 1);
pub const RUSAGE_INFO_V2 = @as(c_int, 2);
pub const RUSAGE_INFO_V3 = @as(c_int, 3);
pub const RUSAGE_INFO_V4 = @as(c_int, 4);
pub const RUSAGE_INFO_V5 = @as(c_int, 5);
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V5;
pub const RU_PROC_RUNS_RESLIDE = @as(c_int, 0x00000001);
pub const RLIM_INFINITY = (@import("std").zig.c_translation.cast(__uint64_t, @as(c_int, 1)) << @as(c_int, 63)) - @as(c_int, 1);
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub const RLIMIT_CPU = @as(c_int, 0);
pub const RLIMIT_FSIZE = @as(c_int, 1);
pub const RLIMIT_DATA = @as(c_int, 2);
pub const RLIMIT_STACK = @as(c_int, 3);
pub const RLIMIT_CORE = @as(c_int, 4);
pub const RLIMIT_AS = @as(c_int, 5);
pub const RLIMIT_RSS = RLIMIT_AS;
pub const RLIMIT_MEMLOCK = @as(c_int, 6);
pub const RLIMIT_NPROC = @as(c_int, 7);
pub const RLIMIT_NOFILE = @as(c_int, 8);
pub const RLIM_NLIMITS = @as(c_int, 9);
pub const _RLIMIT_POSIX_FLAG = @as(c_int, 0x1000);
pub const RLIMIT_WAKEUPS_MONITOR = @as(c_int, 0x1);
pub const RLIMIT_CPU_USAGE_MONITOR = @as(c_int, 0x2);
pub const RLIMIT_THREAD_CPULIMITS = @as(c_int, 0x3);
pub const RLIMIT_FOOTPRINT_INTERVAL = @as(c_int, 0x4);
pub const WAKEMON_ENABLE = @as(c_int, 0x01);
pub const WAKEMON_DISABLE = @as(c_int, 0x02);
pub const WAKEMON_GET_PARAMS = @as(c_int, 0x04);
pub const WAKEMON_SET_DEFAULTS = @as(c_int, 0x08);
pub const WAKEMON_MAKE_FATAL = @as(c_int, 0x10);
pub const CPUMON_MAKE_FATAL = @as(c_int, 0x1000);
pub const FOOTPRINT_INTERVAL_RESET = @as(c_int, 0x1);
pub const IOPOL_TYPE_DISK = @as(c_int, 0);
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = @as(c_int, 2);
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = @as(c_int, 3);
pub const IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = @as(c_int, 4);
pub const IOPOL_TYPE_VFS_TRIGGER_RESOLVE = @as(c_int, 5);
pub const IOPOL_TYPE_VFS_IGNORE_CONTENT_PROTECTION = @as(c_int, 6);
pub const IOPOL_TYPE_VFS_IGNORE_PERMISSIONS = @as(c_int, 7);
pub const IOPOL_TYPE_VFS_SKIP_MTIME_UPDATE = @as(c_int, 8);
pub const IOPOL_TYPE_VFS_ALLOW_LOW_SPACE_WRITES = @as(c_int, 9);
pub const IOPOL_SCOPE_PROCESS = @as(c_int, 0);
pub const IOPOL_SCOPE_THREAD = @as(c_int, 1);
pub const IOPOL_SCOPE_DARWIN_BG = @as(c_int, 2);
pub const IOPOL_DEFAULT = @as(c_int, 0);
pub const IOPOL_IMPORTANT = @as(c_int, 1);
pub const IOPOL_PASSIVE = @as(c_int, 2);
pub const IOPOL_THROTTLE = @as(c_int, 3);
pub const IOPOL_UTILITY = @as(c_int, 4);
pub const IOPOL_STANDARD = @as(c_int, 5);
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const IOPOL_NORMAL = IOPOL_IMPORTANT;
pub const IOPOL_ATIME_UPDATES_DEFAULT = @as(c_int, 0);
pub const IOPOL_ATIME_UPDATES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = @as(c_int, 0);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = @as(c_int, 2);
pub const IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = @as(c_int, 1);
pub const IOPOL_VFS_TRIGGER_RESOLVE_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_TRIGGER_RESOLVE_OFF = @as(c_int, 1);
pub const IOPOL_VFS_CONTENT_PROTECTION_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_CONTENT_PROTECTION_IGNORE = @as(c_int, 1);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_OFF = @as(c_int, 0);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_ON = @as(c_int, 1);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_OFF = @as(c_int, 0);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_ON = @as(c_int, 1);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_OFF = @as(c_int, 0);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_ON = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 0x00000001);
pub const WUNTRACED = @as(c_int, 0x00000002);
pub inline fn _W_INT(w: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]c_int, &w).*) fn {
    return @import("std").zig.c_translation.cast([*c]c_int, &w).*;
}
pub const WCOREFLAG = @as(c_int, 0o200);
pub inline fn _WSTATUS(x: anytype) @TypeOf(_W_INT(x) & @as(c_int, 0o177)) fn {
    return _W_INT(x) & @as(c_int, 0o177);
}
pub const _WSTOPPED = @as(c_int, 0o177);
pub inline fn WEXITSTATUS(x: anytype) @TypeOf((_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff)) fn {
    return (_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff);
}
pub inline fn WSTOPSIG(x: anytype) @TypeOf(_W_INT(x) >> @as(c_int, 8)) fn {
    return _W_INT(x) >> @as(c_int, 8);
}
pub inline fn WIFCONTINUED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13))) fn {
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13));
}
pub inline fn WIFSTOPPED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13))) fn {
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13));
}
pub inline fn WIFEXITED(x: anytype) @TypeOf(_WSTATUS(x) == @as(c_int, 0)) fn {
    return _WSTATUS(x) == @as(c_int, 0);
}
pub inline fn WIFSIGNALED(x: anytype) @TypeOf((_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0))) fn {
    return (_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0));
}
pub inline fn WTERMSIG(x: anytype) @TypeOf(_WSTATUS(x)) fn {
    return _WSTATUS(x);
}
pub inline fn WCOREDUMP(x: anytype) @TypeOf(_W_INT(x) & WCOREFLAG) fn {
    return _W_INT(x) & WCOREFLAG;
}
pub inline fn W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) fn {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | _WSTOPPED) fn {
    return (sig << @as(c_int, 8)) | _WSTOPPED;
}
pub const WEXITED = @as(c_int, 0x00000004);
pub const WSTOPPED = @as(c_int, 0x00000008);
pub const WCONTINUED = @as(c_int, 0x00000010);
pub const WNOWAIT = @as(c_int, 0x00000020);
pub const WAIT_ANY = -@as(c_int, 1);
pub const WAIT_MYPGRP = @as(c_int, 0);
pub const _BSD_MACHINE_ENDIAN_H_ = "";
pub const _I386__ENDIAN_H_ = "";
pub const _QUAD_HIGHWORD = @as(c_int, 1);
pub const _QUAD_LOWWORD = @as(c_int, 0);
pub const __DARWIN_LITTLE_ENDIAN = @as(c_int, 1234);
pub const __DARWIN_BIG_ENDIAN = @as(c_int, 4321);
pub const __DARWIN_PDP_ENDIAN = @as(c_int, 3412);
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub const _SYS__ENDIAN_H_ = "";
pub const _OS__OSBYTEORDER_H = "";
pub inline fn __DARWIN_OSSwapConstInt16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0xff00)) >> @as(c_int, 8)) | ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0x00ff)) << @as(c_int, 8)));
}
pub inline fn __DARWIN_OSSwapConstInt32(x: anytype) __uint32_t {
    return @import("std").zig.c_translation.cast(__uint32_t, ((((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x000000ff)) << @as(c_int, 24)));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: anytype) __uint64_t {
    return @import("std").zig.c_translation.cast(__uint64_t, ((((((((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56)));
}
pub const _OS__OSBYTEORDERI386_H = "";
pub inline fn ntohs(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) fn {
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn htons(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) fn {
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn ntohl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) fn {
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn htonl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) fn {
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn ntohll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) fn {
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn htonll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) fn {
    return __DARWIN_OSSwapInt64(x);
}
pub const _ALLOCA_H_ = "";
pub const _CT_RUNE_T = "";
pub const _RUNE_T = "";
pub const _WCHAR_T = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const MB_CUR_MAX = __mb_cur_max;
pub const _MALLOC_UNDERSCORE_MALLOC_H_ = "";
pub const _DEV_T = "";
pub const _MODE_T = "";
pub const _STRING_H_ = "";
pub const _RSIZE_T = "";
pub const _ERRNO_T = "";
pub const _STRINGS_H_ = "";
pub const _SECURE__STRINGS_H_ = "";
pub const _SECURE__STRING_H_ = "";
pub const __HAS_FIXED_CHK_PROTOTYPES = @as(c_int, 1);
pub inline fn bit(x: anytype) @TypeOf(@as(c_int, 1) << x) fn {
    return @as(c_int, 1) << x;
}
pub inline fn max(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) fn {
    return if (a > b) a else b;
}
pub const @"unreachable" = assert(@"false");
pub const APP_TITLE = "Roguelike";
pub const APP_WIDTH = VIRTUAL_W * VIRTUAL_PX;
pub const APP_HEIGHT = VIRTUAL_H * VIRTUAL_PX;
pub const VIRTUAL_W = TILE_SIZE_X * TILES_X;
pub const VIRTUAL_H = TILE_SIZE_Y * TILES_Y;
pub const VIRTUAL_PX = @as(c_int, 1);
pub const TILE_SIZE_X = @as(c_int, 24);
pub const TILE_SIZE_Y = @as(c_int, 24);
pub const TILE_SIZE_X_HALF = TILE_SIZE_X / @as(c_int, 2);
pub const TILE_SIZE_Y_HALF = TILE_SIZE_Y / @as(c_int, 2);
pub const MID_TILE = @import("std").mem.zeroInit(v2, .{ TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF });
pub const TILES_X = @as(c_int, 20);
pub const TILES_Y = @as(c_int, 20);
pub const TILE_PAD = @as(c_int, 6);
pub const FONT_SIZE = @as(c_int, 24);
pub const FONT_SIZE_HIRES = FONT_SIZE * @as(c_int, 2);
pub const PLAYER_DIR_DELAY = @as(f32, 0.1);
pub const DT = @as(f32, 1.0) / @as(f32, 60.0);
pub const OFFSET_SPEED = @as(c_int, 30) * DT;
pub const STEP_HEIGHT = @as(f32, 0.1);
pub const MAX_VIEW_DISTANCE = @as(c_int, 2);
pub const VIEW_GRID_CENTER = MAX_VIEW_DISTANCE;
pub const VIEW_GRID_ACROSS = (MAX_VIEW_DISTANCE * @as(c_int, 2)) + @as(c_int, 1);
pub const Tile_Pos = int2;
pub const Ent = c_int;
pub const MAX_ENTS = @as(c_int, 1024);
pub const DIR_N = @import("std").mem.zeroInit(Tile_Pos, .{ @as(c_int, 0), -@as(c_int, 1) });
pub const DIR_S = @import("std").mem.zeroInit(Tile_Pos, .{ @as(c_int, 0), @as(c_int, 1) });
pub const DIR_E = @import("std").mem.zeroInit(Tile_Pos, .{ @as(c_int, 1), @as(c_int, 0) });
pub const DIR_W = @import("std").mem.zeroInit(Tile_Pos, .{ -@as(c_int, 1), @as(c_int, 0) });
pub const DIR_NW = @import("std").mem.zeroInit(Tile_Pos, .{ -@as(c_int, 1), -@as(c_int, 1) });
pub const DIR_NE = @import("std").mem.zeroInit(Tile_Pos, .{ @as(c_int, 1), -@as(c_int, 1) });
pub const DIR_SW = @import("std").mem.zeroInit(Tile_Pos, .{ -@as(c_int, 1), @as(c_int, 1) });
pub const DIR_SE = @import("std").mem.zeroInit(Tile_Pos, .{ @as(c_int, 1), @as(c_int, 1) });
pub const RL_BG = @import("std").mem.zeroInit(Color, .{ @as(c_int, 46), @as(c_int, 52), @as(c_int, 64), @as(c_int, 255) });
pub const RL_WHITE = @import("std").mem.zeroInit(Color, .{ @as(c_int, 216), @as(c_int, 222), @as(c_int, 234), @as(c_int, 255) });
pub const RL_BLACK = @import("std").mem.zeroInit(Color, .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 255) });
pub const RL_BLUE = @import("std").mem.zeroInit(Color, .{ @as(c_int, 129), @as(c_int, 161), @as(c_int, 193), @as(c_int, 255) });
pub const RL_MAUVE = @import("std").mem.zeroInit(Color, .{ @as(c_int, 180), @as(c_int, 142), @as(c_int, 173), @as(c_int, 255) });
pub const RL_YELLOW = @import("std").mem.zeroInit(Color, .{ @as(c_int, 235), @as(c_int, 203), @as(c_int, 139), @as(c_int, 255) });
pub const RL_BRIGHT_BLUE = @import("std").mem.zeroInit(Color, .{ @as(c_int, 136), @as(c_int, 192), @as(c_int, 208), @as(c_int, 255) });
pub const RL_RED = @import("std").mem.zeroInit(Color, .{ @as(c_int, 191), @as(c_int, 97), @as(c_int, 106), @as(c_int, 255) });
pub const RL_GRAY = @import("std").mem.zeroInit(Color, .{ @as(c_int, 59), @as(c_int, 66), @as(c_int, 82), @as(c_int, 255) });
pub const RL_BROWN = @import("std").mem.zeroInit(Color, .{ @as(c_int, 209), @as(c_int, 135), @as(c_int, 112), @as(c_int, 255) });
pub const RL_GREEN = @import("std").mem.zeroInit(Color, .{ @as(c_int, 163), @as(c_int, 190), @as(c_int, 140), @as(c_int, 255) });
pub const WALL_COLOR = GRAY;
pub const WALL_COLOR_VISIBLE = WHITE;
pub const FLOOR_DOT_COLOR = @import("std").mem.zeroInit(Color, .{ @as(c_int, 226), @as(c_int, 233), @as(c_int, 255), @as(c_int, 40) });
pub const DOT_SIZE = @import("std").mem.zeroInit(Vector2, .{ TILE_SIZE_X / @as(c_int, 4), TILE_SIZE_Y / @as(c_int, 4) });
pub const DOT_OFFSET = @import("std").mem.zeroInit(v2, .{ TILE_SIZE_X_HALF - (DOT_SIZE.x / @as(c_int, 2)), TILE_SIZE_Y_HALF - (DOT_SIZE.y / @as(c_int, 2)) });
pub const INVALID_TILE = @import("std").mem.zeroInit(Quad_Tile, .{
    .row = -@as(c_int, 1),
    .col = -@as(c_int, 1),
});
pub const __va_list_tag = struct___va_list_tag;
pub const __f322 = struct___f322;
pub const __double2 = struct___double2;
pub const exception = struct_exception;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const __darwin_i386_thread_state = struct___darwin_i386_thread_state;
pub const __darwin_fp_control = struct___darwin_fp_control;
pub const __darwin_fp_status = struct___darwin_fp_status;
pub const __darwin_mmst_reg = struct___darwin_mmst_reg;
pub const __darwin_xmm_reg = struct___darwin_xmm_reg;
pub const __darwin_ymm_reg = struct___darwin_ymm_reg;
pub const __darwin_zmm_reg = struct___darwin_zmm_reg;
pub const __darwin_opmask_reg = struct___darwin_opmask_reg;
pub const __darwin_i386_f32_state = struct___darwin_i386_f32_state;
pub const __darwin_i386_avx_state = struct___darwin_i386_avx_state;
pub const __darwin_i386_avx512_state = struct___darwin_i386_avx512_state;
pub const __darwin_i386_exception_state = struct___darwin_i386_exception_state;
pub const __darwin_x86_debug_state32 = struct___darwin_x86_debug_state32;
pub const __x86_instruction_state = struct___x86_instruction_state;
pub const __last_branch_record = struct___last_branch_record;
pub const __last_branch_state = struct___last_branch_state;
pub const __x86_pagein_state = struct___x86_pagein_state;
pub const __darwin_x86_thread_state64 = struct___darwin_x86_thread_state64;
pub const __darwin_x86_thread_full_state64 = struct___darwin_x86_thread_full_state64;
pub const __darwin_x86_f32_state64 = struct___darwin_x86_f32_state64;
pub const __darwin_x86_avx_state64 = struct___darwin_x86_avx_state64;
pub const __darwin_x86_avx512_state64 = struct___darwin_x86_avx512_state64;
pub const __darwin_x86_exception_state64 = struct___darwin_x86_exception_state64;
pub const __darwin_x86_debug_state64 = struct___darwin_x86_debug_state64;
pub const __darwin_x86_cpmu_state64 = struct___darwin_x86_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext_avx32 = struct___darwin_mcontext_avx32;
pub const __darwin_mcontext_avx512_32 = struct___darwin_mcontext_avx512_32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_mcontext64_full = struct___darwin_mcontext64_full;
pub const __darwin_mcontext_avx64 = struct___darwin_mcontext_avx64;
pub const __darwin_mcontext_avx64_full = struct___darwin_mcontext_avx64_full;
pub const __darwin_mcontext_avx512_64 = struct___darwin_mcontext_avx512_64;
pub const __darwin_mcontext_avx512_64_full = struct___darwin_mcontext_avx512_64_full;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigaction = struct_sigaction;
pub const sigvec = struct_sigvec;
pub const sigstack = struct_sigstack;
pub const timeval = struct_timeval;
pub const rusage = struct_rusage;
pub const rusage_info_v0 = struct_rusage_info_v0;
pub const rusage_info_v1 = struct_rusage_info_v1;
pub const rusage_info_v2 = struct_rusage_info_v2;
pub const rusage_info_v3 = struct_rusage_info_v3;
pub const rusage_info_v4 = struct_rusage_info_v4;
pub const rusage_info_v5 = struct_rusage_info_v5;
pub const rlimit = struct_rlimit;
pub const proc_rlimit_control_wakeupmon = struct_proc_rlimit_control_wakeupmon;
pub const V2 = struct_V2;
pub const Wall_Open_Dir = enum_Wall_Open_Dir;
pub const Drawable_Symbol = enum_Drawable_Symbol;
pub const Room_Card = struct_Room_Card;
pub const Quad_Row_Iterator_Result = struct_Quad_Row_Iterator_Result;
