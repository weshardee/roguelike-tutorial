package shared

import "vendor:raylib"

//////////////////////////////////////////////////////////////////////////////
// platform api

Vector2 :: raylib.Vector2
Vector3 :: raylib.Vector3
Vector4 :: raylib.Vector4
Quaternion :: raylib.Quaternion
Matrix :: raylib.Matrix
Color :: raylib.Color
Rectangle :: raylib.Rectangle

Image :: raylib.Image
Texture :: raylib.Texture
RenderTexture :: raylib.RenderTexture
PixelFormat:: raylib.PixelFormat
NPatchInfo :: raylib.NPatchInfo
GlyphInfo :: raylib.GlyphInfo
Font :: raylib.Font

Camera :: raylib.Camera
Camera2D :: raylib.Camera2D
Mesh :: raylib.Mesh
Shader :: raylib.Shader
MaterialMap :: raylib.MaterialMap
Material :: raylib.Material
Model :: raylib.Model
Transform :: raylib.Transform
BoneInfo :: raylib.BoneInfo
ModelAnimation :: raylib.ModelAnimation
Ray :: raylib.Ray
RayCollision :: raylib.RayCollision
BoundingBox :: raylib.BoundingBox

Wave :: raylib.Wave
Sound :: raylib.Sound
Music :: raylib.Music
AudioStream :: raylib.AudioStream

VrDeviceInfo :: raylib.VrDeviceInfo
VrStereoConfig :: raylib.VrStereoConfig

Texture2D :: raylib.Texture2D
Camera3D :: raylib.Camera3D
RenderTexture2D :: raylib.RenderTexture2D
TextureCubemap :: raylib.TextureCubemap
BlendMode :: raylib.BlendMode
GamepadButton :: raylib.GamepadButton
MouseButton :: raylib.MouseButton
KeyboardKey :: raylib.KeyboardKey
ConfigFlags :: raylib.ConfigFlags
ShaderLocationIndex :: raylib.ShaderLocationIndex
ShaderUniformDataType :: raylib.ShaderUniformDataType
TraceLogLevel :: raylib.TraceLogLevel
GamepadAxis :: raylib.GamepadAxis
MouseCursor :: raylib.MouseCursor
Gestures :: raylib.Gestures
Gesture :: raylib.Gesture
CameraMode :: raylib.CameraMode
MaterialMapIndex :: raylib.MaterialMapIndex
TextureFilter :: raylib.TextureFilter
CubemapLayout :: raylib.CubemapLayout
TextureWrap :: raylib.TextureWrap
FontType :: raylib.FontType

get_api :: #force_inline proc() -> ^Platform_API {
	return &get_ctx().api
}

