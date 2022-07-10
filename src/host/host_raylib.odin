package host

import "../shared"
import "vendor:raylib"
import "core:strings"
import "core:fmt"

TEST_IMAGE_PATH :: "/Users/wes/dev/roguelike-tutorial/src/game/rl/walls.png"

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
PixelFormat :: raylib.PixelFormat
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
ShaderLocationIndex :: raylib.ShaderLocationIndex
ShaderUniformDataType :: raylib.ShaderUniformDataType
ConfigFlags :: raylib.ConfigFlags
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

populate_api :: proc() {
	api := shared.get_api()

	api.IsWindowReady = proc() -> bool {
		return raylib.IsWindowReady()  ;
	}
	api.IsWindowFullscreen = proc() -> bool {
		return raylib.IsWindowFullscreen()  ;
	}
	api.IsWindowHidden = proc() -> bool {
		return raylib.IsWindowHidden()  ;
	}
	api.IsWindowMinimized = proc() -> bool {
		return raylib.IsWindowMinimized()  ;
	}
	api.IsWindowMaximized = proc() -> bool {
		return raylib.IsWindowMaximized()  ;
	}
	api.IsWindowFocused = proc() -> bool {
		return raylib.IsWindowFocused()  ;
	}
	api.IsWindowResized = proc() -> bool {
		return raylib.IsWindowResized()
	}
	api.IsWindowState = proc(flag: ConfigFlags) -> bool {
		return raylib.IsWindowState(flag)  ;
	}
	api.SetWindowState = proc(flags: ConfigFlags) {
		raylib.SetWindowState(flags);
	}
	api.ClearWindowState = proc(flags: ConfigFlags) {
		raylib.ClearWindowState(flags);
	}
	api.ToggleFullscreen = proc() {
		raylib.ToggleFullscreen();
	}
	api.MaximizeWindow = proc() {
		raylib.MaximizeWindow();
	}
	api.MinimizeWindow = proc() {
		raylib.MinimizeWindow();
	}
	api.RestoreWindow = proc() {
		raylib.RestoreWindow()
	}
	api.SetWindowIcon = proc(image: Image) {
		raylib.SetWindowIcon(image);
	}
	api.SetWindowTitle = proc(title: string) {
		title := strings.clone_to_cstring(title, context.temp_allocator)
		raylib.SetWindowTitle(title);
	}
	api.SetWindowPosition = proc(x: int, y: int) {
		raylib.SetWindowPosition(i32(x), i32(y)) 
	}
	api.SetWindowMonitor = proc(monitor: int) {
		raylib.SetWindowMonitor(i32(monitor));
	}
	api.SetWindowMinSize = proc(width: int, height: int) {
		raylib.SetWindowMinSize(i32(width), i32(height));
	}
	api.SetWindowSize = proc(width: int, height: int) {
		raylib.SetWindowSize(i32(width), i32(height));
	}
	api.GetWindowHandle = proc() -> rawptr {
		return raylib.GetWindowHandle()  ;
	}
	api.GetScreenWidth = proc() -> int {
		return int(raylib.GetScreenWidth());
	}
	api.GetScreenHeight = proc() -> int {
		return int(raylib.GetScreenHeight());
	}
	api.GetMonitorCount = proc() -> int {
		return int(raylib.GetMonitorCount());
	}
	api.GetCurrentMonitor = proc() -> int {
		return int(raylib.GetCurrentMonitor())
	}
	api.GetMonitorPosition = proc(monitor: int) -> Vector2 {
		return raylib.GetMonitorPosition(i32(monitor))  ;
	}
	api.GetMonitorWidth = proc(monitor: int) -> int {
		return int(raylib.GetMonitorWidth(i32(monitor)))  ;
	}
	api.GetMonitorHeight = proc(monitor: int) -> int {
		return int(raylib.GetMonitorHeight(i32(monitor)))  ;
	}
	api.GetMonitorPhysicalWidth = proc(monitor: int) -> int {
		return int(raylib.GetMonitorPhysicalWidth(i32(monitor)))  ;
	}
	api.GetMonitorPhysicalHeight = proc(monitor: int) -> int {
		return int(raylib.GetMonitorPhysicalHeight(i32(monitor)))  ;
	}
	api.GetMonitorRefreshRate = proc(monitor: int) -> int {
		return int(raylib.GetMonitorRefreshRate(i32(monitor)))  ;
	}
	api.GetWindowPosition = proc() -> Vector2 {
		return raylib.GetWindowPosition()  ;
	}
	api.GetWindowScaleDPI = proc() -> Vector2 {
		return raylib.GetWindowScaleDPI()
	}	
	api.GetMonitorName = proc(monitor: int) -> string {
		return string(raylib.GetMonitorName(i32(monitor)))  ;
	}
	api.SetClipboardText = proc(text: string) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.SetClipboardText(text);
	}
	api.GetClipboardText = proc() -> string {
		return string(raylib.GetClipboardText())
	}

	// cursor-related functions
	api.ShowCursor = proc() {
		raylib.ShowCursor();
	}
	api.HideCursor = proc() {
		raylib.HideCursor();
	}
	api.IsCursorHidden = proc() -> bool {
		return raylib.IsCursorHidden()  ;
	}
	api.EnableCursor = proc() {
		raylib.EnableCursor();
	}
	api.DisableCursor = proc() {
		raylib.DisableCursor();
	}
	api.IsCursorOnScreen = proc() -> bool {
		return raylib.IsCursorOnScreen()
	}

	// Drawing-related functions
	api.ClearBackground = proc(color: Color) {
		raylib.ClearBackground(color);
	}
	api.BeginDrawing = proc() {
		raylib.BeginDrawing();
	}
	api.EndDrawing = proc() {
		raylib.EndDrawing()
	}
	api.BeginMode2D = proc(camera: Camera2D) {
		raylib.BeginMode2D(camera);
	}
	api.EndMode2D = proc() {
		raylib.EndMode2D()
	}
	api.BeginMode3D = proc(camera: Camera3D) {
		raylib.BeginMode3D(camera);
	}
	api.EndMode3D = proc() {
		raylib.EndMode3D()
	}
	api.BeginTextureMode = proc(target: RenderTexture2D) {
		raylib.BeginTextureMode(target);
	}
	api.EndTextureMode = proc() {
raylib.EndTextureMode()
	}
	api.BeginShaderMode = proc(shader: Shader) {
		raylib.BeginShaderMode(shader);
	}
	api.EndShaderMode = proc() {
		raylib.EndShaderMode()
	}
	api.BeginBlendMode = proc(mode: BlendMode) {
		raylib.BeginBlendMode(mode);
	}
	api.EndBlendMode = proc() {
		raylib.EndBlendMode()
	}
	api.BeginScissorMode = proc(x: int, y: int, width: int, height: int) {
		raylib.BeginScissorMode(i32(x), i32(y), i32(width), i32(height));
	}
	api.EndScissorMode = proc() {
		raylib.EndScissorMode()
	}
	api.BeginVrStereoMode = proc(config: VrStereoConfig) {
		raylib.BeginVrStereoMode(config);
	}
	api.EndVrStereoMode= proc() {
		raylib.EndVrStereoMode()
	}

	// VR stereo config functions for VR simulator
	api.LoadVrStereoConfig = proc(device: VrDeviceInfo) -> VrStereoConfig {
		return raylib.LoadVrStereoConfig(device)  ;
	}
	api.UnloadVrStereoConfig = proc(config: VrStereoConfig) {
		raylib.UnloadVrStereoConfig(config);
	}

	// Shader management functions
	// NOTE: Shader functionality is not available on OpenGL 1.1
	api.LoadShader = proc(vsFileName: string, fsFileName: string) -> Shader {
		vsFileName := strings.clone_to_cstring(vsFileName, context.temp_allocator)
		fsFileName := strings.clone_to_cstring(fsFileName, context.temp_allocator)
		return raylib.LoadShader(vsFileName, fsFileName)  ;
	}
	api.LoadShaderFromMemory = proc(vsCode: string, fsCode: string) -> Shader {
		vsCode := strings.clone_to_cstring(vsCode, context.temp_allocator)
		fsCode := strings.clone_to_cstring(fsCode, context.temp_allocator)
		return raylib.LoadShaderFromMemory(vsCode, fsCode)  ;
	}
	api.GetShaderLocation = proc(shader: Shader, uniformName: string) -> int {
		uniformName := strings.clone_to_cstring(uniformName, context.temp_allocator)
		return int(raylib.GetShaderLocation(shader, uniformName))  ;
	}
	api.GetShaderLocationAttrib = proc(shader: Shader, attribName: string) -> int {
		attribName := strings.clone_to_cstring(attribName, context.temp_allocator);
		return int(raylib.GetShaderLocationAttrib(shader, attribName))  ;
	}
	api.SetShaderValue = proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType) {
		raylib.SetShaderValue(shader, locIndex, value, uniformType);
	}
	api.SetShaderValueV = proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType, count: int) {
		raylib.SetShaderValueV(shader, locIndex, value, uniformType, i32(count));
	}
	api.SetShaderValueMatrix = proc(shader: Shader, locIndex: ShaderLocationIndex, mat: Matrix) {
		raylib.SetShaderValueMatrix(shader, locIndex, mat);
	}
	api.SetShaderValueTexture = proc(shader: Shader, locIndex: ShaderLocationIndex, texture: Texture2D) {
		raylib.SetShaderValueTexture(shader, locIndex, texture);
	}
	api.UnloadShader = proc(shader: Shader) {
		raylib.UnloadShader(shader);
	}

	// Screen-space-related functions
	api.GetMouseRay = proc(mousePosition: Vector2, camera: Camera) -> Ray {
		return raylib.GetMouseRay(mousePosition, camera)  ;
	}
	api.GetCameraMatrix = proc(camera: Camera) -> Matrix {
		return raylib.GetCameraMatrix(camera)  ;
	}
	api.GetCameraMatrix2D = proc(camera: Camera2D) -> Matrix {
		return raylib.GetCameraMatrix2D(camera)  ;
	}
	api.GetWorldToScreen = proc(position: Vector3, camera: Camera) -> Vector2 {
		return raylib.GetWorldToScreen(position, camera)  ;
	}
	api.GetWorldToScreenEx = proc(position: Vector3, camera: Camera, width: int, height: int) -> Vector2 {
		return raylib.GetWorldToScreenEx(position, camera, i32(width), i32(height))  ;
	}
	api.GetWorldToScreen2D = proc(position: Vector2, camera: Camera2D) -> Vector2 {
		return raylib.GetWorldToScreen2D(position, camera)  ;
	}
	api.GetScreenToWorld2D = proc(position: Vector2, camera: Camera2D) -> Vector2 {
		return raylib.GetScreenToWorld2D(position, camera)  ;
	}

	// Timing-related functions
	api.SetTargetFPS = proc(fps: int) {
		raylib.SetTargetFPS(i32(fps));
	}
	api.GetFPS = proc() -> int {
		return int(raylib.GetFPS())  ;
	}
	api.GetFrameTime = proc() -> f32 {
		return raylib.GetFrameTime()  ;
	}
	api.GetTime = proc() -> f64 {
		return raylib.GetTime()
	}

	// Misc. functions
	api.GetRandomValue = proc(min: int, max: int) -> int {
		return int(raylib.GetRandomValue(i32(min), i32(max)))  ;
	}
	api.SetRandomSeed = proc(seed: u32) {
		raylib.SetRandomSeed(seed);
	}
	api.TakeScreenshot = proc(fileName: string) {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		raylib.TakeScreenshot(fileName);
	}
	api.SetConfigFlags = proc(flags: ConfigFlags) {
		raylib.SetConfigFlags(flags);
	}

	api.TraceLog = proc(logLevel: TraceLogLevel, text: string, args: ..any) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.TraceLog(logLevel = logLevel, text = text, args = args);
	}
	api.SetTraceLogLevel = proc(logLevel: TraceLogLevel) {
		raylib.SetTraceLogLevel(logLevel);
	}

	// Set custom callbacks
	// WARNING: Callbacks setup is intended for advance users

	// Files management functions
	api.LoadFileData = proc(fileName: string) -> []u8 {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n : u32
		bytes := raylib.LoadFileData(fileName, &n)
		return bytes[:n]
	}
	api.UnloadFileData = proc(data: []u8) {
		raylib.UnloadFileData(&data[0]);
	}
	api.SaveFileData = proc(fileName: string, data: []byte) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		// TODO should this be len(data) or size_of(data)
		return raylib.SaveFileData(fileName, &data[0], size_of(data))  ;
	}
	api.LoadFileText = proc(fileName: string) -> string {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return string(cstring(raylib.LoadFileText(fileName)));
	}
	api.UnloadFileText = proc(text: string) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.UnloadFileText(text);
	}
	api.SaveFileText = proc(fileName: string, text: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.SaveFileText(fileName, text)  ;
	}
	api.FileExists = proc(fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.FileExists(fileName)  ;
	}
	api.DirectoryExists = proc(dirPath: string) -> bool {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		return raylib.DirectoryExists(dirPath)  ;
	}
	api.IsFileExtension = proc(fileName: string, ext: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		ext:= strings.clone_to_cstring(ext, context.temp_allocator)
		return raylib.IsFileExtension(fileName, ext)  ;
	}
	api.GetFileExtension = proc(fileName: string) -> string {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return string(raylib.GetFileExtension(fileName))
	}
	api.GetFileName = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetFileName(filePath)) 
	}
	api.GetFileNameWithoutExt = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetFileNameWithoutExt(filePath))  
	}
	api.GetDirectoryPath = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetDirectoryPath(filePath)) 
	}
	api.GetPrevDirectoryPath = proc(dirPath: string) -> string {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		return string(raylib.GetPrevDirectoryPath(dirPath)) 
	}
	api.GetWorkingDirectory = proc() -> string {
		return string(raylib.GetWorkingDirectory())
	}
	api.GetDirectoryFiles = proc(dirPath: string) -> []cstring {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		count : i32
		names := raylib.GetDirectoryFiles(dirPath, &count);
		return names[:count]
	}
	api.ClearDirectoryFiles = proc() {
		raylib.ClearDirectoryFiles()
	}
	api.ChangeDirectory = proc(dir: string) -> bool {
		dir := strings.clone_to_cstring(dir, context.temp_allocator)
		return raylib.ChangeDirectory(dir)  ;
	}
	api.IsFileDropped = proc() -> bool {
		return raylib.IsFileDropped()
	}
	// api.LoadDroppedFiles(count: [^]int)                                     {
		// 	raylib.// *LoadDroppedFiles(countint)                                    ;
		// }
		// api.UnloadDroppedFiles = proc() {
			// raylib.UnloadDroppedFiles()
			// }
	api.GetFileModTime = proc(fileName: string) -> i64 {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.GetFileModTime(fileName)  ;
	}

	// Compression/Encoding functionality
	api.CompressData = proc(data: []u8) -> []u8 {
		n: i32;
		result := raylib.CompressData(&data[0], i32(len(data)), &n);
		return result[:n]
	}
	api.DecompressData = proc(compData: []u8) -> []u8 {
		n: i32;
		result := raylib.DecompressData(&compData[0], i32(len(compData)), &n);
		return result[:n];
	}
	api.EncodeDataBase64 = proc(data: []u8) -> []u8 {
		n: i32;
		result := raylib.EncodeDataBase64(&data[0], i32(len(data)), &n);
		return result[:n]

	}
	api.DecodeDataBase64 = proc(data: []u8) -> []u8 {
		n: i32
		result := raylib.DecodeDataBase64(&data[0], &n);
		return result[:n]
	}

	// Persistent storage management
	api.SaveStorageValue = proc(position: u32, value: int) -> bool {
		return raylib.SaveStorageValue(position, i32(value));
	}
	api.LoadStorageValue = proc(position: u32) -> int {
		return int(raylib.LoadStorageValue(position));
	}

	// Misc.
	api.OpenURL = proc(url: string) {
		url := strings.clone_to_cstring(url, context.temp_allocator)
		raylib.OpenURL(url);
	}

	// Input-related functions: keyboard
	api.IsKeyPressed = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyPressed(key)  ;
	}
	api.IsKeyDown = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyDown(key)  ;
	}
	api.IsKeyReleased = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyReleased(key)  ;
	}
	api.IsKeyUp = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyUp(key)  ;
	}
	api.SetExitKey = proc(key: KeyboardKey) {
		raylib.SetExitKey(key);
	}
	api.GetKeyPressed = proc() -> KeyboardKey {
		return raylib.GetKeyPressed()  ;
	}
	api.GetCharPressed = proc() -> rune {
		return raylib.GetCharPressed()
	}

	// Input-related functions: gamepads
	api.IsGamepadAvailable = proc(gamepad: int) -> bool {
		return raylib.IsGamepadAvailable(i32(gamepad))  ;
	}
	api.GetGamepadName = proc(gamepad: int) -> string {
		return string(raylib.GetGamepadName(i32(gamepad)))
	}
	api.IsGamepadButtonPressed = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonPressed(i32(gamepad), button)  ;
	}
	api.IsGamepadButtonDown = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonDown(i32(gamepad), button)  ;
	}
	api.IsGamepadButtonReleased = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonReleased(i32(gamepad), button)  ;
	}
	api.IsGamepadButtonUp = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonUp(i32(gamepad), button)  ;
	}
	api.GetGamepadButtonPressed = proc() -> int {
		return int(raylib.GetGamepadButtonPressed())
	}
	api.GetGamepadAxisCount = proc(gamepad: int) -> int {
		return int(raylib.GetGamepadAxisCount(i32(gamepad)))
	}
	api.GetGamepadAxisMovement = proc(gamepad: int, axis: GamepadAxis) -> f32 {
		return raylib.GetGamepadAxisMovement(i32(gamepad), axis)  ;
	}
	api.SetGamepadMappings = proc(mappings: string) -> int {
		mappings := strings.clone_to_cstring(mappings, context.temp_allocator)
		return int(raylib.SetGamepadMappings(mappings))  ;
	}

	// Input-related functions: mouse
	api.IsMouseButtonPressed = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonPressed(button)  ;
	}
	api.IsMouseButtonDown = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonDown(button)  ;
	}
	api.IsMouseButtonReleased = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonReleased(button)  ;
	}
	api.IsMouseButtonUp = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonUp(button)  ;
	}
	api.GetMouseX = proc() -> int {
		return int(raylib.GetMouseX())  ;
	}
	api.GetMouseY = proc() -> int {
		return int(raylib.GetMouseY())  ;
	}
	api.GetMousePosition = proc() -> Vector2 {
		return raylib.GetMousePosition()  ;
	}
	api.GetMouseDelta = proc() -> Vector2 {
		return raylib.GetMouseDelta()
	}
	api.SetMousePosition = proc(x: int, y: int) {
		raylib.SetMousePosition(i32(x), i32(y))}
	api.SetMouseOffset = proc(offsetX: int, offsetY: int) {
		raylib.SetMouseOffset(i32(offsetX), i32(offsetY));
	}
	api.SetMouseScale = proc(scaleX: f32, scaleY: f32) {
		raylib.SetMouseScale(scaleX, scaleY);
	}
	api.GetMouseWheelMove = proc() -> f32 {
		return raylib.GetMouseWheelMove()
	}
	api.SetMouseCursor = proc(cursor: MouseCursor) {
		raylib.SetMouseCursor(cursor);
	}

	api.GetTouchX = proc() -> int {
		return int(raylib.GetTouchX())
	}
	api.GetTouchY = proc() -> int {
		return int(raylib.GetTouchY())
	}
	api.GetTouchPosition = proc(index: int) -> Vector2 {
		return raylib.GetTouchPosition(i32(index))  ;
	}
	api.GetTouchPointId = proc(index: int) -> int {
		return int(raylib.GetTouchPointId(i32(index)))
	}
	api.GetTouchPointCount = proc() -> int {
		return int(raylib.GetTouchPointCount())
	}

	// Gestures and Touch Handling Functions (Module: rgestures)
	api.SetGesturesEnabled = proc(flags: Gestures) {
		raylib.SetGesturesEnabled(flags);
	}
	api.IsGestureDetected = proc(gesture: Gesture) -> bool {
		return raylib.IsGestureDetected(gesture)  ;
	}
	api.GetGestureDetected = proc() -> Gesture {
		return raylib.GetGestureDetected()  ;
	}
	api.GetGestureHoldDuration = proc() -> f32 {
		return raylib.GetGestureHoldDuration()  ;
	}
	api.GetGestureDragVector = proc() -> Vector2 {
		return raylib.GetGestureDragVector()  ;
	}
	api.GetGestureDragAngle = proc() -> f32 {
		return raylib.GetGestureDragAngle()  ;
	}
	api.GetGesturePinchVector = proc() -> Vector2 {
		return raylib.GetGesturePinchVector()  ;
	}
	api.GetGesturePinchAngle = proc() -> f32 {
		return raylib.GetGesturePinchAngle()
	}

	// Camera System Functions (Module: rcamera)
	api.SetCameraMode = proc(camera: Camera, mode: CameraMode) {
		raylib.SetCameraMode(camera, mode);
	}
	api.UpdateCamera = proc(camera: ^Camera) {
		raylib.UpdateCamera(camera);
	}

	api.SetCameraPanControl = proc(keyPan: KeyboardKey) {
		raylib.SetCameraPanControl(keyPan);
	}
	api.SetCameraAltControl = proc(keyAlt: KeyboardKey) {
		raylib.SetCameraAltControl(keyAlt);
	}
	api.SetCameraSmoothZoomControl = proc(keySmoothZoom: KeyboardKey) {
		raylib.SetCameraSmoothZoomControl(keySmoothZoom);
	}
	api.SetCameraMoveControls = proc(keyFront: KeyboardKey, keyBack: KeyboardKey, keyRight: KeyboardKey, keyLeft: KeyboardKey, keyUp: KeyboardKey, keyDown: KeyboardKey) {
		raylib.SetCameraMoveControls(keyFront, keyBack, keyRight, keyLeft, keyUp, keyDown);
	}

	// module: shapes

	// Set texture and rectangle to be used on shapes drawing
	// NOTE: It can be useful when using basic shapes and one font: single {}
	// defining a font char white rectangle would allow drawing everything in a single draw call
	api.SetShapesTexture = proc(texture: Texture2D, source: Rectangle) {
		raylib.SetShapesTexture(texture, source);
	}

	// Basic shapes drawing functions
	api.DrawPixel = proc(posX: int, posY: int, color: Color) {
		raylib.DrawPixel(i32(posX), i32(posY), color);
	}
	api.DrawPixelV = proc(position: Vector2, color: Color) {
		raylib.DrawPixelV(position, color);
	}
	api.DrawLine = proc(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) {
		raylib.DrawLine(i32(startPosX), i32(startPosY), i32(endPosX), i32(endPosY), color);
	}
	api.DrawLineV = proc(startPos: Vector2, endPos: Vector2, color: Color) {
		raylib.DrawLineV(startPos, endPos, color);
	}
	api.DrawLineEx = proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineEx(startPos, endPos, thick, color);
	}
	api.DrawLineBezier = proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezier(startPos, endPos, thick, color);
	}
	api.DrawLineBezierQuad = proc(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezierQuad(startPos, endPos, controlPos, thick, color);
	}
	api.DrawLineBezierCubic = proc(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezierCubic(startPos, endPos, startControlPos, endControlPos, thick, color);
	}
	api.DrawLineStrip = proc(points: []Vector2, color: Color) {
		raylib.DrawLineStrip(&points[0], i32(len(points)), color);
	}
	api.DrawCircle = proc(centerX: int, centerY: int, radius: f32, color: Color) {
		raylib.DrawCircle(i32(centerX), i32(centerY), radius, color);
	}
	api.DrawCircleSector = proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawCircleSector(center, radius, startAngle, endAngle, i32(segments), color);
	}
	api.DrawCircleSectorLines = proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawCircleSectorLines(center, radius, startAngle, endAngle, i32(segments), color);
	}
	api.DrawCircleGradient = proc(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color) {
		raylib.DrawCircleGradient(i32(centerX), i32(centerY), radius, color1, color2);
	}
	api.DrawCircleV = proc(center: Vector2, radius: f32, color: Color) {
		raylib.DrawCircleV(center, radius, color);
	}
	api.DrawCircleLines = proc(centerX: int, centerY: int, radius: f32, color: Color) {
		raylib.DrawCircleLines(i32(centerX), i32(centerY), radius, color);
	}
	api.DrawEllipse = proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) {
		raylib.DrawEllipse(i32(centerX), i32(centerY), radiusH, radiusV, color);
	}
	api.DrawEllipseLines = proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) {
		raylib.DrawEllipseLines(i32(centerX), i32(centerY), radiusH, radiusV, color);
	}
	api.DrawRing = proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, i32(segments), color);
	}
	api.DrawRingLines = proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, i32(segments), color);
	}
	api.DrawRectangle = proc(posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.DrawRectangle(i32(posX), i32(posY), i32(width), i32(height), color);
	}
	api.DrawRectangleV = proc(position: Vector2, size: Vector2, color: Color) {
		raylib.DrawRectangleV(position, size, color);
	}
	api.DrawRectangleRec = proc(rec: Rectangle, color: Color) {
		raylib.DrawRectangleRec(rec, color);
	}
	api.DrawRectanglePro = proc(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) {
		raylib.DrawRectanglePro(rec, origin, rotation, color);
	}
	api.DrawRectangleGradientV = proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) {
		raylib.DrawRectangleGradientV(i32(posX), i32(posY), i32(width), i32(height), color1, color2);
	}
	api.DrawRectangleGradientH = proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) {
		raylib.DrawRectangleGradientH(i32(posX), i32(posY), i32(width), i32(height), color1, color2);
	}
	api.DrawRectangleGradientEx = proc(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) {
		raylib.DrawRectangleGradientEx(rec, col1, col2, col3, col4);
	}
	api.DrawRectangleLines = proc(posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.DrawRectangleLines(i32(posX), i32(posY), i32(width), i32(height), color);
	}
	api.DrawRectangleLinesEx = proc(rec: Rectangle, lineThick: f32, color: Color) {
		raylib.DrawRectangleLinesEx(rec, lineThick, color);
	}
	api.DrawRectangleRounded = proc(rec: Rectangle, roundness: f32, segments: int, color: Color) {
		raylib.DrawRectangleRounded(rec, roundness, i32(segments), color);
	}
	api.DrawRectangleRoundedLines = proc(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) {
		raylib.DrawRectangleRoundedLines(rec, roundness, i32(segments), lineThick, color);
	}
	api.DrawTriangle = proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) {
		raylib.DrawTriangle(v1, v2, v3, color);
	}
	api.DrawTriangleLines = proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) {
		raylib.DrawTriangleLines(v1, v2, v3, color);
	}
	api.DrawTriangleFan = proc(points: []Vector2, color: Color) {
		raylib.DrawTriangleFan(&points[0], i32(len(points)), color);
	}
	api.DrawTriangleStrip = proc(points: []Vector2, color: Color) {
		raylib.DrawTriangleStrip(&points[0], i32(len(points)), color);
	}
	api.DrawPoly = proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) {
		raylib.DrawPoly(center, i32(sides), radius, rotation, color);
	}
	api.DrawPolyLines = proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) {
		raylib.DrawPolyLines(center, i32(sides), radius, rotation, color);
	}
	api.DrawPolyLinesEx = proc(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) {
		raylib.DrawPolyLinesEx(center, i32(sides), radius, rotation, lineThick, color);
	}

	// Basic shapes collision detection functions
	api.CheckCollisionRecs = proc(rec1: Rectangle, rec2: Rectangle) -> bool {
		return raylib.CheckCollisionRecs(rec1, rec2)  ;
	}
	api.CheckCollisionCircles = proc(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) -> bool {
		return raylib.CheckCollisionCircles(center1, radius1, center2, radius2)  ;
	}
	api.CheckCollisionCircleRec = proc(center: Vector2, radius: f32, rec: Rectangle) -> bool {
		return raylib.CheckCollisionCircleRec(center, radius, rec)  ;
	}
	api.CheckCollisionPointRec = proc(point: Vector2, rec: Rectangle) -> bool {
		return raylib.CheckCollisionPointRec(point, rec)  ;
	}
	api.CheckCollisionPointCircle = proc(point: Vector2, center: Vector2, radius: f32) -> bool {
		return raylib.CheckCollisionPointCircle(point, center, radius)  ;
	}
	api.CheckCollisionPointTriangle = proc(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) -> bool {
		return raylib.CheckCollisionPointTriangle(point, p1, p2, p3)  ;
	}
	api.CheckCollisionLines = proc(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2) -> (Vector2, bool) {
		collisionPoint:Vector2
		collided := raylib.CheckCollisionLines(startPos1, endPos1, startPos2, endPos2, &collisionPoint)
		return collisionPoint, collided
	}
	api.CheckCollisionPointLine = proc(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) -> bool {
		return raylib.CheckCollisionPointLine(point, p1, p2, i32(threshold))  ;
	}
	api.GetCollisionRec = proc(rec1: Rectangle, rec2: Rectangle) -> Rectangle {
		return raylib.GetCollisionRec(rec1, rec2)  ;
	}

	// module: textures

	// Image loading functions
	// NOTE: These functions do not require GPU access
	api.LoadImage = proc(fileName: string) -> Image {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadImage(fileName)  ;
	}
	api.LoadImageRaw = proc(fileName: string, width: int, height: int, format: PixelFormat, headerSize: int) -> Image {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadImageRaw(fileName, i32(width), i32(height), format, i32(headerSize))  ;
	}
	api.LoadImageAnim = proc(fileName: string) -> (Image, int) {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		frames : i32
		image := raylib.LoadImageAnim(fileName, &frames)
		return image, int(frames)
	}
	api.LoadImageFromMemory = proc(fileType: string, fileData: []u8) -> Image {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadImageFromMemory(fileType, &fileData[0], i32(len(fileData)))  ;
	}
	api.LoadImageFromTexture = proc(texture: Texture2D) -> Image {
		return raylib.LoadImageFromTexture(texture)  ;
	}
	// api.LoadImageFromScreen = proc() -> Image {
	// 	return raylib.LoadImageFromScreen()
	// }
	api.UnloadImage = proc(image: Image) {
		raylib.UnloadImage(image);
	}
	api.ExportImage = proc(image: Image, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportImage(image, fileName)  ;
	}
	api.ExportImageAsCode = proc(image: Image, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportImageAsCode(image, fileName)  ;
	}

	// Image generation functions
	api.GenImageColor = proc(width: int, height: int, color: Color) -> Image {
		return raylib.GenImageColor(i32(width), i32(height), color)  ;
	}
	api.GenImageGradientV = proc(width: int, height: int, top: Color, bottom: Color) -> Image {
		return raylib.GenImageGradientV(i32(width), i32(height), top, bottom)  ;
	}
	api.GenImageGradientH = proc(width: int, height: int, left: Color, right: Color) -> Image {
		return raylib.GenImageGradientH(i32(width), i32(height), left, right)  ;
	}
	api.GenImageGradientRadial = proc(width: int, height: int, density: f32, inner: Color, outer: Color) -> Image {
		return raylib.GenImageGradientRadial(i32(width), i32(height), density, inner, outer)  ;
	}
	api.GenImageChecked = proc(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) -> Image {
		return raylib.GenImageChecked(i32(width), i32(height), i32(checksX), i32(checksY), col1, col2)  ;
	}
	api.GenImageWhiteNoise = proc(width: int, height: int, factor: f32) -> Image {
		return raylib.GenImageWhiteNoise(i32(width), i32(height), factor)  ;
	}
	api.GenImageCellular = proc(width: int, height: int, tileSize: int) -> Image {
		return raylib.GenImageCellular(i32(width), i32(height), i32(tileSize))  ;
	}

	// Image manipulation functions
	api.ImageCopy = proc(image: Image) -> Image {
		return raylib.ImageCopy(image)  ;
	}
	api.ImageFromImage = proc(image: Image, rec: Rectangle) -> Image {
		return raylib.ImageFromImage(image, rec)  ;
	}
	api.ImageText = proc(text: string, fontSize: int, color: Color) -> Image {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.ImageText(text, i32(fontSize), color)  ;
	}
	api.ImageTextEx = proc(font: Font, text: string, fontSize: f32, spacing: f32, tint: Color) -> Image {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.ImageTextEx(font, text, fontSize, spacing, tint)  ;
	}
	api.ImageFormat = proc(image: ^Image, newFormat: PixelFormat) {
		raylib.ImageFormat(image, newFormat);
	}
	api.ImageToPOT = proc(image: ^Image, fill: Color) {
		raylib.ImageToPOT(image, fill);
	}
	api.ImageCrop = proc(image: ^Image, crop: Rectangle) {
		raylib.ImageCrop(image, crop);
	}
	api.ImageAlphaCrop = proc(image: ^Image, threshold: f32) {
		raylib.ImageAlphaCrop(image, threshold);
	}
	api.ImageAlphaClear = proc(image: ^Image, color: Color, threshold: f32) {
		raylib.ImageAlphaClear(image, color, threshold);
	}
	api.ImageAlphaMask = proc(image: ^Image, alphaMask: Image) {
		raylib.ImageAlphaMask(image, alphaMask);
	}
	api.ImageAlphaPremultiply = proc(image: ^Image) {
		raylib.ImageAlphaPremultiply(image);
	}
	api.ImageResize = proc(image: ^Image, newWidth: int, newHeight: int) {
		raylib.ImageResize(image, i32(newWidth), i32(newHeight));
	}
	api.ImageResizeNN = proc(image: ^Image, newWidth: int,newHeight: int) {
		raylib.ImageResizeNN(image, i32(newWidth),i32(newHeight));
	}
	api.ImageResizeCanvas = proc(image: ^Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color) {
		raylib.ImageResizeCanvas(image, i32(newWidth), i32(newHeight), i32(offsetX), i32(offsetY), fill);
	}
	api.ImageMipmaps = proc(image: ^Image) {
		raylib.ImageMipmaps(image);
	}
	api.ImageDither = proc(image: ^Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int) {
		raylib.ImageDither(image, i32(rBpp), i32(gBpp), i32(bBpp), i32(aBpp));
	}
	api.ImageFlipVertical = proc(image: ^Image) {
		raylib.ImageFlipVertical(image);
	}
	api.ImageFlipHorizontal = proc(image: ^Image) {
		raylib.ImageFlipHorizontal(image);
	}
	api.ImageRotateCW = proc(image: ^Image) {
		raylib.ImageRotateCW(image);
	}
	api.ImageRotateCCW = proc(image: ^Image) {
		raylib.ImageRotateCCW(image);
	}
	api.ImageColorTint = proc(image: ^Image, color: Color) {
		raylib.ImageColorTint(image, color);
	}
	api.ImageColorInvert = proc(image: ^Image) {
		raylib.ImageColorInvert(image);
	}
	api.ImageColorGrayscale = proc(image: ^Image) {
		raylib.ImageColorGrayscale(image);
	}
	api.ImageColorContrast = proc(image: ^Image, contrast: f32) {
		raylib.ImageColorContrast(image, contrast);
	}
	api.ImageColorBrightness = proc(image: ^Image, brightness: int) {
		raylib.ImageColorBrightness(image, i32(brightness));
	}
	api.ImageColorReplace = proc(image: ^Image, color: Color, replace: Color) {
		raylib.ImageColorReplace(image, color, replace);
	}
	api.LoadImageColors = proc(image: Image) -> [^]Color {
		return raylib.LoadImageColors(image);
	}
	api.LoadImagePalette = proc(image: Image, maxPaletteSize: int) -> []Color {
		n : i32
		colors := raylib.LoadImagePalette(image, i32(maxPaletteSize), &n) ;
		return colors[:n]
	}
	api.UnloadImageColors = proc(colors: [^]Color) {
		raylib.UnloadImageColors(colors);
	}
	api.UnloadImagePalette = proc(colors: [^]Color) {
		raylib.UnloadImagePalette(colors);
	}
	api.GetImageAlphaBorder = proc(image: Image, threshold: f32) -> Rectangle {
		return raylib.GetImageAlphaBorder(image, threshold)  ;
	}
	api.GetImageColor = proc(image: Image, x: int, y: int) -> Color {
		return raylib.GetImageColor(image, i32(x), i32(y));
	}

	// Image drawing functions
	// NOTE: Image software-rendering functions (CPU)
	api.ImageClearBackground = proc(dst: ^Image, color: Color) {
		raylib.ImageClearBackground(dst, color);
	}
	api.ImageDrawPixel = proc(dst: ^Image, posX: int, posY: int, color: Color) {
		raylib.ImageDrawPixel(dst, i32(posX), i32(posY), color);
	}
	api.ImageDrawPixelV = proc(dst: ^Image, position: Vector2, color: Color) {
		raylib.ImageDrawPixelV(dst, position, color);
	}
	api.ImageDrawLine = proc(dst: ^Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) {
		raylib.ImageDrawLine(dst, i32(startPosX), i32(startPosY), i32(endPosX), i32(endPosY), color);
	}
	api.ImageDrawLineV = proc(dst: ^Image, start: Vector2, end: Vector2, color: Color) {
		raylib.ImageDrawLineV(dst, start, end, color);
	}
	api.ImageDrawCircle = proc(dst: ^Image, centerX: int, centerY: int, radius: int, color: Color) {
		raylib.ImageDrawCircle(dst, i32(centerX), i32(centerY), i32(radius), color);
	}
	api.ImageDrawCircleV = proc(dst: ^Image, center: Vector2, radius: int, color: Color) {
		raylib.ImageDrawCircleV(dst, center, i32(radius), color);
	}
	api.ImageDrawRectangle = proc(dst: ^Image, posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.ImageDrawRectangle(dst, i32(posX), i32(posY), i32(width), i32(height), color);
	}
	api.ImageDrawRectangleV = proc(dst: ^Image, position: Vector2, size: Vector2, color: Color) {
		raylib.ImageDrawRectangleV(dst, position, size, color);
	}
	api.ImageDrawRectangleRec = proc(dst: ^Image, rec: Rectangle, color: Color) {
		raylib.ImageDrawRectangleRec(dst, rec, color);
	}
	api.ImageDrawRectangleLines = proc(dst: ^Image, rec: Rectangle, thick: int, color: Color) {
		raylib.ImageDrawRectangleLines(dst, rec, i32(thick), color);
	}
	api.ImageDraw = proc(dst: ^Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) {
		raylib.ImageDraw(dst, src, srcRec, dstRec, tint);
	}
	api.ImageDrawText = proc(dst: ^Image, text: string, posX: int, posY: int, fontSize: int, color: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.ImageDrawText(dst, text, i32(posX), i32(posY), i32(fontSize), color);
	}
	api.ImageDrawTextEx = proc(dst: ^Image, font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.ImageDrawTextEx(dst, font, text, position, fontSize, spacing, tint);
	}

	// Texture loading functions
	// NOTE: These functions require GPU access
	api.LoadTexture = proc(fileName: cstring) -> Texture2D {
		fmt.println(fileName)
		// fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadTexture(fileName)
	}
	api.LoadTextureFromImage = proc(image: Image) -> Texture2D {
		return raylib.LoadTextureFromImage(image)  ;
	}
	api.LoadTextureCubemap = proc(image: Image, layout: CubemapLayout) -> TextureCubemap {
		return raylib.LoadTextureCubemap(image, layout)  ;
	}
	api.LoadRenderTexture = proc(width: int, height: int) -> RenderTexture2D {
		return raylib.LoadRenderTexture(i32(width), i32(height))  ;
	}
	api.UnloadTexture = proc(texture: Texture2D) {
		raylib.UnloadTexture(texture);
	}
	api.UnloadRenderTexture = proc(target: RenderTexture2D) {
		raylib.UnloadRenderTexture(target);
	}
	api.UpdateTexture = proc(texture: Texture2D, pixels: rawptr) {
		raylib.UpdateTexture(texture, pixels);
	}
	api.UpdateTextureRec = proc(texture: Texture2D, rec: Rectangle, pixels: rawptr) {
		raylib.UpdateTextureRec(texture, rec, pixels);
	}

	// Texture configuration functions
	api.GenTextureMipmaps = proc(texture: ^Texture2D) {
		raylib.GenTextureMipmaps(texture);
	}
	api.SetTextureFilter = proc(texture: Texture2D, filter: TextureFilter) {
		raylib.SetTextureFilter(texture, filter);
	}
	api.SetTextureWrap = proc(texture: Texture2D, wrap: TextureWrap) {
		raylib.SetTextureWrap(texture, wrap);
	}

	// Texture drawing functions
	api.DrawTexture = proc(texture: Texture2D, posX: int, posY: int, tint: Color) {
		raylib.DrawTexture(texture, i32(posX), i32(posY), tint);
	}
	api.DrawTextureV = proc(texture: Texture2D, position: Vector2, tint: Color) {
		raylib.DrawTextureV(texture, position, tint);
	}
	api.DrawTextureEx = proc(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) {
		raylib.DrawTextureEx(texture, position, rotation, scale, tint);
	}
	api.DrawTextureRec = proc(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) {
		raylib.DrawTextureRec(texture, source, position, tint);
	}
	api.DrawTextureQuad = proc(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color) {
		raylib.DrawTextureQuad(texture, tiling, offset, quad, tint);
	}
	api.DrawTextureTiled = proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, scale: f32, tint: Color) {
		raylib.DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint);
	}
	api.DrawTexturePro = proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawTexturePro(texture, source, dest, origin, rotation, tint);
	}
	api.DrawTextureNPatch = proc(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint);
	}
	api.DrawTexturePoly = proc(texture: Texture2D, center: Vector2, points: [^]Vector2, texcoords: [^]Vector2, pointsCount: int, tint: Color) {
		raylib.DrawTexturePoly(texture, center, points, texcoords, i32(pointsCount), tint);
	}

	// Color/pixel related functions
	api.Fade = proc(color: Color, alpha: f32) -> Color {
		return raylib.Fade(color, alpha)  ;
	}
	api.ColorToInt = proc(color: Color) -> int {
		return int(raylib.ColorToInt(color))  ;
	}
	api.ColorNormalize = proc(color: Color) -> Vector4 {
		return raylib.ColorNormalize(color)  ;
	}
	api.ColorFromNormalized = proc(normalized: Vector4) -> Color {
		return raylib.ColorFromNormalized(normalized)  ;
	}
	api.ColorToHSV = proc(color: Color) -> Vector3 {
		return raylib.ColorToHSV(color)  ;
	}
	api.ColorFromHSV = proc(hue: f32, saturation: f32, value: f32) -> Color {
		return raylib.ColorFromHSV(hue, saturation, value)  ;
	}
	api.ColorAlpha = proc(color: Color, alpha: f32) -> Color {
		return raylib.ColorAlpha(color, alpha)  ;
	}
	api.ColorAlphaBlend = proc(dst: Color, src: Color, tint: Color) -> Color {
		return raylib.ColorAlphaBlend(dst, src, tint)  ;
	}
	api.GetColor = proc(hexValue: u32) -> Color {
		return raylib.GetColor(i32(hexValue))  ;
	}
	api.GetPixelColor = proc(srcPtr: rawptr, format: PixelFormat) -> Color {
		return raylib.GetPixelColor(srcPtr, format)  ;
	}
	api.SetPixelColor = proc(dstPtr: rawptr, color: Color, format: PixelFormat) {
		raylib.SetPixelColor(dstPtr, color, format);
	}
	api.GetPixelDataSize = proc(width: int, height: int, format: PixelFormat) -> int {
		return int(raylib.GetPixelDataSize(i32(width), i32(height), format))  ;
	}

	// module: text

	//  font loading/unloading functions
	api.GetFontDefault = proc() -> Font {
		return raylib.GetFontDefault()  ;
	}
	api.LoadFont = proc(fileName: string) -> Font {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadFont(fileName)  ;
	}
	api.LoadFontEx = proc(fileName: string, fontSize: int, fontChars: []rune, glyphCount: int) -> Font {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadFontEx(fileName, i32(fontSize), nil, i32(glyphCount))
	}
	api.LoadFontFromImage = proc(image: Image, key: Color, firstChar: rune) -> Font {
		return raylib.LoadFontFromImage(image, key, firstChar)  ;
	}
	api.LoadFontFromMemory = proc(fileType: string, fileData: []u8, fontSize: int, fontChars: []rune) -> Font {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadFontFromMemory(fileType, &fileData[0], i32(len(fileData)), i32(fontSize), &fontChars[0], i32(len(fontChars)))  ;
	}
	api.LoadFontData = proc(fileData: []u8, fontSize: int, fontChars: []rune, _type: FontType) -> ^GlyphInfo {
		return raylib.LoadFontData(&fileData[0], i32(len(fileData)), i32(fontSize), &fontChars[0], i32(len(fontChars)), _type);
	}
	api.GenImageFontAtlas = proc(chars: [^]GlyphInfo, recs: [^][^]Rectangle, glyphCount: int, fontSize: int, padding: int, packMethod: int) -> Image {
		return raylib.GenImageFontAtlas(chars, recs, i32(glyphCount), i32(fontSize), i32(padding), i32(packMethod))  ;
	}
	api.UnloadFontData = proc(chars: []GlyphInfo) {
		raylib.UnloadFontData(&chars[0], i32(len(chars)));
	}
	api.UnloadFont = proc(font: Font) {
		raylib.UnloadFont(font);
	}

	// Text drawing functions
	api.DrawFPS = proc(posX: int, posY: int) {
		raylib.DrawFPS(i32(posX), i32(posY));
	}
	api.DrawText = proc(text: string, posX: int, posY: int, fontSize: int, color: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawText(text, i32(posX), i32(posY), i32(fontSize), color);
	}
	api.DrawTextEx = proc(font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawTextEx(font, text, position, fontSize, spacing, tint);
	}
	api.DrawTextPro = proc(font: Font, text: string, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawTextPro(font, text, position, origin, rotation, fontSize, spacing, tint);
	}
	api.DrawTextCodepoint = proc(font: Font, fontSize: f32, codepoint: rune, position: Vector2, tint: Color) {
		raylib.DrawTextCodepoint(font, codepoint, position, fontSize, tint)
	}

	// Text misc. functions
	api.MeasureText = proc(text: string, fontSize: int) -> int {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return int(raylib.MeasureText(text, i32(fontSize)))  ;
	}
	api.MeasureTextEx = proc(font: Font, text: string, fontSize: f32, spacing: f32) -> Vector2 {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.MeasureTextEx(font, text, fontSize, spacing)  ;
	}
	api.GetGlyphIndex = proc(font: Font, codepoint: rune) -> int {
		return int(raylib.GetGlyphIndex(font, codepoint))  ;
	}
	api.GetGlyphInfo = proc(font: Font, codepoint: rune) -> GlyphInfo {
		return raylib.GetGlyphInfo(font, codepoint)  ;
	}
	api.GetGlyphAtlasRec = proc(font: Font, codepoint: rune) -> Rectangle {
		return raylib.GetGlyphAtlasRec(font, codepoint)  ;
	}

	// Text codepoints management functions (characters: unicode)
	api.LoadCodepoints = proc(text: string) -> []rune {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		count :i32
		result := raylib.LoadCodepoints(text, &count);
		return result[:count]
	}
	api.UnloadCodepoints = proc(codepoints: []rune) {
		raylib.UnloadCodepoints(&codepoints[0]);
	}
	api.GetCodepointCount = proc(text: string) -> int {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return int(raylib.GetCodepointCount(text))
	}
	// api.GetCodepoint = proc(text: string, bytesProcessed: [^]int) -> int {
	// 	text := strings.clone_to_cstring(text, context.temp_allocator)
	// 	return raylib.GetCodepoint(text, bytesProcessed)  ;
	// }
	// api.CodepointToUTF8 = proc(codepoint: rune, byteSize: [^]int) -> string {
	// 	return string(raylib.CodepointToUTF8(codepoint, byteSize))
	// }
	api.TextCodepointsToUTF8 = proc(codepoints: []rune) -> string {
		return string(raylib.TextCodepointsToUTF8(&codepoints[0], i32(len(codepoints))))
	}

	// module: models

	// Basic geometric 3D shapes drawing functions
	api.DrawLine3D = proc(startPos: Vector3, endPos: Vector3, color: Color) {
		raylib.DrawLine3D(startPos, endPos, color);
	}
	api.DrawPoint3D = proc(position: Vector3, color: Color) {
		raylib.DrawPoint3D(position, color);
	}
	api.DrawCircle3D = proc(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) {
		raylib.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color);
	}
	api.DrawTriangle3D = proc(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) {
		raylib.DrawTriangle3D(v1, v2, v3, color);
	}
	api.DrawTriangleStrip3D = proc(points: []Vector3, color: Color) {
		raylib.DrawTriangleStrip3D(&points[0], i32(len(points)), color);
	}
	api.DrawCube = proc(position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCube(position, width, height, length, color);
	}
	api.DrawCubeV = proc(position: Vector3, size: Vector3, color: Color) {
		raylib.DrawCubeV(position, size, color);
	}
	api.DrawCubeWires = proc(position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeWires(position, width, height, length, color);
	}
	api.DrawCubeWiresV = proc(position: Vector3, size: Vector3, color: Color) {
		raylib.DrawCubeWiresV(position, size, color);
	}
	api.DrawCubeTexture = proc(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeTexture(texture, position, width, height, length, color);
	}
	api.DrawCubeTextureRec = proc(texture: Texture2D, source: Rectangle, position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeTextureRec(texture, source, position, width, height, length, color);
	}
	api.DrawSphere = proc(centerPos: Vector3, radius: f32, color: Color) {
		raylib.DrawSphere(centerPos, radius, color);
	}
	api.DrawSphereEx = proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) {
		raylib.DrawSphereEx(centerPos, radius, i32(rings), i32(slices), color);
	}
	api.DrawSphereWires = proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) {
		raylib.DrawSphereWires(centerPos, radius, i32(rings), i32(slices), color);
	}
	api.DrawCylinder = proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) {
		raylib.DrawCylinder(position, radiusTop, radiusBottom, height, i32(slices), color);
	}
	api.DrawCylinderEx = proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) {
		raylib.DrawCylinderEx(startPos, endPos, startRadius, endRadius, i32(sides), color);
	}
	api.DrawCylinderWires = proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) {
		raylib.DrawCylinderWires(position, radiusTop, radiusBottom, height, i32(slices), color);
	}
	api.DrawCylinderWiresEx = proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) {
		raylib.DrawCylinderWiresEx(startPos, endPos, startRadius, endRadius, i32(sides), color);
	}
	api.DrawPlane = proc(centerPos: Vector3, size: Vector2, color: Color) {
		raylib.DrawPlane(centerPos, size, color);
	}
	api.DrawRay = proc(ray: Ray, color: Color) {
		raylib.DrawRay(ray, color);
	}
	api.DrawGrid = proc(slices: int, spacing: f32) {
		raylib.DrawGrid(i32(slices), spacing);
	}

	// Model loading/unloading functions
	api.LoadModel = proc(fileName: string) -> Model {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadModel(fileName)  ;
	}
	api.LoadModelFromMesh = proc(mesh: Mesh) -> Model {
		return raylib.LoadModelFromMesh(mesh)  ;
	}
	api.UnloadModel = proc(model: Model) {
		raylib.UnloadModel(model);
	}
	api.UnloadModelKeepMeshes = proc(model: Model) {
		raylib.UnloadModelKeepMeshes(model);
	}
	api.GetModelBoundingBox = proc(model: Model) -> BoundingBox {
		return raylib.GetModelBoundingBox(model)  ;
	}

	// Model drawing functions
	api.DrawModel = proc(model: Model, position: Vector3, scale: f32, tint: Color) {
		raylib.DrawModel(model, position, scale, tint);
	}
	api.DrawModelEx = proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) {
		raylib.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	api.DrawModelWires = proc(model: Model, position: Vector3, scale: f32, tint: Color) {
		raylib.DrawModelWires(model, position, scale, tint);
	}
	api.DrawModelWiresEx = proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) {
		raylib.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	api.DrawBoundingBox = proc(box: BoundingBox, color: Color) {
		raylib.DrawBoundingBox(box, color);
	}
	api.DrawBillboard = proc(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color) {
		raylib.DrawBillboard(camera, texture, position, size, tint);
	}
	api.DrawBillboardRec = proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: f32, tint: Color) {
		raylib.DrawBillboardRec(camera, texture, source, position, size, tint);
	}
	api.DrawBillboardPro = proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawBillboardPro(camera, texture, source, position, up, size, origin, rotation, tint);
	}

	// Mesh management functions
	api.UploadMesh = proc(mesh: ^Mesh, is_dynamic: bool) {
		raylib.UploadMesh(mesh, is_dynamic);
	}
	api.UpdateMeshBuffer = proc(mesh: Mesh, index: int, data: rawptr, dataSize: int, offset: int) {
		raylib.UpdateMeshBuffer(mesh, i32(index), data, i32(dataSize), i32(offset));
	}
	api.UnloadMesh = proc(mesh: Mesh) {
		raylib.UnloadMesh(mesh);
	}
	api.DrawMesh = proc(mesh: Mesh, material: Material, transform: Matrix) {
		raylib.DrawMesh(mesh, material, transform);
	}
	api.DrawMeshInstanced = proc(mesh: Mesh, material: Material, transforms: []Matrix) {
		raylib.DrawMeshInstanced(mesh, material, &transforms[0], i32(len(transforms)));
	}
	api.ExportMesh = proc(mesh: Mesh, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportMesh(mesh, fileName)  ;
	}
	api.GetMeshBoundingBox = proc(mesh: Mesh) -> BoundingBox {
		return raylib.GetMeshBoundingBox(mesh)  ;
	}
	api.GenMeshTangents = proc(mesh: ^Mesh) {
		raylib.GenMeshTangents(mesh);
	}
	api.GenMeshBinormals = proc(mesh: ^Mesh) {
		raylib.GenMeshBinormals(mesh);
	}

	// Mesh generation functions
	api.GenMeshPoly = proc(sides: int, radius: f32) -> Mesh {
		return raylib.GenMeshPoly(i32(sides), radius)  ;
	}
	api.GenMeshPlane = proc(width: f32, length: f32, resX: int, resZ: int) -> Mesh {
		return raylib.GenMeshPlane(width, length, i32(resX), i32(resZ))  ;
	}
	api.GenMeshCube = proc(width: f32, height: f32, length: f32) -> Mesh {
		return raylib.GenMeshCube(width, height, length)  ;
	}
	api.GenMeshSphere = proc(radius: f32, rings: int, slices: int) -> Mesh {
		return raylib.GenMeshSphere(radius, i32(rings), i32(slices))  ;
	}
	api.GenMeshHemiSphere = proc(radius: f32, rings: int, slices: int) -> Mesh {
		return raylib.GenMeshHemiSphere(radius, i32(rings), i32(slices))  ;
	}
	api.GenMeshCylinder = proc(radius: f32, height: f32, slices: int) -> Mesh {
		return raylib.GenMeshCylinder(radius, height, i32(slices))  ;
	}
	api.GenMeshCone = proc(radius: f32, height: f32, slices: int) -> Mesh {
		return raylib.GenMeshCone(radius, height, i32(slices))  ;
	}
	api.GenMeshTorus = proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh {
		return raylib.GenMeshTorus(radius, size, i32(radSeg), i32(sides))  ;
	}
	api.GenMeshKnot = proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh {
		return raylib.GenMeshKnot(radius, size, i32(radSeg), i32(sides))  ;
	}
	api.GenMeshHeightmap = proc(heightmap: Image, size: Vector3) -> Mesh {
		return raylib.GenMeshHeightmap(heightmap, size)  ;
	}
	api.GenMeshCubicmap = proc(cubicmap: Image, cubeSize: Vector3) -> Mesh {
		return raylib.GenMeshCubicmap(cubicmap, cubeSize)  ;
	}

	// Material loading/unloading functions
	api.LoadMaterials = proc(fileName: string) -> []Material {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n: i32
		result := raylib.LoadMaterials(fileName, &n);
		return result[:n]
	}
	api.LoadMaterialDefault = proc() -> Material {
		return raylib.LoadMaterialDefault()
	}
	api.UnloadMaterial = proc(material: Material) {
		raylib.UnloadMaterial(material);
	}
	api.SetMaterialTexture = proc(material: ^Material, mapType: MaterialMapIndex, texture: Texture2D) {
		raylib.SetMaterialTexture(material, mapType, texture);
	}
	api.SetModelMeshMaterial = proc(model: ^Model, meshId: int, materialId: int) {
		raylib.SetModelMeshMaterial(model, i32(meshId), i32(materialId));
	}

	// Model animations loading/unloading functions
	api.LoadModelAnimations = proc(fileName: string) -> []ModelAnimation {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n : i32
		result := raylib.LoadModelAnimations(fileName, &n);
		return result[:n]
	}
	api.UpdateModelAnimation = proc(model: Model, anim: ModelAnimation, frame: int) {
		raylib.UpdateModelAnimation(model, anim, i32(frame));
	}
	api.UnloadModelAnimation = proc(anim: ModelAnimation) {
		raylib.UnloadModelAnimation(anim);
	}
	api.UnloadModelAnimations = proc(animations: []ModelAnimation) {
		raylib.UnloadModelAnimations(&animations[0], u32(len(animations)));
	}
	api.IsModelAnimationValid = proc(model: Model, anim: ModelAnimation) -> bool {
		return raylib.IsModelAnimationValid(model, anim)  ;
	}

	// Collision detection functions
	api.CheckCollisionSpheres = proc(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) -> bool {
		return raylib.CheckCollisionSpheres(center1, radius1, center2, radius2)  ;
	}
	api.CheckCollisionBoxes = proc(box1: BoundingBox, box2: BoundingBox) -> bool {
		return raylib.CheckCollisionBoxes(box1, box2)  ;
	}
	api.CheckCollisionBoxSphere = proc(box: BoundingBox, center: Vector3, radius: f32) -> bool {
		return raylib.CheckCollisionBoxSphere(box, center, radius)  ;
	}
	api.GetRayCollisionSphere = proc(ray: Ray, center: Vector3, radius: f32) -> RayCollision {
		return raylib.GetRayCollisionSphere(ray, center, radius)  ;
	}
	api.GetRayCollisionBox = proc(ray: Ray, box: BoundingBox) -> RayCollision {
		return raylib.GetRayCollisionBox(ray, box)  ;
	}
	api.GetRayCollisionModel = proc(ray: Ray, model: Model) -> RayCollision {
		return raylib.GetRayCollisionModel(ray, model)  ;
	}
	api.GetRayCollisionMesh = proc(ray: Ray, mesh: Mesh, transform: Matrix) -> RayCollision {
		return raylib.GetRayCollisionMesh(ray, mesh, transform)  ;
	}
	api.GetRayCollisionTriangle = proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) -> RayCollision {
		return raylib.GetRayCollisionTriangle(ray, p1, p2, p3)  ;
	}
	api.GetRayCollisionQuad = proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) -> RayCollision {
		return raylib.GetRayCollisionQuad(ray, p1, p2, p3, p4)  ;
	}

	// module: audio

	// audio device management functions
	api.InitAudioDevice = proc() {
		raylib.InitAudioDevice();
	}
	api.CloseAudioDevice = proc() {
		raylib.CloseAudioDevice();
	}
	api.IsAudioDeviceReady = proc() -> bool {
		return raylib.IsAudioDeviceReady()
	}
	api.SetMasterVolume = proc(volume: f32) {
		raylib.SetMasterVolume(volume);
	}

	// Wave/Sound loading/unloading functions
	api.LoadWave = proc(fileName: string) -> Wave {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadWave(fileName)  ;
	}
	api.LoadWaveFromMemory = proc(fileType: string, data: []u8) -> Wave {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadWaveFromMemory(fileType, &data[0], i32(len(data)))  
	}
	api.LoadSound = proc(fileName: string) -> Sound {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadSound(fileName)  ;
	}
	api.LoadSoundFromWave = proc(wave: Wave) -> Sound {
		return raylib.LoadSoundFromWave(wave)  ;
	}
	api.UpdateSound = proc(sound: Sound, data: rawptr, samplesCount: int) {
		raylib.UpdateSound(sound, data, i32(samplesCount));
	}
	api.UnloadWave = proc(wave: Wave) {
		raylib.UnloadWave(wave);
	}
	api.UnloadSound = proc(sound: Sound) {
		raylib.UnloadSound(sound);
	}
	api.ExportWave = proc(wave: Wave, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportWave(wave, fileName)  ;
	}
	api.ExportWaveAsCode = proc(wave: Wave, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportWaveAsCode(wave, fileName)  ;
	}

	// Wave/Sound management functions
	api.PlaySound = proc(sound: Sound) {
		raylib.PlaySound(sound);
	}
	api.StopSound = proc(sound: Sound) {
		raylib.StopSound(sound);
	}
	api.PauseSound = proc(sound: Sound) {
		raylib.PauseSound(sound);
	}
	api.ResumeSound = proc(sound: Sound) {
		raylib.ResumeSound(sound);
	}
	api.PlaySoundMulti = proc(sound: Sound) {
		raylib.PlaySoundMulti(sound);
	}
	api.StopSoundMulti = proc() {
		raylib.StopSoundMulti();
	}
	api.GetSoundsPlaying = proc() -> int {
		return int(raylib.GetSoundsPlaying())
	}
	api.IsSoundPlaying = proc(sound: Sound) -> bool {
		return raylib.IsSoundPlaying(sound)  
	}
	api.SetSoundVolume = proc(sound: Sound, volume: f32) {
		raylib.SetSoundVolume(sound, volume)
	}
	api.SetSoundPitch = proc(sound: Sound, pitch: f32) {
		raylib.SetSoundPitch(sound, pitch)
	}
	api.WaveFormat = proc(wave: ^Wave, sampleRate: int, sampleSize: int, channels: int) {
		raylib.WaveFormat(wave, i32(sampleRate), i32(sampleSize), i32(channels));
	}
	api.WaveCopy = proc(wave: Wave) -> Wave {
		return raylib.WaveCopy(wave)  ;
	}
	api.WaveCrop = proc(wave: ^Wave, initSample: int, finalSample: int) {
		raylib.WaveCrop(wave, i32(initSample), i32(finalSample));
	}
	api.LoadWaveSamples = proc(wave: Wave) -> ^f32 {
		return raylib.LoadWaveSamples(wave);
	}
	api.UnloadWaveSamples = proc(samples: ^f32) {
		raylib.UnloadWaveSamples(samples);
	}

	// Music management functions
	api.LoadMusicStream = proc(fileName: string) -> Music {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadMusicStream(fileName)  ;
	}
	api.LoadMusicStreamFromMemory = proc(fileType: string, data: []u8) -> Music {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadMusicStreamFromMemory(fileType, &data[0], i32(len(data)))
	}
	api.UnloadMusicStream = proc(music: Music) {
		raylib.UnloadMusicStream(music);
	}
	api.PlayMusicStream = proc(music: Music) {
		raylib.PlayMusicStream(music);
	}
	api.IsMusicStreamPlaying = proc(music: Music) -> bool {
		return raylib.IsMusicStreamPlaying(music)  ;
	}
	api.UpdateMusicStream = proc(music: Music) {
		raylib.UpdateMusicStream(music);
	}
	api.StopMusicStream = proc(music: Music) {
		raylib.StopMusicStream(music);
	}
	api.PauseMusicStream = proc(music: Music) {
		raylib.PauseMusicStream(music);
	}
	api.ResumeMusicStream = proc(music: Music) {
		raylib.ResumeMusicStream(music);
	}
	api.SeekMusicStream = proc(music: Music, position: f32) {
		raylib.SeekMusicStream(music, position);
	}
	api.SetMusicVolume = proc(music: Music, volume: f32) {
		raylib.SetMusicVolume(music, volume);
	}
	api.SetMusicPitch = proc(music: Music, pitch: f32) {
		raylib.SetMusicPitch(music, pitch);
	}
	api.GetMusicTimeLength = proc(music: Music) -> f32 {
		return raylib.GetMusicTimeLength(music)  ;
	}
	api.GetMusicTimePlayed = proc(music: Music) -> f32 {
		return raylib.GetMusicTimePlayed(music)  ;
	}

	// AudioStream management functions
	api.LoadAudioStream = proc(sampleRate: u32, sampleSize: u32, channels: u32) -> AudioStream {
		return raylib.LoadAudioStream(sampleRate, sampleSize, channels)  ;
	}
	api.UpdateAudioStream = proc(stream: AudioStream, data: rawptr, samplesCount: int) {
		raylib.UpdateAudioStream(stream, data, i32(samplesCount));
	}
	// api.CloseAudioStream = proc(stream: AudioStream) {
		// raylib.CloseAudioStream(stream);
	// }
	api.IsAudioStreamProcessed = proc(stream: AudioStream) -> bool {
		return raylib.IsAudioStreamProcessed(stream)  ;
	}
	api.PlayAudioStream = proc(stream: AudioStream) {
		raylib.PlayAudioStream(stream);
	}
	api.PauseAudioStream = proc(stream: AudioStream) {
		raylib.PauseAudioStream(stream);
	}
	api.ResumeAudioStream = proc(stream: AudioStream) {
		raylib.ResumeAudioStream(stream);
	}
	api.IsAudioStreamPlaying = proc(stream: AudioStream) -> bool {
		return raylib.IsAudioStreamPlaying(stream)  ;
	}
	api.StopAudioStream = proc(stream: AudioStream) {
		raylib.StopAudioStream(stream);
	}
	api.SetAudioStreamVolume = proc(stream: AudioStream, volume: f32) {
		raylib.SetAudioStreamVolume(stream, volume);
	}
	api.SetAudioStreamPitch = proc(stream: AudioStream, pitch: f32) {
		raylib.SetAudioStreamPitch(stream, pitch);
	}
	api.SetAudioStreamBufferSizeDefault = proc(size: int) {
		raylib.SetAudioStreamBufferSizeDefault(i32(size));
	}
}
