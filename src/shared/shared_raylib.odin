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
MouseButton :: raylib.MouseButton
KeyboardKey :: raylib.KeyboardKey

float :: f32
double :: f64

get_api :: #force_inline proc() -> ^Platform_API {
	return &get_ctx().api
}

Platform_API :: struct {
	test_img:                        raylib.Texture,
	draw_test:                       proc(),
	IsWindowReady:                   type_of(raylib.IsWindowReady),
	IsWindowFullscreen:              type_of(raylib.IsWindowFullscreen),
	IsWindowHidden:                  type_of(raylib.IsWindowHidden),
	IsWindowMinimized:               type_of(raylib.IsWindowMinimized),
	IsWindowMaximized:               type_of(raylib.IsWindowMaximized),
	IsWindowFocused:                 type_of(raylib.IsWindowFocused),
	IsWindowResized:                 type_of(raylib.IsWindowResized),
	IsWindowState:                   type_of(raylib.IsWindowState),
	SetWindowState:                  type_of(raylib.SetWindowState),
	ClearWindowState:                type_of(raylib.ClearWindowState),
	ToggleFullscreen:                type_of(raylib.ToggleFullscreen),
	MaximizeWindow:                  type_of(raylib.MaximizeWindow),
	MinimizeWindow:                  type_of(raylib.MinimizeWindow),
	RestoreWindow:                   type_of(raylib.RestoreWindow),
	SetWindowIcon:                   type_of(raylib.SetWindowIcon),
	SetWindowTitle:                  type_of(raylib.SetWindowTitle),
	SetWindowPosition:               type_of(raylib.SetWindowPosition),
	SetWindowMonitor:                type_of(raylib.SetWindowMonitor),
	SetWindowMinSize:                type_of(raylib.SetWindowMinSize),
	SetWindowSize:                   type_of(raylib.SetWindowSize),
	GetWindowHandle:                 type_of(raylib.GetWindowHandle),
	GetScreenWidth:                  type_of(raylib.GetScreenWidth),
	GetScreenHeight:                 type_of(raylib.GetScreenHeight),
	GetMonitorCount:                 type_of(raylib.GetMonitorCount),
	GetCurrentMonitor:               type_of(raylib.GetCurrentMonitor),
	GetMonitorPosition:              type_of(raylib.GetMonitorPosition),
	GetMonitorWidth:                 type_of(raylib.GetMonitorWidth),
	GetMonitorHeight:                type_of(raylib.GetMonitorHeight),
	GetMonitorPhysicalWidth:         type_of(raylib.GetMonitorPhysicalWidth),
	GetMonitorPhysicalHeight:        type_of(raylib.GetMonitorPhysicalHeight),
	GetMonitorRefreshRate:           type_of(raylib.GetMonitorRefreshRate),
	GetWindowPosition:               type_of(raylib.GetWindowPosition),
	GetWindowScaleDPI:               type_of(raylib.GetWindowScaleDPI),
	GetMonitorName:                  type_of(raylib.GetMonitorName),
	SetClipboardText:                type_of(raylib.SetClipboardText),
	GetClipboardText:                type_of(raylib.GetClipboardText),

	// Cursor-related functions
	ShowCursor:                      type_of(raylib.ShowCursor),
	HideCursor:                      type_of(raylib.HideCursor),
	IsCursorHidden:                  type_of(raylib.IsCursorHidden),
	EnableCursor:                    type_of(raylib.EnableCursor),
	DisableCursor:                   type_of(raylib.DisableCursor),
	IsCursorOnScreen:                type_of(raylib.IsCursorOnScreen),

	// Drawing-related functions
	ClearBackground:                 type_of(raylib.ClearBackground),
	BeginDrawing:                    type_of(raylib.BeginDrawing),
	EndDrawing:                      type_of(raylib.EndDrawing),
	BeginMode2D:                     type_of(raylib.BeginMode2D),
	EndMode2D:                       type_of(raylib.EndMode2D),
	BeginMode3D:                     type_of(raylib.BeginMode3D),
	EndMode3D:                       type_of(raylib.EndMode3D),
	BeginTextureMode:                type_of(raylib.BeginTextureMode),
	EndTextureMode:                  type_of(raylib.EndTextureMode),
	BeginShaderMode:                 type_of(raylib.BeginShaderMode),
	EndShaderMode:                   type_of(raylib.EndShaderMode),
	BeginBlendMode:                  type_of(raylib.BeginBlendMode),
	EndBlendMode:                    type_of(raylib.EndBlendMode),
	BeginScissorMode:                type_of(raylib.BeginScissorMode),
	EndScissorMode:                  type_of(raylib.EndScissorMode),
	BeginVrStereoMode:               type_of(raylib.BeginVrStereoMode),
	EndVrStereoMode:                 type_of(raylib.EndVrStereoMode),

	// VR stereo config functions for VR simulator
	LoadVrStereoConfig:              type_of(raylib.LoadVrStereoConfig),
	UnloadVrStereoConfig:            type_of(raylib.UnloadVrStereoConfig),

	// Shader management functions
	// NOTE: Shader functionality is not available on OpenGL 1.1
	LoadShader:                      type_of(raylib.LoadShader),
	LoadShaderFromMemory:            type_of(raylib.LoadShaderFromMemory),
	GetShaderLocation:               type_of(raylib.GetShaderLocation),
	GetShaderLocationAttrib:         type_of(raylib.GetShaderLocationAttrib),
	SetShaderValue:                  type_of(raylib.SetShaderValue),
	SetShaderValueV:                 type_of(raylib.SetShaderValueV),
	SetShaderValueMatrix:            type_of(raylib.SetShaderValueMatrix),
	SetShaderValueTexture:           type_of(raylib.SetShaderValueTexture),
	UnloadShader:                    type_of(raylib.UnloadShader),

	// Screen-space-related functions
	GetMouseRay:                     type_of(raylib.GetMouseRay),
	GetCameraMatrix:                 type_of(raylib.GetCameraMatrix),
	GetCameraMatrix2D:               type_of(raylib.GetCameraMatrix2D),
	GetWorldToScreen:                type_of(raylib.GetWorldToScreen),
	GetWorldToScreenEx:              type_of(raylib.GetWorldToScreenEx),
	GetWorldToScreen2D:              type_of(raylib.GetWorldToScreen2D),
	GetScreenToWorld2D:              type_of(raylib.GetScreenToWorld2D),

	// Timing-related functions
	SetTargetFPS:                    type_of(raylib.SetTargetFPS),
	GetFPS:                          type_of(raylib.GetFPS),
	GetFrameTime:                    type_of(raylib.GetFrameTime),
	GetTime:                         type_of(raylib.GetTime),

	// Misc. functions
	GetRandomValue:                  type_of(raylib.GetRandomValue),
	SetRandomSeed:                   type_of(raylib.SetRandomSeed),
	TakeScreenshot:                  type_of(raylib.TakeScreenshot),
	SetConfigFlags:                  type_of(raylib.SetConfigFlags),
	TraceLog:                        type_of(raylib.TraceLog),
	SetTraceLogLevel:                type_of(raylib.SetTraceLogLevel),

	// Set custom callbacks
	// WARNING: Callbacks setup is intended for advance users
	// SetTraceLogCallback: type_of(raylib.SetTraceLogCallback),                   
	// SetLoadFileDataCallback: type_of(raylib.SetLoadFileDataCallback),           
	// SetSaveFileDataCallback: type_of(raylib.SetSaveFileDataCallback),           
	// SetLoadFileTextCallback: type_of(raylib.SetLoadFileTextCallback),           
	// SetSaveFileTextCallback: type_of(raylib.SetSaveFileTextCallback),           

	// Files management functions
	LoadFileData:                    type_of(raylib.LoadFileData),
	UnloadFileData:                  type_of(raylib.UnloadFileData),
	SaveFileData:                    type_of(raylib.SaveFileData),
	LoadFileText:                    type_of(raylib.LoadFileText),
	UnloadFileText:                  type_of(raylib.UnloadFileText),
	SaveFileText:                    type_of(raylib.SaveFileText),
	FileExists:                      type_of(raylib.FileExists),
	DirectoryExists:                 type_of(raylib.DirectoryExists),
	IsFileExtension:                 type_of(raylib.IsFileExtension),
	GetFileExtension:                type_of(raylib.GetFileExtension),
	GetFileName:                     type_of(raylib.GetFileName),
	GetFileNameWithoutExt:           type_of(raylib.GetFileNameWithoutExt),
	GetDirectoryPath:                type_of(raylib.GetDirectoryPath),
	GetPrevDirectoryPath:            type_of(raylib.GetPrevDirectoryPath),
	GetWorkingDirectory:             type_of(raylib.GetWorkingDirectory),
	GetDirectoryFiles:               type_of(raylib.GetDirectoryFiles),
	ClearDirectoryFiles:             type_of(raylib.ClearDirectoryFiles),
	ChangeDirectory:                 type_of(raylib.ChangeDirectory),
	IsFileDropped:                   type_of(raylib.IsFileDropped),
	GetFileModTime:                  type_of(raylib.GetFileModTime),

	// Compression/Encoding functionality
	CompressData:                    type_of(raylib.CompressData),
	DecompressData:                  type_of(raylib.DecompressData),
	EncodeDataBase64:                type_of(raylib.EncodeDataBase64),
	DecodeDataBase64:                type_of(raylib.DecodeDataBase64),

	// Persistent storage management
	SaveStorageValue:                type_of(raylib.SaveStorageValue),
	LoadStorageValue:                type_of(raylib.LoadStorageValue),

	// Misc.
	OpenURL:                         type_of(raylib.OpenURL),

	// Input-related functions: keyboard
	IsKeyPressed:                    type_of(raylib.IsKeyPressed),
	IsKeyDown:                       type_of(raylib.IsKeyDown),
	IsKeyReleased:                   type_of(raylib.IsKeyReleased),
	IsKeyUp:                         type_of(raylib.IsKeyUp),
	SetExitKey:                      type_of(raylib.SetExitKey),
	GetKeyPressed:                   type_of(raylib.GetKeyPressed),
	GetCharPressed:                  type_of(raylib.GetCharPressed),

	// Input-related functions: gamepads
	IsGamepadAvailable:              type_of(raylib.IsGamepadAvailable),
	GetGamepadName:                  type_of(raylib.GetGamepadName),
	IsGamepadButtonPressed:          type_of(raylib.IsGamepadButtonPressed),
	IsGamepadButtonDown:             type_of(raylib.IsGamepadButtonDown),
	IsGamepadButtonReleased:         type_of(raylib.IsGamepadButtonReleased),
	IsGamepadButtonUp:               type_of(raylib.IsGamepadButtonUp),
	GetGamepadButtonPressed:         type_of(raylib.GetGamepadButtonPressed),
	GetGamepadAxisCount:             type_of(raylib.GetGamepadAxisCount),
	GetGamepadAxisMovement:          type_of(raylib.GetGamepadAxisMovement),
	SetGamepadMappings:              type_of(raylib.SetGamepadMappings),

	// Input-related functions: mouse
	IsMouseButtonPressed:            type_of(raylib.IsMouseButtonPressed),
	IsMouseButtonDown:               type_of(raylib.IsMouseButtonDown),
	IsMouseButtonReleased:           type_of(raylib.IsMouseButtonReleased),
	IsMouseButtonUp:                 type_of(raylib.IsMouseButtonUp),
	GetMouseX:                       type_of(raylib.GetMouseX),
	GetMouseY:                       type_of(raylib.GetMouseY),
	GetMousePosition:                type_of(raylib.GetMousePosition),
	GetMouseDelta:                   type_of(raylib.GetMouseDelta),
	SetMousePosition:                type_of(raylib.SetMousePosition),
	SetMouseOffset:                  type_of(raylib.SetMouseOffset),
	SetMouseScale:                   type_of(raylib.SetMouseScale),
	GetMouseWheelMove:               type_of(raylib.GetMouseWheelMove),
	SetMouseCursor:                  type_of(raylib.SetMouseCursor),

	// Input-related functions: touch
	GetTouchX:                       type_of(raylib.GetTouchX),
	GetTouchY:                       type_of(raylib.GetTouchY),
	GetTouchPosition:                type_of(raylib.GetTouchPosition),
	GetTouchPointId:                 type_of(raylib.GetTouchPointId),
	GetTouchPointCount:              type_of(raylib.GetTouchPointCount),

	// Gestures and Touch Handling Functions (Module: rgestures)
	SetGesturesEnabled:              type_of(raylib.SetGesturesEnabled),
	IsGestureDetected:               type_of(raylib.IsGestureDetected),
	GetGestureDetected:              type_of(raylib.GetGestureDetected),
	GetGestureHoldDuration:          type_of(raylib.GetGestureHoldDuration),
	GetGestureDragVector:            type_of(raylib.GetGestureDragVector),
	GetGestureDragAngle:             type_of(raylib.GetGestureDragAngle),
	GetGesturePinchVector:           type_of(raylib.GetGesturePinchVector),
	GetGesturePinchAngle:            type_of(raylib.GetGesturePinchAngle),

	// Camera System Functions (Module: rcamera)
	SetCameraMode:                   type_of(raylib.SetCameraMode),
	UpdateCamera:                    type_of(raylib.UpdateCamera),
	SetCameraPanControl:             type_of(raylib.SetCameraPanControl),
	SetCameraAltControl:             type_of(raylib.SetCameraAltControl),
	SetCameraSmoothZoomControl:      type_of(raylib.SetCameraSmoothZoomControl),
	SetCameraMoveControls:           type_of(raylib.SetCameraMoveControls),

	// module: shapes

	// 		// Set texture and rectangle to be used on shapes drawing
	// 		// NOTE: It can be useful when using basic shapes and one single fotype_of(raylib.single )nt,
	// 		// defining a font char white rectangle would allow drawing everything in a single draw call
	SetShapesTexture:                type_of(raylib.SetShapesTexture),

	// Basic shapes drawing functions
	DrawPixel:                       type_of(raylib.DrawPixel),
	DrawPixelV:                      type_of(raylib.DrawPixelV),
	DrawLine:                        type_of(raylib.DrawLine),
	DrawLineV:                       type_of(raylib.DrawLineV),
	DrawLineEx:                      type_of(raylib.DrawLineEx),
	DrawLineBezier:                  type_of(raylib.DrawLineBezier),
	DrawLineBezierQuad:              type_of(raylib.DrawLineBezierQuad),
	DrawLineBezierCubic:             type_of(raylib.DrawLineBezierCubic),
	DrawLineStrip:                   type_of(raylib.DrawLineStrip),
	DrawCircle:                      type_of(raylib.DrawCircle),
	DrawCircleSector:                type_of(raylib.DrawCircleSector),
	DrawCircleSectorLines:           type_of(raylib.DrawCircleSectorLines),
	DrawCircleGradient:              type_of(raylib.DrawCircleGradient),
	DrawCircleV:                     type_of(raylib.DrawCircleV),
	DrawCircleLines:                 type_of(raylib.DrawCircleLines),
	DrawEllipse:                     type_of(raylib.DrawEllipse),
	DrawEllipseLines:                type_of(raylib.DrawEllipseLines),
	DrawRing:                        type_of(raylib.DrawRing),
	DrawRingLines:                   type_of(raylib.DrawRingLines),
	DrawRectangle:                   type_of(raylib.DrawRectangle),
	DrawRectangleV:                  type_of(raylib.DrawRectangleV),
	DrawRectangleRec:                type_of(raylib.DrawRectangleRec),
	DrawRectanglePro:                type_of(raylib.DrawRectanglePro),
	DrawRectangleGradientV:          type_of(raylib.DrawRectangleGradientV),
	DrawRectangleGradientH:          type_of(raylib.DrawRectangleGradientH),
	DrawRectangleGradientEx:         type_of(raylib.DrawRectangleGradientEx),
	DrawRectangleLines:              type_of(raylib.DrawRectangleLines),
	DrawRectangleLinesEx:            type_of(raylib.DrawRectangleLinesEx),
	DrawRectangleRounded:            type_of(raylib.DrawRectangleRounded),
	DrawRectangleRoundedLines:       type_of(raylib.DrawRectangleRoundedLines),
	DrawTriangle:                    type_of(raylib.DrawTriangle),
	DrawTriangleLines:               type_of(raylib.DrawTriangleLines),
	DrawTriangleFan:                 type_of(raylib.DrawTriangleFan),
	DrawTriangleStrip:               type_of(raylib.DrawTriangleStrip),
	DrawPoly:                        type_of(raylib.DrawPoly),
	DrawPolyLines:                   type_of(raylib.DrawPolyLines),
	DrawPolyLinesEx:                 type_of(raylib.DrawPolyLinesEx),

	// Basic shapes collision detection functions
	CheckCollisionRecs:              type_of(raylib.CheckCollisionRecs),
	CheckCollisionCircles:           type_of(raylib.CheckCollisionCircles),
	CheckCollisionCircleRec:         type_of(raylib.CheckCollisionCircleRec),
	CheckCollisionPointRec:          type_of(raylib.CheckCollisionPointRec),
	CheckCollisionPointCircle:       type_of(raylib.CheckCollisionPointCircle),
	CheckCollisionPointTriangle:     type_of(raylib.CheckCollisionPointTriangle),
	CheckCollisionLines:             type_of(raylib.CheckCollisionLines),
	CheckCollisionPointLine:         type_of(raylib.CheckCollisionPointLine),
	GetCollisionRec:                 type_of(raylib.GetCollisionRec),

	// module: textures

	// Image loading functions
	// NOTE: These functions do not require GPU access
	LoadImage:                       type_of(raylib.LoadImage),
	LoadImageRaw:                    type_of(raylib.LoadImageRaw),
	LoadImageAnim:                   type_of(raylib.LoadImageAnim),
	LoadImageFromMemory:             type_of(raylib.LoadImageFromMemory),
	LoadImageFromTexture:            type_of(raylib.LoadImageFromTexture),
	UnloadImage:                     type_of(raylib.UnloadImage),
	ExportImage:                     type_of(raylib.ExportImage),
	ExportImageAsCode:               type_of(raylib.ExportImageAsCode),

	// Image generation functions
	GenImageColor:                   type_of(raylib.GenImageColor),
	GenImageGradientV:               type_of(raylib.GenImageGradientV),
	GenImageGradientH:               type_of(raylib.GenImageGradientH),
	GenImageGradientRadial:          type_of(raylib.GenImageGradientRadial),
	GenImageChecked:                 type_of(raylib.GenImageChecked),
	GenImageWhiteNoise:              type_of(raylib.GenImageWhiteNoise),
	GenImageCellular:                type_of(raylib.GenImageCellular),

	// Image manipulation functions
	ImageCopy:                       type_of(raylib.ImageCopy),
	ImageFromImage:                  type_of(raylib.ImageFromImage),
	ImageText:                       type_of(raylib.ImageText),
	ImageTextEx:                     type_of(raylib.ImageTextEx),
	ImageFormat:                     type_of(raylib.ImageFormat),
	ImageToPOT:                      type_of(raylib.ImageToPOT),
	ImageCrop:                       type_of(raylib.ImageCrop),
	ImageAlphaCrop:                  type_of(raylib.ImageAlphaCrop),
	ImageAlphaClear:                 type_of(raylib.ImageAlphaClear),
	ImageAlphaMask:                  type_of(raylib.ImageAlphaMask),
	ImageAlphaPremultiply:           type_of(raylib.ImageAlphaPremultiply),
	ImageResize:                     type_of(raylib.ImageResize),
	ImageResizeNN:                   type_of(raylib.ImageResizeNN),
	ImageResizeCanvas:               type_of(raylib.ImageResizeCanvas),
	ImageMipmaps:                    type_of(raylib.ImageMipmaps),
	ImageDither:                     type_of(raylib.ImageDither),
	ImageFlipVertical:               type_of(raylib.ImageFlipVertical),
	ImageFlipHorizontal:             type_of(raylib.ImageFlipHorizontal),
	ImageRotateCW:                   type_of(raylib.ImageRotateCW),
	ImageRotateCCW:                  type_of(raylib.ImageRotateCCW),
	ImageColorTint:                  type_of(raylib.ImageColorTint),
	ImageColorInvert:                type_of(raylib.ImageColorInvert),
	ImageColorGrayscale:             type_of(raylib.ImageColorGrayscale),
	ImageColorContrast:              type_of(raylib.ImageColorContrast),
	ImageColorBrightness:            type_of(raylib.ImageColorBrightness),
	ImageColorReplace:               type_of(raylib.ImageColorReplace),
	LoadImageColors:                 type_of(raylib.LoadImageColors),
	LoadImagePalette:                type_of(raylib.LoadImagePalette),
	UnloadImageColors:               type_of(raylib.UnloadImageColors),
	UnloadImagePalette:              type_of(raylib.UnloadImagePalette),
	GetImageAlphaBorder:             type_of(raylib.GetImageAlphaBorder),
	GetImageColor:                   type_of(raylib.GetImageColor),

	// Image drawing functions
	// NOTE: Image software-rendering functions (CPU)
	ImageClearBackground:            type_of(raylib.ImageClearBackground),
	ImageDrawPixel:                  type_of(raylib.ImageDrawPixel),
	ImageDrawPixelV:                 type_of(raylib.ImageDrawPixelV),
	ImageDrawLine:                   type_of(raylib.ImageDrawLine),
	ImageDrawLineV:                  type_of(raylib.ImageDrawLineV),
	ImageDrawCircle:                 type_of(raylib.ImageDrawCircle),
	ImageDrawCircleV:                type_of(raylib.ImageDrawCircleV),
	ImageDrawRectangle:              type_of(raylib.ImageDrawRectangle),
	ImageDrawRectangleV:             type_of(raylib.ImageDrawRectangleV),
	ImageDrawRectangleRec:           type_of(raylib.ImageDrawRectangleRec),
	ImageDrawRectangleLines:         type_of(raylib.ImageDrawRectangleLines),
	ImageDraw:                       type_of(raylib.ImageDraw),
	ImageDrawText:                   type_of(raylib.ImageDrawText),
	ImageDrawTextEx:                 type_of(raylib.ImageDrawTextEx),

	// Texture loading functions
	// NOTE: These functions require GPU access
	LoadTexture:                     type_of(raylib.LoadTexture),
	LoadTextureFromImage:            type_of(raylib.LoadTextureFromImage),
	LoadTextureCubemap:              type_of(raylib.LoadTextureCubemap),
	LoadRenderTexture:               type_of(raylib.LoadRenderTexture),
	UnloadTexture:                   type_of(raylib.UnloadTexture),
	UnloadRenderTexture:             type_of(raylib.UnloadRenderTexture),
	UpdateTexture:                   type_of(raylib.UpdateTexture),
	UpdateTextureRec:                type_of(raylib.UpdateTextureRec),

	// Texture configuration functions
	GenTextureMipmaps:               type_of(raylib.GenTextureMipmaps),
	SetTextureFilter:                type_of(raylib.SetTextureFilter),
	SetTextureWrap:                  type_of(raylib.SetTextureWrap),

	// Texture drawing functions
	DrawTexture:                     proc(img: Texture2D, x, y: i32, tint: Color),
	DrawTextureV:                    proc(img: Texture2D, pos: raylib.Vector2, tint: Color),
	DrawTextureEx:                   proc(
		texture: Texture2D,
		position: Vector2,
		rotation: float,
		scale: float,
		tint: Color,
	),
	DrawTextureRec:                  proc(
		texture: Texture2D,
		source: Rectangle,
		position: Vector2,
		tint: Color,
	),
	DrawTextureQuad:                 proc(
		texture: Texture2D,
		tiling: Vector2,
		offset: Vector2,
		quad: Rectangle,
		tint: Color,
	),
	DrawTextureTiled:                proc(
		texture: Texture2D,
		source: Rectangle,
		dest: Rectangle,
		origin: Vector2,
		rotation: float,
		scale: float,
		tint: Color,
	),
	DrawTexturePro:                  proc(
		texture: Texture2D,
		source: Rectangle,
		dest: Rectangle,
		origin: Vector2,
		rotation: float,
		tint: Color,
	),
	DrawTextureNPatch:               proc(
		texture: Texture2D,
		nPatchInfo: NPatchInfo,
		dest: Rectangle,
		origin: Vector2,
		rotation: float,
		tint: Color,
	),
	DrawTexturePoly:                 proc(
		texture: Texture2D,
		center: Vector2,
		points: [^]Vector2,
		texcoords: [^]Vector2,
		pointsCount: i32,
		tint: Color,
	),

	// Color/pixel related functions
	Fade:                            type_of(raylib.Fade),
	ColorToInt:                      type_of(raylib.ColorToInt),
	ColorNormalize:                  type_of(raylib.ColorNormalize),
	ColorFromNormalized:             type_of(raylib.ColorFromNormalized),
	ColorToHSV:                      type_of(raylib.ColorToHSV),
	ColorFromHSV:                    type_of(raylib.ColorFromHSV),
	ColorAlpha:                      type_of(raylib.ColorAlpha),
	ColorAlphaBlend:                 type_of(raylib.ColorAlphaBlend),
	GetColor:                        type_of(raylib.GetColor),
	GetPixelColor:                   type_of(raylib.GetPixelColor),
	SetPixelColor:                   type_of(raylib.SetPixelColor),
	GetPixelDataSize:                type_of(raylib.GetPixelDataSize),

	// module: text

	// Font loading/unloading functions
	GetFontDefault:                  type_of(raylib.GetFontDefault),
	LoadFont:                        type_of(raylib.LoadFont),
	LoadFontEx:                      type_of(raylib.LoadFontEx),
	LoadFontFromImage:               type_of(raylib.LoadFontFromImage),
	LoadFontFromMemory:              type_of(raylib.LoadFontFromMemory),
	LoadFontData:                    type_of(raylib.LoadFontData),
	GenImageFontAtlas:               type_of(raylib.GenImageFontAtlas),
	UnloadFontData:                  type_of(raylib.UnloadFontData),
	UnloadFont:                      type_of(raylib.UnloadFont),

	// Text drawing functions
	DrawFPS:                         type_of(raylib.DrawFPS),
	DrawText:                        type_of(raylib.DrawText),
	DrawTextEx:                      type_of(raylib.DrawTextEx),
	DrawTextPro:                     type_of(raylib.DrawTextPro),
	DrawTextCodepoint:               type_of(raylib.DrawTextCodepoint),

	// Text misc. functions
	MeasureText:                     type_of(raylib.MeasureText),
	MeasureTextEx:                   type_of(raylib.MeasureTextEx),
	GetGlyphIndex:                   type_of(raylib.GetGlyphIndex),
	GetGlyphInfo:                    type_of(raylib.GetGlyphInfo),
	GetGlyphAtlasRec:                type_of(raylib.GetGlyphAtlasRec),

	// Text codepoints management functions (unicode characters)
	LoadCodepoints:                  type_of(raylib.LoadCodepoints),
	UnloadCodepoints:                type_of(raylib.UnloadCodepoints),
	GetCodepointCount:               type_of(raylib.GetCodepointCount),
	GetCodepoint:                    type_of(raylib.GetCodepoint),
	CodepointToUTF8:                 type_of(raylib.CodepointToUTF8),
	TextCodepointsToUTF8:            type_of(raylib.TextCodepointsToUTF8),

	// module: models

	// Basic geometric 3D shapes drawing functions
	DrawLine3D:                      type_of(raylib.DrawLine3D),
	DrawPoint3D:                     type_of(raylib.DrawPoint3D),
	DrawCircle3D:                    type_of(raylib.DrawCircle3D),
	DrawTriangle3D:                  type_of(raylib.DrawTriangle3D),
	DrawTriangleStrip3D:             type_of(raylib.DrawTriangleStrip3D),
	DrawCube:                        type_of(raylib.DrawCube),
	DrawCubeV:                       type_of(raylib.DrawCubeV),
	DrawCubeWires:                   type_of(raylib.DrawCubeWires),
	DrawCubeWiresV:                  type_of(raylib.DrawCubeWiresV),
	DrawCubeTexture:                 type_of(raylib.DrawCubeTexture),
	DrawCubeTextureRec:              type_of(raylib.DrawCubeTextureRec),
	DrawSphere:                      type_of(raylib.DrawSphere),
	DrawSphereEx:                    type_of(raylib.DrawSphereEx),
	DrawSphereWires:                 type_of(raylib.DrawSphereWires),
	DrawCylinder:                    type_of(raylib.DrawCylinder),
	DrawCylinderEx:                  type_of(raylib.DrawCylinderEx),
	DrawCylinderWires:               type_of(raylib.DrawCylinderWires),
	DrawCylinderWiresEx:             type_of(raylib.DrawCylinderWiresEx),
	DrawPlane:                       type_of(raylib.DrawPlane),
	DrawRay:                         type_of(raylib.DrawRay),
	DrawGrid:                        type_of(raylib.DrawGrid),

	// Model loading/unloading functions
	LoadModel:                       type_of(raylib.LoadModel),
	LoadModelFromMesh:               type_of(raylib.LoadModelFromMesh),
	UnloadModel:                     type_of(raylib.UnloadModel),
	UnloadModelKeepMeshes:           type_of(raylib.UnloadModelKeepMeshes),
	GetModelBoundingBox:             type_of(raylib.GetModelBoundingBox),

	// Model drawing functions
	DrawModel:                       type_of(raylib.DrawModel),
	DrawModelEx:                     type_of(raylib.DrawModelEx),
	DrawModelWires:                  type_of(raylib.DrawModelWires),
	DrawModelWiresEx:                type_of(raylib.DrawModelWiresEx),
	DrawBoundingBox:                 type_of(raylib.DrawBoundingBox),
	DrawBillboard:                   type_of(raylib.DrawBillboard),
	DrawBillboardRec:                type_of(raylib.DrawBillboardRec),
	DrawBillboardPro:                type_of(raylib.DrawBillboardPro),

	// Mesh management functions
	UploadMesh:                      type_of(raylib.UploadMesh),
	UpdateMeshBuffer:                type_of(raylib.UpdateMeshBuffer),
	UnloadMesh:                      type_of(raylib.UnloadMesh),
	DrawMesh:                        type_of(raylib.DrawMesh),
	DrawMeshInstanced:               type_of(raylib.DrawMeshInstanced),
	ExportMesh:                      type_of(raylib.ExportMesh),
	GetMeshBoundingBox:              type_of(raylib.GetMeshBoundingBox),
	GenMeshTangents:                 type_of(raylib.GenMeshTangents),
	GenMeshBinormals:                type_of(raylib.GenMeshBinormals),

	// Mesh generation functions
	GenMeshPoly:                     type_of(raylib.GenMeshPoly),
	GenMeshPlane:                    type_of(raylib.GenMeshPlane),
	GenMeshCube:                     type_of(raylib.GenMeshCube),
	GenMeshSphere:                   type_of(raylib.GenMeshSphere),
	GenMeshHemiSphere:               type_of(raylib.GenMeshHemiSphere),
	GenMeshCylinder:                 type_of(raylib.GenMeshCylinder),
	GenMeshCone:                     type_of(raylib.GenMeshCone),
	GenMeshTorus:                    type_of(raylib.GenMeshTorus),
	GenMeshKnot:                     type_of(raylib.GenMeshKnot),
	GenMeshHeightmap:                type_of(raylib.GenMeshHeightmap),
	GenMeshCubicmap:                 type_of(raylib.GenMeshCubicmap),

	// Material loading/unloading functions
	LoadMaterials:                   type_of(raylib.LoadMaterials),
	LoadMaterialDefault:             type_of(raylib.LoadMaterialDefault),
	UnloadMaterial:                  type_of(raylib.UnloadMaterial),
	SetMaterialTexture:              type_of(raylib.SetMaterialTexture),
	SetModelMeshMaterial:            type_of(raylib.SetModelMeshMaterial),

	// Model animations loading/unloading functions
	LoadModelAnimations:             type_of(raylib.LoadModelAnimations),
	UpdateModelAnimation:            type_of(raylib.UpdateModelAnimation),
	UnloadModelAnimation:            type_of(raylib.UnloadModelAnimation),
	UnloadModelAnimations:           type_of(raylib.UnloadModelAnimations),
	IsModelAnimationValid:           type_of(raylib.IsModelAnimationValid),

	// Collision detection functions
	CheckCollisionSpheres:           type_of(raylib.CheckCollisionSpheres),
	CheckCollisionBoxes:             type_of(raylib.CheckCollisionBoxes),
	CheckCollisionBoxSphere:         type_of(raylib.CheckCollisionBoxSphere),
	GetRayCollisionSphere:           type_of(raylib.GetRayCollisionSphere),
	GetRayCollisionBox:              type_of(raylib.GetRayCollisionBox),
	GetRayCollisionModel:            type_of(raylib.GetRayCollisionModel),
	GetRayCollisionMesh:             type_of(raylib.GetRayCollisionMesh),
	GetRayCollisionTriangle:         type_of(raylib.GetRayCollisionTriangle),
	GetRayCollisionQuad:             type_of(raylib.GetRayCollisionQuad),

	// module: audio

	// Audio device management functions
	InitAudioDevice:                 type_of(raylib.InitAudioDevice),
	CloseAudioDevice:                type_of(raylib.CloseAudioDevice),
	IsAudioDeviceReady:              type_of(raylib.IsAudioDeviceReady),
	SetMasterVolume:                 type_of(raylib.SetMasterVolume),

	// Wave/Sound loading/unloading functions
	LoadWave:                        type_of(raylib.LoadWave),
	LoadWaveFromMemory:              type_of(raylib.LoadWaveFromMemory),
	LoadSound:                       type_of(raylib.LoadSound),
	LoadSoundFromWave:               type_of(raylib.LoadSoundFromWave),
	UpdateSound:                     type_of(raylib.UpdateSound),
	UnloadWave:                      type_of(raylib.UnloadWave),
	UnloadSound:                     type_of(raylib.UnloadSound),
	ExportWave:                      type_of(raylib.ExportWave),
	ExportWaveAsCode:                type_of(raylib.ExportWaveAsCode),

	// Wave/Sound management functions
	PlaySound:                       type_of(raylib.PlaySound),
	StopSound:                       type_of(raylib.StopSound),
	PauseSound:                      type_of(raylib.PauseSound),
	ResumeSound:                     type_of(raylib.ResumeSound),
	PlaySoundMulti:                  type_of(raylib.PlaySoundMulti),
	StopSoundMulti:                  type_of(raylib.StopSoundMulti),
	GetSoundsPlaying:                type_of(raylib.GetSoundsPlaying),
	IsSoundPlaying:                  type_of(raylib.IsSoundPlaying),
	SetSoundVolume:                  type_of(raylib.SetSoundVolume),
	SetSoundPitch:                   type_of(raylib.SetSoundPitch),
	WaveFormat:                      type_of(raylib.WaveFormat),
	WaveCopy:                        type_of(raylib.WaveCopy),
	WaveCrop:                        type_of(raylib.WaveCrop),
	LoadWaveSamples:                 type_of(raylib.LoadWaveSamples),
	UnloadWaveSamples:               type_of(raylib.UnloadWaveSamples),

	// Music management functions
	LoadMusicStream:                 type_of(raylib.LoadMusicStream),
	LoadMusicStreamFromMemory:       type_of(raylib.LoadMusicStreamFromMemory),
	UnloadMusicStream:               type_of(raylib.UnloadMusicStream),
	PlayMusicStream:                 type_of(raylib.PlayMusicStream),
	IsMusicStreamPlaying:            type_of(raylib.IsMusicStreamPlaying),
	UpdateMusicStream:               type_of(raylib.UpdateMusicStream),
	StopMusicStream:                 type_of(raylib.StopMusicStream),
	PauseMusicStream:                type_of(raylib.PauseMusicStream),
	ResumeMusicStream:               type_of(raylib.ResumeMusicStream),
	SeekMusicStream:                 type_of(raylib.SeekMusicStream),
	SetMusicVolume:                  type_of(raylib.SetMusicVolume),
	SetMusicPitch:                   type_of(raylib.SetMusicPitch),
	GetMusicTimeLength:              type_of(raylib.GetMusicTimeLength),
	GetMusicTimePlayed:              type_of(raylib.GetMusicTimePlayed),

	// AudioStream management functions
	LoadAudioStream:                 type_of(raylib.LoadAudioStream),
	UpdateAudioStream:               type_of(raylib.UpdateAudioStream),
	// CloseAudioStream:                type_of(raylib.CloseAudioStream),
	IsAudioStreamProcessed:          type_of(raylib.IsAudioStreamProcessed),
	PlayAudioStream:                 type_of(raylib.PlayAudioStream),
	PauseAudioStream:                type_of(raylib.PauseAudioStream),
	ResumeAudioStream:               type_of(raylib.ResumeAudioStream),
	IsAudioStreamPlaying:            type_of(raylib.IsAudioStreamPlaying),
	StopAudioStream:                 type_of(raylib.StopAudioStream),
	SetAudioStreamVolume:            type_of(raylib.SetAudioStreamVolume),
	SetAudioStreamPitch:             type_of(raylib.SetAudioStreamPitch),
	SetAudioStreamBufferSizeDefault: type_of(raylib.SetAudioStreamBufferSizeDefault),
}