Platform_API :: struct {
	// Window-related functions
	IsWindowReady: proc() -> bool,
	IsWindowFullscreen: proc() -> bool,
	IsWindowHidden: proc() -> bool,
	IsWindowMinimized: proc() -> bool,
	IsWindowMaximized: proc() -> bool,
	IsWindowFocused: proc() -> bool,
	IsWindowResized: proc() -> bool,
	IsWindowState: proc(flag: ConfigFlags) -> bool,
	SetWindowState: proc(flags: ConfigFlags),
	ClearWindowState: proc(flags: ConfigFlags),
	ToggleFullscreen: proc(),
	MaximizeWindow: proc(),
	MinimizeWindow: proc(),
	RestoreWindow: proc(),
	SetWindowIcon: proc(image: Image),
	SetWindowTitle: proc(title: string),
	SetWindowPosition: proc(x: int, y: int),
	SetWindowMonitor: proc(monitor: int),
	SetWindowMinSize: proc(width: int, height: int),
	SetWindowSize: proc(width: int, height: int),
	GetWindowHandle: proc() -> rawptr,
	GetScreenWidth: proc() -> int,
	GetScreenHeight: proc() -> int,
	GetMonitorCount: proc() -> int,
	GetCurrentMonitor: proc() -> int,
	GetMonitorPosition: proc(monitor: int) -> Vector2,
	GetMonitorWidth: proc(monitor: int) -> int,
	GetMonitorHeight: proc(monitor: int) -> int,
	GetMonitorPhysicalWidth: proc(monitor: int) -> int,
	GetMonitorPhysicalHeight: proc(monitor: int) -> int,
	GetMonitorRefreshRate: proc(monitor: int) -> int,
	GetWindowPosition: proc() -> Vector2,
	GetWindowScaleDPI: proc() -> Vector2,
	GetMonitorName: proc(monitor: int) -> string,
	SetClipboardText: proc(text: string),
	GetClipboardText: proc() -> string,

	// Cursor-related functions
	ShowCursor: proc(),
	HideCursor: proc(),
	IsCursorHidden: proc() -> bool,
	EnableCursor: proc(),
	DisableCursor: proc(),
	IsCursorOnScreen: proc() -> bool,

	// Drawing-related functions
	ClearBackground: proc(color: Color),
	BeginDrawing: proc(),
	EndDrawing: proc(),
	BeginMode2D: proc(camera: Camera2D),
	EndMode2D: proc(),
	BeginMode3D: proc(camera: Camera3D),
	EndMode3D: proc(),
	BeginTextureMode: proc(target: RenderTexture2D),
	EndTextureMode: proc(),
	BeginShaderMode: proc(shader: Shader),
	EndShaderMode: proc(),
	BeginBlendMode: proc(mode: BlendMode),
	EndBlendMode: proc(),
	BeginScissorMode: proc(x: int, y: int, width: int, height: int),
	EndScissorMode: proc(),
	BeginVrStereoMode: proc(config: VrStereoConfig),
	EndVrStereoMode: proc(),

	// VR stereo config functions for VR simulator
	LoadVrStereoConfig: proc(device: VrDeviceInfo) -> VrStereoConfig,
	UnloadVrStereoConfig: proc(config: VrStereoConfig),

	// Shader management functions
	// NOTE: Shader functionality is not available on OpenGL 1.1
	LoadShader: proc(vsFileName: string, fsFileName: string) -> Shader,
	LoadShaderFromMemory: proc(vsCode: string, fsCode: string) -> Shader,
	GetShaderLocation: proc(shader: Shader, uniformName: string) -> int,
	GetShaderLocationAttrib: proc(shader: Shader, attribName: string) -> int,
	SetShaderValue: proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType),
	SetShaderValueV: proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType, count: int),
	SetShaderValueMatrix: proc(shader: Shader, locIndex: ShaderLocationIndex, mat: Matrix),
	SetShaderValueTexture: proc(shader: Shader, locIndex: ShaderLocationIndex, texture: Texture2D),
	UnloadShader: proc(shader: Shader),

	// Screen-space-related functions
	GetMouseRay: proc(mousePosition: Vector2, camera: Camera) -> Ray,
	GetCameraMatrix: proc(camera: Camera) -> Matrix,
	GetCameraMatrix2D: proc(camera: Camera2D) -> Matrix,
	GetWorldToScreen: proc(position: Vector3, camera: Camera) -> Vector2,
	GetWorldToScreenEx: proc(position: Vector3, camera: Camera, width: int, height: int) -> Vector2,
	GetWorldToScreen2D: proc(position: Vector2, camera: Camera2D) -> Vector2,
	GetScreenToWorld2D: proc(position: Vector2, camera: Camera2D) -> Vector2,

	// Timing-related functions
	SetTargetFPS: proc(fps: int),
	GetFPS: proc() -> int,
	GetFrameTime: proc() -> f32,
	GetTime: proc() -> f64,

	// Misc. functions
	GetRandomValue: proc(min: int, max: int) -> int,
	SetRandomSeed: proc(seed: u32),
	TakeScreenshot: proc(fileName: string),
	SetConfigFlags: proc(flags: ConfigFlags),

	TraceLog: proc(logLevel: TraceLogLevel, text: string, args: ..any),
	SetTraceLogLevel: proc(logLevel: TraceLogLevel),

	// Set custom callbacks
	// WARNING: Callbacks setup is intended for advance users
	// SetTraceLogCallback: proc(callback: TraceLogCallback),
	// SetLoadFileDataCallback: proc(callback: LoadFileDataCallback),
	// SetSaveFileDataCallback: proc(callback: SaveFileDataCallback),
	// SetLoadFileTextCallback: proc(callback: LoadFileTextCallback),
	// SetSaveFileTextCallback: proc(callback: SaveFileTextCallback),

	// Files management functions
	LoadFileData: proc(fileName: string) -> []u8,
	UnloadFileData: proc(data: []u8),
	SaveFileData: proc(fileName: string, data: []byte) -> bool,
	LoadFileText: proc(fileName: string) -> string,
	UnloadFileText: proc(text: string),
	SaveFileText: proc(fileName: string, text: string) -> bool,
	FileExists: proc(fileName: string) -> bool,
	DirectoryExists: proc(dirPath: string) -> bool,
	IsFileExtension: proc(fileName: string, ext: string) -> bool,
	GetFileExtension: proc(fileName: string) -> string,
	GetFileName: proc(filePath: string) -> string,
	GetFileNameWithoutExt: proc(filePath: string) -> string,
	GetDirectoryPath: proc(filePath: string) -> string,
	GetPrevDirectoryPath: proc(dirPath: string) -> string,
	GetWorkingDirectory: proc() -> string,
	GetDirectoryFiles: proc(dirPath: string) -> []cstring,
	ClearDirectoryFiles: proc(),
	ChangeDirectory: proc(dir: string) -> bool,
	IsFileDropped: proc() -> bool,
	// char **LoadDroppedFiles(count: [^]int)                                    
	UnloadDroppedFiles: proc(),
	GetFileModTime: proc(fileName: string) -> i64,

	// Compression/Encoding functionality
	CompressData: proc(data: []u8) -> []u8,
	DecompressData: proc(compData: []u8) -> []u8,
	EncodeDataBase64: proc(data: []u8) -> []u8,
	DecodeDataBase64: proc(data: []u8) -> []u8,

	// Persistent storage management
	SaveStorageValue: proc(position: u32, value: int) -> bool,
	LoadStorageValue: proc(position: u32) -> int,

	// Misc.
	OpenURL: proc(url: string),

	// Input-related functions: keyboard
	IsKeyPressed: proc(key: KeyboardKey) -> bool,
	IsKeyDown: proc(key: KeyboardKey) -> bool,
	IsKeyReleased: proc(key: KeyboardKey) -> bool,
	IsKeyUp: proc(key: KeyboardKey) -> bool,
	SetExitKey: proc(key: KeyboardKey),
	GetKeyPressed: proc() -> KeyboardKey,
	GetCharPressed: proc() -> rune,

	// Input-related functions: gamepads
	IsGamepadAvailable: proc(gamepad: int) -> bool,
	GetGamepadName: proc(gamepad: int) -> string,
	IsGamepadButtonPressed: proc(gamepad: int, button: GamepadButton) -> bool,
	IsGamepadButtonDown: proc(gamepad: int, button: GamepadButton) -> bool,
	IsGamepadButtonReleased: proc(gamepad: int, button: GamepadButton) -> bool,
	IsGamepadButtonUp: proc(gamepad: int, button: GamepadButton) -> bool,
	GetGamepadButtonPressed: proc() -> int,
	GetGamepadAxisCount: proc(gamepad: int) -> int,
	GetGamepadAxisMovement: proc(gamepad: int, axis: GamepadAxis) -> f32,
	SetGamepadMappings: proc(mappings: string) -> int,

	// Input-related functions: mouse
	IsMouseButtonPressed: proc(button: MouseButton) -> bool,
	IsMouseButtonDown: proc(button: MouseButton) -> bool,
	IsMouseButtonReleased: proc(button: MouseButton) -> bool,
	IsMouseButtonUp: proc(button: MouseButton) -> bool,
	GetMouseX: proc() -> int,
	GetMouseY: proc() -> int,
	GetMousePosition: proc() -> Vector2,
	GetMouseDelta: proc() -> Vector2,
	SetMousePosition: proc(x: int, y: int),
	SetMouseOffset: proc(offsetX: int, offsetY: int),
	SetMouseScale: proc(scaleX: f32, scaleY: f32),
	GetMouseWheelMove: proc() -> f32,
	SetMouseCursor: proc(cursor: MouseCursor),

	// Input-related functions: touch
	GetTouchX: proc() -> int,
	GetTouchY: proc() -> int,
	GetTouchPosition: proc(index: int) -> Vector2,
	GetTouchPointId: proc(index: int) -> int,
	GetTouchPointCount: proc() -> int,

	// Gestures and Touch Handling Functions (Module: rgestures)
	SetGesturesEnabled: proc(flags: Gestures),
	IsGestureDetected: proc(gesture: Gesture) -> bool,
	GetGestureDetected: proc() -> Gesture,
	GetGestureHoldDuration: proc() -> f32,
	GetGestureDragVector: proc() -> Vector2,
	GetGestureDragAngle: proc() -> f32,
	GetGesturePinchVector: proc() -> Vector2,
	GetGesturePinchAngle: proc() -> f32,

	// Camera System Functions (Module: rcamera)
	SetCameraMode: proc(camera: Camera, mode: CameraMode),
	UpdateCamera: proc(camera: ^Camera),

	SetCameraPanControl: proc(keyPan: KeyboardKey),
	SetCameraAltControl: proc(keyAlt: KeyboardKey),
	SetCameraSmoothZoomControl: proc(keySmoothZoom: KeyboardKey),
	SetCameraMoveControls: proc(keyFront: KeyboardKey, keyBack: KeyboardKey, keyRight: KeyboardKey, keyLeft: KeyboardKey, keyUp: KeyboardKey, keyDown: KeyboardKey),

	// module: shapes

	// Set texture and rectangle to be used on shapes drawing
	// NOTE: It can be useful when using basic shapes and one font: single,
	// defining a font char white rectangle would allow drawing everything in a single draw call
	SetShapesTexture: proc(texture: Texture2D, source: Rectangle),

	// Basic shapes drawing functions
	DrawPixel: proc(posX: int, posY: int, color: Color),
	DrawPixelV: proc(position: Vector2, color: Color),
	DrawLine: proc(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color),
	DrawLineV: proc(startPos: Vector2, endPos: Vector2, color: Color),
	DrawLineEx: proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color),
	DrawLineBezier: proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color),
	DrawLineBezierQuad: proc(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color),
	DrawLineBezierCubic: proc(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color),
	DrawLineStrip: proc(points: []Vector2, color: Color),
	DrawCircle: proc(centerX: int, centerY: int, radius: f32, color: Color),
	DrawCircleSector: proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color),
	DrawCircleSectorLines: proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color),
	DrawCircleGradient: proc(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color),
	DrawCircleV: proc(center: Vector2, radius: f32, color: Color),
	DrawCircleLines: proc(centerX: int, centerY: int, radius: f32, color: Color),
	DrawEllipse: proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color),
	DrawEllipseLines: proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color),
	DrawRing: proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color),
	DrawRingLines: proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color),
	DrawRectangle: proc(posX: int, posY: int, width: int, height: int, color: Color),
	DrawRectangleV: proc(position: Vector2, size: Vector2, color: Color),
	DrawRectangleRec: proc(rec: Rectangle, color: Color),
	DrawRectanglePro: proc(rec: Rectangle, origin: Vector2, rotation: f32, color: Color),
	DrawRectangleGradientV: proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color),
	DrawRectangleGradientH: proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color),
	DrawRectangleGradientEx: proc(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color),
	DrawRectangleLines: proc(posX: int, posY: int, width: int, height: int, color: Color),
	DrawRectangleLinesEx: proc(rec: Rectangle, lineThick: f32, color: Color),
	DrawRectangleRounded: proc(rec: Rectangle, roundness: f32, segments: int, color: Color),
	DrawRectangleRoundedLines: proc(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color),
	DrawTriangle: proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color),
	DrawTriangleLines: proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color),
	DrawTriangleFan: proc(points: []Vector2, color: Color),
	DrawTriangleStrip: proc(points: []Vector2, color: Color),
	DrawPoly: proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color),
	DrawPolyLines: proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color),
	DrawPolyLinesEx: proc(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color),

	// Basic shapes collision detection functions
	CheckCollisionRecs: proc(rec1: Rectangle, rec2: Rectangle) -> bool,
	CheckCollisionCircles: proc(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) -> bool,
	CheckCollisionCircleRec: proc(center: Vector2, radius: f32, rec: Rectangle) -> bool,
	CheckCollisionPointRec: proc(point: Vector2, rec: Rectangle) -> bool,
	CheckCollisionPointCircle: proc(point: Vector2, center: Vector2, radius: f32) -> bool,
	CheckCollisionPointTriangle: proc(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) -> bool,
	CheckCollisionLines: proc(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2) -> (Vector2, bool),
	CheckCollisionPointLine: proc(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) -> bool,
	GetCollisionRec: proc(rec1: Rectangle, rec2: Rectangle) -> Rectangle,

	// module: textures

	// Image loading functions
	// NOTE: These functions do not require GPU access
	LoadImage: proc(fileName: string) -> Image,
	LoadImageRaw: proc(fileName: string, width: int, height: int, format: PixelFormat, headerSize: int) -> Image,
	LoadImageAnim: proc(fileName: string) -> (Image, int),
	LoadImageFromMemory: proc(fileType: string, fileData: []u8) -> Image,
	LoadImageFromTexture: proc(texture: Texture2D) -> Image,
	LoadImageFromScreen: proc() -> Image,
	UnloadImage: proc(image: Image),
	ExportImage: proc(image: Image, fileName: string) -> bool,
	ExportImageAsCode: proc(image: Image, fileName: string) -> bool,

	// Image generation functions
	GenImageColor: proc(width: int, height: int, color: Color) -> Image,
	GenImageGradientV: proc(width: int, height: int, top: Color, bottom: Color) -> Image,
	GenImageGradientH: proc(width: int, height: int, left: Color, right: Color) -> Image,
	GenImageGradientRadial: proc(width: int, height: int, density: f32, inner: Color, outer: Color) -> Image,
	GenImageChecked: proc(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) -> Image,
	GenImageWhiteNoise: proc(width: int, height: int, factor: f32) -> Image,
	GenImageCellular: proc(width: int, height: int, tileSize: int) -> Image,

	// Image manipulation functions
	ImageCopy: proc(image: Image) -> Image,
	ImageFromImage: proc(image: Image, rec: Rectangle) -> Image,
	ImageText: proc(text: string, fontSize: int, color: Color) -> Image,
	ImageTextEx: proc(font: Font, text: string, fontSize: f32, spacing: f32, tint: Color) -> Image,
	ImageFormat: proc(img: ^Image, newFormat: PixelFormat),
	ImageToPOT: proc(image: ^Image, fill: Color),
	ImageCrop: proc(image: ^Image, crop: Rectangle),
	ImageAlphaCrop: proc(image: ^Image, threshold: f32),
	ImageAlphaClear: proc(image: ^Image, color: Color, threshold: f32),
	ImageAlphaMask: proc(image: ^Image, alphaMask: Image),
	ImageAlphaPremultiply: proc(image: ^Image),
	ImageResize: proc(image: ^Image, newWidth: int, newHeight: int),
	ImageResizeNN: proc(image: ^Image, newWidth: int,newHeight: int),
	ImageResizeCanvas: proc(image: ^Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color),
	ImageMipmaps: proc(image: ^Image),
	ImageDither: proc(image: ^Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int),
	ImageFlipVertical: proc(image: ^Image),
	ImageFlipHorizontal: proc(image: ^Image),
	ImageRotateCW: proc(image: ^Image),
	ImageRotateCCW: proc(image: ^Image),
	ImageColorTint: proc(image: ^Image, color: Color),
	ImageColorInvert: proc(image: ^Image),
	ImageColorGrayscale: proc(image: ^Image),
	ImageColorContrast: proc(image: ^Image, contrast: f32),
	ImageColorBrightness: proc(image: ^Image, brightness: int),
	ImageColorReplace: proc(image: ^Image, color: Color, replace: Color),
	LoadImageColors: proc(image: Image) -> [^]Color,
	LoadImagePalette: proc(image: Image, maxPaletteSize: int) -> []Color,
	UnloadImageColors: proc(colors: [^]Color),
	UnloadImagePalette: proc(colors: [^]Color),
	GetImageAlphaBorder: proc(image: Image, threshold: f32) -> Rectangle,
	GetImageColor: proc(image: Image, x: int, y: int) -> Color,

	// Image drawing functions
	// NOTE: Image software-rendering functions (CPU)
	ImageClearBackground: proc(dst: ^Image, color: Color),
	ImageDrawPixel: proc(dst: ^Image, posX: int, posY: int, color: Color),
	ImageDrawPixelV: proc(dst: ^Image, position: Vector2, color: Color),
	ImageDrawLine: proc(dst: ^Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color),
	ImageDrawLineV: proc(dst: ^Image, start: Vector2, end: Vector2, color: Color),
	ImageDrawCircle: proc(dst: ^Image, centerX: int, centerY: int, radius: int, color: Color),
	ImageDrawCircleV: proc(dst: ^Image, center: Vector2, radius: int, color: Color),
	ImageDrawRectangle: proc(dst: ^Image, posX: int, posY: int, width: int, height: int, color: Color),
	ImageDrawRectangleV: proc(dst: ^Image, position: Vector2, size: Vector2, color: Color),
	ImageDrawRectangleRec: proc(dst: ^Image, rec: Rectangle, color: Color),
	ImageDrawRectangleLines: proc(dst: ^Image, rec: Rectangle, thick: int, color: Color),
	ImageDraw: proc(dst: ^Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color),
	ImageDrawText: proc(dst: ^Image, text: string, posX: int, posY: int, fontSize: int, color: Color),
	ImageDrawTextEx: proc(dst: ^Image, font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color),

	// Texture loading functions
	// NOTE: These functions require GPU access
	LoadTexture: proc(fileName: cstring) -> Texture2D,
	LoadTextureFromImage: proc(image: Image) -> Texture2D,
	LoadTextureCubemap: proc(image: Image, layout: CubemapLayout) -> TextureCubemap,
	LoadRenderTexture: proc(width: int, height: int) -> RenderTexture2D,
	UnloadTexture: proc(texture: Texture2D),
	UnloadRenderTexture: proc(target: RenderTexture2D),
	UpdateTexture: proc(texture: Texture2D, pixels: rawptr),
	UpdateTextureRec: proc(texture: Texture2D, rec: Rectangle, pixels: rawptr),

	// Texture configuration functions
	GenTextureMipmaps: proc(texture: ^Texture2D),
	SetTextureFilter: proc(texture: Texture2D, filter: TextureFilter),
	SetTextureWrap: proc(texture: Texture2D, wrap: TextureWrap),

	// Texture drawing functions
	DrawTexture: proc(texture: Texture2D, posX: int, posY: int, tint: Color),
	DrawTextureV: proc(texture: Texture2D, position: Vector2, tint: Color),
	DrawTextureEx: proc(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color),
	DrawTextureRec: proc(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color),
	DrawTextureQuad: proc(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color),
	DrawTextureTiled: proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, scale: f32, tint: Color),
	DrawTexturePro: proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color),
	DrawTextureNPatch: proc(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color),
	DrawTexturePoly: proc(texture: Texture2D, center: Vector2, points: [^]Vector2, texcoords: [^]Vector2, pointsCount: int, tint: Color),

	// Color/pixel related functions
	Fade: proc(color: Color, alpha: f32) -> Color,
	ColorToInt: proc(color: Color) -> int,
	ColorNormalize: proc(color: Color) -> Vector4,
	ColorFromNormalized: proc(normalized: Vector4) -> Color,
	ColorToHSV: proc(color: Color) -> Vector3,
	ColorFromHSV: proc(hue: f32, saturation: f32, value: f32) -> Color,
	ColorAlpha: proc(color: Color, alpha: f32) -> Color,
	ColorAlphaBlend: proc(dst: Color, src: Color, tint: Color) -> Color,
	GetColor: proc(hexValue: u32) -> Color,
	GetPixelColor: proc(srcPtr: rawptr, format: PixelFormat) -> Color,
	SetPixelColor: proc(dstPtr: rawptr, color: Color, format: PixelFormat),
	GetPixelDataSize: proc(width: int, height: int, format: PixelFormat) -> int,

	// module: text

	// Font loading/unloading functions
	GetFontDefault: proc() -> Font,
	LoadFont: proc(fileName: string) -> Font,
	LoadFontEx: proc(fileName: string, fontSize: int, fontChars: []rune) -> Font,
	LoadFontFromImage: proc(image: Image, key: Color, firstChar: rune) -> Font,
	LoadFontFromMemory: proc(fileType: string, fileData: []u8, fontSize: int, fontChars: []rune) -> Font,
	LoadFontData: proc(fileData: []u8, fontSize: int, fontChars: []rune, _type: FontType) -> ^GlyphInfo,
	GenImageFontAtlas: proc(chars: [^]GlyphInfo, recs: [^][^]Rectangle, glyphCount: int, fontSize: int, padding: int, packMethod: int) -> Image,
	UnloadFontData: proc(chars: []GlyphInfo),
	UnloadFont: proc(font: Font),

	// Text drawing functions
	DrawFPS: proc(posX: int, posY: int),
	DrawText: proc(text: string, posX: int, posY: int, fontSize: int, color: Color),
	DrawTextEx: proc(font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color),
	DrawTextPro: proc(font: Font, text: string, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color),
	DrawTextCodepoint: proc(font: Font, codepoint: rune, position: Vector2, fontSize: f32, tint: Color),

	// Text misc. functions
	MeasureText: proc(text: string, fontSize: int) -> int,
	MeasureTextEx: proc(font: Font, text: string, fontSize: f32, spacing: f32) -> Vector2,
	GetGlyphIndex: proc(font: Font, codepoint: rune) -> int,
	GetGlyphInfo: proc(font: Font, codepoint: rune) -> GlyphInfo,
	GetGlyphAtlasRec: proc(font: Font, codepoint: rune) -> Rectangle,

	// Text codepoints management functions (characters: unicode)
	LoadCodepoints: proc(text: string) -> []rune,
	UnloadCodepoints: proc(codepoints: []rune),
	GetCodepointCount: proc(text: string) -> int,
	GetCodepoint: proc(text: string, bytesProcessed: ^int) -> int,
	CodepointToUTF8: proc(codepoint: rune, byteSize: ^int) -> string,
	TextCodepointsToUTF8: proc(codepoints: []rune) -> string,

	// module: models

	// Basic geometric 3D shapes drawing functions
	DrawLine3D: proc(startPos: Vector3, endPos: Vector3, color: Color),
	DrawPoint3D: proc(position: Vector3, color: Color),
	DrawCircle3D: proc(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color),
	DrawTriangle3D: proc(v1: Vector3, v2: Vector3, v3: Vector3, color: Color),
	DrawTriangleStrip3D: proc(points: []Vector3, color: Color),
	DrawCube: proc(position: Vector3, width: f32, height: f32, length: f32, color: Color),
	DrawCubeV: proc(position: Vector3, size: Vector3, color: Color),
	DrawCubeWires: proc(position: Vector3, width: f32, height: f32, length: f32, color: Color),
	DrawCubeWiresV: proc(position: Vector3, size: Vector3, color: Color),
	DrawCubeTexture: proc(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color),
	DrawCubeTextureRec: proc(texture: Texture2D, source: Rectangle, position: Vector3, width: f32, height: f32, length: f32, color: Color),
	DrawSphere: proc(centerPos: Vector3, radius: f32, color: Color),
	DrawSphereEx: proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color),
	DrawSphereWires: proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color),
	DrawCylinder: proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color),
	DrawCylinderEx: proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color),
	DrawCylinderWires: proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color),
	DrawCylinderWiresEx: proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color),
	DrawPlane: proc(centerPos: Vector3, size: Vector2, color: Color),
	DrawRay: proc(ray: Ray, color: Color),
	DrawGrid: proc(slices: int, spacing: f32),

	// Model loading/unloading functions
	LoadModel: proc(fileName: string) -> Model,
	LoadModelFromMesh: proc(mesh: Mesh) -> Model,
	UnloadModel: proc(model: Model),
	UnloadModelKeepMeshes: proc(model: Model),
	GetModelBoundingBox: proc(model: Model) -> BoundingBox,

	// Model drawing functions
	DrawModel: proc(model: Model, position: Vector3, scale: f32, tint: Color),
	DrawModelEx: proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color),
	DrawModelWires: proc(model: Model, position: Vector3, scale: f32, tint: Color),
	DrawModelWiresEx: proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color),
	DrawBoundingBox: proc(box: BoundingBox, color: Color),
	DrawBillboard: proc(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color),
	DrawBillboardRec: proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: f32, tint: Color),
	DrawBillboardPro: proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color),

	// Mesh management functions
	UploadMesh: proc(mesh: ^Mesh, is_dynamic: bool),
	UpdateMeshBuffer: proc(mesh: Mesh, index: int, data: rawptr, dataSize: int, offset: int),
	UnloadMesh: proc(mesh: Mesh),
	DrawMesh: proc(mesh: Mesh, material: Material, transform: Matrix),
	DrawMeshInstanced: proc(mesh: Mesh, material: Material, transforms: []Matrix),
	ExportMesh: proc(mesh: Mesh, fileName: string) -> bool,
	GetMeshBoundingBox: proc(mesh: Mesh) -> BoundingBox,
	GenMeshTangents: proc(mesh: ^Mesh),
	GenMeshBinormals: proc(mesh: ^Mesh),

	// Mesh generation functions
	GenMeshPoly: proc(sides: int, radius: f32) -> Mesh,
	GenMeshPlane: proc(width: f32, length: f32, resX: int, resZ: int) -> Mesh,
	GenMeshCube: proc(width: f32, height: f32, length: f32) -> Mesh,
	GenMeshSphere: proc(radius: f32, rings: int, slices: int) -> Mesh,
	GenMeshHemiSphere: proc(radius: f32, rings: int, slices: int) -> Mesh,
	GenMeshCylinder: proc(radius: f32, height: f32, slices: int) -> Mesh,
	GenMeshCone: proc(radius: f32, height: f32, slices: int) -> Mesh,
	GenMeshTorus: proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh,
	GenMeshKnot: proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh,
	GenMeshHeightmap: proc(heightmap: Image, size: Vector3) -> Mesh,
	GenMeshCubicmap: proc(cubicmap: Image, cubeSize: Vector3) -> Mesh,

	// Material loading/unloading functions
	LoadMaterials: proc(fileName: string) -> []Material,
	LoadMaterialDefault: proc() -> Material,
	UnloadMaterial: proc(material: Material),
	SetMaterialTexture: proc(material: ^Material, mapType: MaterialMapIndex, texture: Texture2D),
	SetModelMeshMaterial: proc(model: ^Model, meshId: int, materialId: int),

	// Model animations loading/unloading functions
	LoadModelAnimations: proc(fileName: string) -> []ModelAnimation,
	UpdateModelAnimation: proc(model: Model, anim: ModelAnimation, frame: int),
	UnloadModelAnimation: proc(anim: ModelAnimation),
	UnloadModelAnimations: proc(animations: []ModelAnimation),
	IsModelAnimationValid: proc(model: Model, anim: ModelAnimation) -> bool,

	// Collision detection functions
	CheckCollisionSpheres: proc(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) -> bool,
	CheckCollisionBoxes: proc(box1: BoundingBox, box2: BoundingBox) -> bool,
	CheckCollisionBoxSphere: proc(box: BoundingBox, center: Vector3, radius: f32) -> bool,
	GetRayCollisionSphere: proc(ray: Ray, center: Vector3, radius: f32) -> RayCollision,
	GetRayCollisionBox: proc(ray: Ray, box: BoundingBox) -> RayCollision,
	GetRayCollisionModel: proc(ray: Ray, model: Model) -> RayCollision,
	GetRayCollisionMesh: proc(ray: Ray, mesh: Mesh, transform: Matrix) -> RayCollision,
	GetRayCollisionTriangle: proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) -> RayCollision,
	GetRayCollisionQuad: proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) -> RayCollision,

	// module: audio

	// Audio device management functions
	InitAudioDevice: proc(),
	CloseAudioDevice: proc(),
	IsAudioDeviceReady: proc() -> bool,
	SetMasterVolume: proc(volume: f32),

	// Wave/Sound loading/unloading functions
	LoadWave: proc(fileName: string) -> Wave,
	LoadWaveFromMemory: proc(fileType: string, data: []u8) -> Wave,
	LoadSound: proc(fileName: string) -> Sound,
	LoadSoundFromWave: proc(wave: Wave) -> Sound,
	UpdateSound: proc(sound: Sound, data: rawptr, samplesCount: int),
	UnloadWave: proc(wave: Wave),
	UnloadSound: proc(sound: Sound),
	ExportWave: proc(wave: Wave, fileName: string) -> bool,
	ExportWaveAsCode: proc(wave: Wave, fileName: string) -> bool,

	// Wave/Sound management functions
	PlaySound: proc(sound: Sound),
	StopSound: proc(sound: Sound),
	PauseSound: proc(sound: Sound),
	ResumeSound: proc(sound: Sound),
	PlaySoundMulti: proc(sound: Sound),
	StopSoundMulti: proc(),
	GetSoundsPlaying: proc() -> int,
	IsSoundPlaying: proc(sound: Sound) -> bool,
	SetSoundVolume: proc(sound: Sound, volume: f32),
	SetSoundPitch: proc(sound: Sound, pitch: f32),
	WaveFormat: proc(wave: ^Wave, sampleRate: int, sampleSize: int, channels: int),
	WaveCopy: proc(wave: Wave) -> Wave,
	WaveCrop: proc(wave: ^Wave, initSample: int, finalSample: int),
	LoadWaveSamples: proc(wave: Wave) -> ^f32,
	UnloadWaveSamples: proc(samples: ^f32),

	// Music management functions
	LoadMusicStream: proc(fileName: string) -> Music,
	LoadMusicStreamFromMemory: proc(fileType: string, data: []u8) -> Music,
	UnloadMusicStream: proc(music: Music),
	PlayMusicStream: proc(music: Music),
	IsMusicStreamPlaying: proc(music: Music) -> bool,
	UpdateMusicStream: proc(music: Music),
	StopMusicStream: proc(music: Music),
	PauseMusicStream: proc(music: Music),
	ResumeMusicStream: proc(music: Music),
	SeekMusicStream: proc(music: Music, position: f32),
	SetMusicVolume: proc(music: Music, volume: f32),
	SetMusicPitch: proc(music: Music, pitch: f32),
	GetMusicTimeLength: proc(music: Music) -> f32,
	GetMusicTimePlayed: proc(music: Music) -> f32,

	// AudioStream management functions
	LoadAudioStream: proc(sampleRate: u32, sampleSize: u32, channels: u32) -> AudioStream,
	UpdateAudioStream: proc(stream: AudioStream, data: rawptr, samplesCount: int),
	CloseAudioStream: proc(stream: AudioStream),
	IsAudioStreamProcessed: proc(stream: AudioStream) -> bool,
	PlayAudioStream: proc(stream: AudioStream),
	PauseAudioStream: proc(stream: AudioStream),
	ResumeAudioStream: proc(stream: AudioStream),
	IsAudioStreamPlaying: proc(stream: AudioStream) -> bool,
	StopAudioStream: proc(stream: AudioStream),
	SetAudioStreamVolume: proc(stream: AudioStream, volume: f32),
	SetAudioStreamPitch: proc(stream: AudioStream, pitch: f32),
	SetAudioStreamBufferSizeDefault: proc(size: int),
}
