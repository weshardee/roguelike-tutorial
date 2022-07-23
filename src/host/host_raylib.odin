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
	rl := &shared.get_ctx().rl

	rl.IsWindowReady = proc() -> bool {
		return raylib.IsWindowReady()  ;
	}
	rl.IsWindowFullscreen = proc() -> bool {
		return raylib.IsWindowFullscreen()  ;
	}
	rl.IsWindowHidden = proc() -> bool {
		return raylib.IsWindowHidden()  ;
	}
	rl.IsWindowMinimized = proc() -> bool {
		return raylib.IsWindowMinimized()  ;
	}
	rl.IsWindowMaximized = proc() -> bool {
		return raylib.IsWindowMaximized()  ;
	}
	rl.IsWindowFocused = proc() -> bool {
		return raylib.IsWindowFocused()  ;
	}
	rl.IsWindowResized = proc() -> bool {
		return raylib.IsWindowResized()
	}
	rl.IsWindowState = proc(flag: ConfigFlags) -> bool {
		return raylib.IsWindowState(flag)  ;
	}
	rl.SetWindowState = proc(flags: ConfigFlags) {
		raylib.SetWindowState(flags);
	}
	rl.ClearWindowState = proc(flags: ConfigFlags) {
		raylib.ClearWindowState(flags);
	}
	rl.ToggleFullscreen = proc() {
		raylib.ToggleFullscreen();
	}
	rl.MaximizeWindow = proc() {
		raylib.MaximizeWindow();
	}
	rl.MinimizeWindow = proc() {
		raylib.MinimizeWindow();
	}
	rl.RestoreWindow = proc() {
		raylib.RestoreWindow()
	}
	rl.SetWindowIcon = proc(image: Image) {
		raylib.SetWindowIcon(image);
	}
	rl.SetWindowTitle = proc(title: string) {
		title := strings.clone_to_cstring(title, context.temp_allocator)
		raylib.SetWindowTitle(title);
	}
	rl.SetWindowPosition = proc(x: int, y: int) {
		raylib.SetWindowPosition(i32(x), i32(y)) 
	}
	rl.SetWindowMonitor = proc(monitor: int) {
		raylib.SetWindowMonitor(i32(monitor));
	}
	rl.SetWindowMinSize = proc(width: int, height: int) {
		raylib.SetWindowMinSize(i32(width), i32(height));
	}
	rl.SetWindowSize = proc(width: int, height: int) {
		raylib.SetWindowSize(i32(width), i32(height));
	}
	rl.GetWindowHandle = proc() -> rawptr {
		return raylib.GetWindowHandle()  ;
	}
	rl.GetScreenWidth = proc() -> int {
		return int(raylib.GetScreenWidth());
	}
	rl.GetScreenHeight = proc() -> int {
		return int(raylib.GetScreenHeight());
	}
	rl.GetMonitorCount = proc() -> int {
		return int(raylib.GetMonitorCount());
	}
	rl.GetCurrentMonitor = proc() -> int {
		return int(raylib.GetCurrentMonitor())
	}
	rl.GetMonitorPosition = proc(monitor: int) -> Vector2 {
		return raylib.GetMonitorPosition(i32(monitor))  ;
	}
	rl.GetMonitorWidth = proc(monitor: int) -> int {
		return int(raylib.GetMonitorWidth(i32(monitor)))  ;
	}
	rl.GetMonitorHeight = proc(monitor: int) -> int {
		return int(raylib.GetMonitorHeight(i32(monitor)))  ;
	}
	rl.GetMonitorPhysicalWidth = proc(monitor: int) -> int {
		return int(raylib.GetMonitorPhysicalWidth(i32(monitor)))  ;
	}
	rl.GetMonitorPhysicalHeight = proc(monitor: int) -> int {
		return int(raylib.GetMonitorPhysicalHeight(i32(monitor)))  ;
	}
	rl.GetMonitorRefreshRate = proc(monitor: int) -> int {
		return int(raylib.GetMonitorRefreshRate(i32(monitor)))  ;
	}
	rl.GetWindowPosition = proc() -> Vector2 {
		return raylib.GetWindowPosition()  ;
	}
	rl.GetWindowScaleDPI = proc() -> Vector2 {
		return raylib.GetWindowScaleDPI()
	}	
	rl.GetMonitorName = proc(monitor: int) -> string {
		return string(raylib.GetMonitorName(i32(monitor)))  ;
	}
	rl.SetClipboardText = proc(text: string) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.SetClipboardText(text);
	}
	rl.GetClipboardText = proc() -> string {
		return string(raylib.GetClipboardText())
	}

	// cursor-related functions
	rl.ShowCursor = proc() {
		raylib.ShowCursor();
	}
	rl.HideCursor = proc() {
		raylib.HideCursor();
	}
	rl.IsCursorHidden = proc() -> bool {
		return raylib.IsCursorHidden()  ;
	}
	rl.EnableCursor = proc() {
		raylib.EnableCursor();
	}
	rl.DisableCursor = proc() {
		raylib.DisableCursor();
	}
	rl.IsCursorOnScreen = proc() -> bool {
		return raylib.IsCursorOnScreen()
	}

	// Drawing-related functions
	rl.ClearBackground = proc(color: Color) {
		raylib.ClearBackground(color);
	}
	rl.BeginDrawing = proc() {
		raylib.BeginDrawing();
	}
	rl.EndDrawing = proc() {
		raylib.EndDrawing()
	}
	rl.BeginMode2D = proc(camera: Camera2D) {
		raylib.BeginMode2D(camera);
	}
	rl.EndMode2D = proc() {
		raylib.EndMode2D()
	}
	rl.BeginMode3D = proc(camera: Camera3D) {
		raylib.BeginMode3D(camera);
	}
	rl.EndMode3D = proc() {
		raylib.EndMode3D()
	}
	rl.BeginTextureMode = proc(target: RenderTexture2D) {
		raylib.BeginTextureMode(target);
	}
	rl.EndTextureMode = proc() {
raylib.EndTextureMode()
	}
	rl.BeginShaderMode = proc(shader: Shader) {
		raylib.BeginShaderMode(shader);
	}
	rl.EndShaderMode = proc() {
		raylib.EndShaderMode()
	}
	rl.BeginBlendMode = proc(mode: BlendMode) {
		raylib.BeginBlendMode(mode);
	}
	rl.EndBlendMode = proc() {
		raylib.EndBlendMode()
	}
	rl.BeginScissorMode = proc(x: int, y: int, width: int, height: int) {
		raylib.BeginScissorMode(i32(x), i32(y), i32(width), i32(height));
	}
	rl.EndScissorMode = proc() {
		raylib.EndScissorMode()
	}
	rl.BeginVrStereoMode = proc(config: VrStereoConfig) {
		raylib.BeginVrStereoMode(config);
	}
	rl.EndVrStereoMode= proc() {
		raylib.EndVrStereoMode()
	}

	// VR stereo config functions for VR simulator
	rl.LoadVrStereoConfig = proc(device: VrDeviceInfo) -> VrStereoConfig {
		return raylib.LoadVrStereoConfig(device)  ;
	}
	rl.UnloadVrStereoConfig = proc(config: VrStereoConfig) {
		raylib.UnloadVrStereoConfig(config);
	}

	// Shader management functions
	// NOTE: Shader functionality is not available on OpenGL 1.1
	rl.LoadShader = proc(vsFileName: string, fsFileName: string) -> Shader {
		vsFileName := strings.clone_to_cstring(vsFileName, context.temp_allocator)
		fsFileName := strings.clone_to_cstring(fsFileName, context.temp_allocator)
		return raylib.LoadShader(vsFileName, fsFileName)  ;
	}
	rl.LoadShaderFromMemory = proc(vsCode: string, fsCode: string) -> Shader {
		vsCode := strings.clone_to_cstring(vsCode, context.temp_allocator)
		fsCode := strings.clone_to_cstring(fsCode, context.temp_allocator)
		return raylib.LoadShaderFromMemory(vsCode, fsCode)  ;
	}
	rl.GetShaderLocation = proc(shader: Shader, uniformName: string) -> int {
		uniformName := strings.clone_to_cstring(uniformName, context.temp_allocator)
		return int(raylib.GetShaderLocation(shader, uniformName))  ;
	}
	rl.GetShaderLocationAttrib = proc(shader: Shader, attribName: string) -> int {
		attribName := strings.clone_to_cstring(attribName, context.temp_allocator);
		return int(raylib.GetShaderLocationAttrib(shader, attribName))  ;
	}
	rl.SetShaderValue = proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType) {
		raylib.SetShaderValue(shader, locIndex, value, uniformType);
	}
	rl.SetShaderValueV = proc(shader: Shader, locIndex: ShaderLocationIndex, value: rawptr, uniformType: ShaderUniformDataType, count: int) {
		raylib.SetShaderValueV(shader, locIndex, value, uniformType, i32(count));
	}
	rl.SetShaderValueMatrix = proc(shader: Shader, locIndex: ShaderLocationIndex, mat: Matrix) {
		raylib.SetShaderValueMatrix(shader, locIndex, mat);
	}
	rl.SetShaderValueTexture = proc(shader: Shader, locIndex: ShaderLocationIndex, texture: Texture2D) {
		raylib.SetShaderValueTexture(shader, locIndex, texture);
	}
	rl.UnloadShader = proc(shader: Shader) {
		raylib.UnloadShader(shader);
	}

	// Screen-space-related functions
	rl.GetMouseRay = proc(mousePosition: Vector2, camera: Camera) -> Ray {
		return raylib.GetMouseRay(mousePosition, camera)  ;
	}
	rl.GetCameraMatrix = proc(camera: Camera) -> Matrix {
		return raylib.GetCameraMatrix(camera)  ;
	}
	rl.GetCameraMatrix2D = proc(camera: Camera2D) -> Matrix {
		return raylib.GetCameraMatrix2D(camera)  ;
	}
	rl.GetWorldToScreen = proc(position: Vector3, camera: Camera) -> Vector2 {
		return raylib.GetWorldToScreen(position, camera)  ;
	}
	rl.GetWorldToScreenEx = proc(position: Vector3, camera: Camera, width: int, height: int) -> Vector2 {
		return raylib.GetWorldToScreenEx(position, camera, i32(width), i32(height))  ;
	}
	rl.GetWorldToScreen2D = proc(position: Vector2, camera: Camera2D) -> Vector2 {
		return raylib.GetWorldToScreen2D(position, camera)  ;
	}
	rl.GetScreenToWorld2D = proc(position: Vector2, camera: Camera2D) -> Vector2 {
		return raylib.GetScreenToWorld2D(position, camera)  ;
	}

	// Timing-related functions
	rl.SetTargetFPS = proc(fps: int) {
		raylib.SetTargetFPS(i32(fps));
	}
	rl.GetFPS = proc() -> int {
		return int(raylib.GetFPS())  ;
	}
	rl.GetFrameTime = proc() -> f32 {
		return raylib.GetFrameTime()  ;
	}
	rl.GetTime = proc() -> f64 {
		return raylib.GetTime()
	}

	// Misc. functions
	rl.GetRandomValue = proc(min: int, max: int) -> int {
		return int(raylib.GetRandomValue(i32(min), i32(max)))  ;
	}
	rl.SetRandomSeed = proc(seed: u32) {
		raylib.SetRandomSeed(seed);
	}
	rl.TakeScreenshot = proc(fileName: string) {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		raylib.TakeScreenshot(fileName);
	}
	rl.SetConfigFlags = proc(flags: ConfigFlags) {
		raylib.SetConfigFlags(flags);
	}

	rl.TraceLog = proc(logLevel: TraceLogLevel, text: string, args: ..any) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.TraceLog(logLevel = logLevel, text = text, args = args);
	}
	rl.SetTraceLogLevel = proc(logLevel: TraceLogLevel) {
		raylib.SetTraceLogLevel(logLevel);
	}

	// Set custom callbacks
	// WARNING: Callbacks setup is intended for advance users

	// Files management functions
	rl.LoadFileData = proc(fileName: string) -> []u8 {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n : u32
		bytes := raylib.LoadFileData(fileName, &n)
		return bytes[:n]
	}
	rl.UnloadFileData = proc(data: []u8) {
		raylib.UnloadFileData(&data[0]);
	}
	rl.SaveFileData = proc(fileName: string, data: []byte) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		// TODO should this be len(data) or size_of(data)
		return raylib.SaveFileData(fileName, &data[0], size_of(data))  ;
	}
	rl.LoadFileText = proc(fileName: string) -> string {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return string(cstring(raylib.LoadFileText(fileName)));
	}
	rl.UnloadFileText = proc(text: string) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.UnloadFileText(text);
	}
	rl.SaveFileText = proc(fileName: string, text: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.SaveFileText(fileName, text)  ;
	}
	rl.FileExists = proc(fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.FileExists(fileName)  ;
	}
	rl.DirectoryExists = proc(dirPath: string) -> bool {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		return raylib.DirectoryExists(dirPath)  ;
	}
	rl.IsFileExtension = proc(fileName: string, ext: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		ext:= strings.clone_to_cstring(ext, context.temp_allocator)
		return raylib.IsFileExtension(fileName, ext)  ;
	}
	rl.GetFileExtension = proc(fileName: string) -> string {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return string(raylib.GetFileExtension(fileName))
	}
	rl.GetFileName = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetFileName(filePath)) 
	}
	rl.GetFileNameWithoutExt = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetFileNameWithoutExt(filePath))  
	}
	rl.GetDirectoryPath = proc(filePath: string) -> string {
		filePath := strings.clone_to_cstring(filePath, context.temp_allocator)
		return string(raylib.GetDirectoryPath(filePath)) 
	}
	rl.GetPrevDirectoryPath = proc(dirPath: string) -> string {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		return string(raylib.GetPrevDirectoryPath(dirPath)) 
	}
	rl.GetWorkingDirectory = proc() -> string {
		return string(raylib.GetWorkingDirectory())
	}
	rl.GetDirectoryFiles = proc(dirPath: string) -> []cstring {
		dirPath := strings.clone_to_cstring(dirPath, context.temp_allocator)
		count : i32
		names := raylib.GetDirectoryFiles(dirPath, &count);
		return names[:count]
	}
	rl.ClearDirectoryFiles = proc() {
		raylib.ClearDirectoryFiles()
	}
	rl.ChangeDirectory = proc(dir: string) -> bool {
		dir := strings.clone_to_cstring(dir, context.temp_allocator)
		return raylib.ChangeDirectory(dir)  ;
	}
	rl.IsFileDropped = proc() -> bool {
		return raylib.IsFileDropped()
	}
	// rl.LoadDroppedFiles(count: [^]int)                                     {
		// 	raylib.// *LoadDroppedFiles(countint)                                    ;
		// }
		// rl.UnloadDroppedFiles = proc() {
			// raylib.UnloadDroppedFiles()
			// }
	rl.GetFileModTime = proc(fileName: string) -> i64 {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.GetFileModTime(fileName)  ;
	}

	// Compression/Encoding functionality
	rl.CompressData = proc(data: []u8) -> []u8 {
		n: i32;
		result := raylib.CompressData(&data[0], i32(len(data)), &n);
		return result[:n]
	}
	rl.DecompressData = proc(compData: []u8) -> []u8 {
		n: i32;
		result := raylib.DecompressData(&compData[0], i32(len(compData)), &n);
		return result[:n];
	}
	rl.EncodeDataBase64 = proc(data: []u8) -> []u8 {
		n: i32;
		result := raylib.EncodeDataBase64(&data[0], i32(len(data)), &n);
		return result[:n]

	}
	rl.DecodeDataBase64 = proc(data: []u8) -> []u8 {
		n: i32
		result := raylib.DecodeDataBase64(&data[0], &n);
		return result[:n]
	}

	// Persistent storage management
	rl.SaveStorageValue = proc(position: u32, value: int) -> bool {
		return raylib.SaveStorageValue(position, i32(value));
	}
	rl.LoadStorageValue = proc(position: u32) -> int {
		return int(raylib.LoadStorageValue(position));
	}

	// Misc.
	rl.OpenURL = proc(url: string) {
		url := strings.clone_to_cstring(url, context.temp_allocator)
		raylib.OpenURL(url);
	}

	// Input-related functions: keyboard
	rl.IsKeyPressed = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyPressed(key)  ;
	}
	rl.IsKeyDown = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyDown(key)  ;
	}
	rl.IsKeyReleased = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyReleased(key)  ;
	}
	rl.IsKeyUp = proc(key: KeyboardKey) -> bool {
		return raylib.IsKeyUp(key)  ;
	}
	rl.SetExitKey = proc(key: KeyboardKey) {
		raylib.SetExitKey(key);
	}
	rl.GetKeyPressed = proc() -> KeyboardKey {
		return raylib.GetKeyPressed()  ;
	}
	rl.GetCharPressed = proc() -> rune {
		return raylib.GetCharPressed()
	}

	// Input-related functions: gamepads
	rl.IsGamepadAvailable = proc(gamepad: int) -> bool {
		return raylib.IsGamepadAvailable(i32(gamepad))  ;
	}
	rl.GetGamepadName = proc(gamepad: int) -> string {
		return string(raylib.GetGamepadName(i32(gamepad)))
	}
	rl.IsGamepadButtonPressed = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonPressed(i32(gamepad), button)  ;
	}
	rl.IsGamepadButtonDown = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonDown(i32(gamepad), button)  ;
	}
	rl.IsGamepadButtonReleased = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonReleased(i32(gamepad), button)  ;
	}
	rl.IsGamepadButtonUp = proc(gamepad: int, button: GamepadButton) -> bool {
		return raylib.IsGamepadButtonUp(i32(gamepad), button)  ;
	}
	rl.GetGamepadButtonPressed = proc() -> int {
		return int(raylib.GetGamepadButtonPressed())
	}
	rl.GetGamepadAxisCount = proc(gamepad: int) -> int {
		return int(raylib.GetGamepadAxisCount(i32(gamepad)))
	}
	rl.GetGamepadAxisMovement = proc(gamepad: int, axis: GamepadAxis) -> f32 {
		return raylib.GetGamepadAxisMovement(i32(gamepad), axis)  ;
	}
	rl.SetGamepadMappings = proc(mappings: string) -> int {
		mappings := strings.clone_to_cstring(mappings, context.temp_allocator)
		return int(raylib.SetGamepadMappings(mappings))  ;
	}

	// Input-related functions: mouse
	rl.IsMouseButtonPressed = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonPressed(button)  ;
	}
	rl.IsMouseButtonDown = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonDown(button)  ;
	}
	rl.IsMouseButtonReleased = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonReleased(button)  ;
	}
	rl.IsMouseButtonUp = proc(button: MouseButton) -> bool {
		return raylib.IsMouseButtonUp(button)  ;
	}
	rl.GetMouseX = proc() -> int {
		return int(raylib.GetMouseX())  ;
	}
	rl.GetMouseY = proc() -> int {
		return int(raylib.GetMouseY())  ;
	}
	rl.GetMousePosition = proc() -> Vector2 {
		return raylib.GetMousePosition()  ;
	}
	rl.GetMouseDelta = proc() -> Vector2 {
		return raylib.GetMouseDelta()
	}
	rl.SetMousePosition = proc(x: int, y: int) {
		raylib.SetMousePosition(i32(x), i32(y))}
	rl.SetMouseOffset = proc(offsetX: int, offsetY: int) {
		raylib.SetMouseOffset(i32(offsetX), i32(offsetY));
	}
	rl.SetMouseScale = proc(scaleX: f32, scaleY: f32) {
		raylib.SetMouseScale(scaleX, scaleY);
	}
	rl.GetMouseWheelMove = proc() -> f32 {
		return raylib.GetMouseWheelMove()
	}
	rl.SetMouseCursor = proc(cursor: MouseCursor) {
		raylib.SetMouseCursor(cursor);
	}

	rl.GetTouchX = proc() -> int {
		return int(raylib.GetTouchX())
	}
	rl.GetTouchY = proc() -> int {
		return int(raylib.GetTouchY())
	}
	rl.GetTouchPosition = proc(index: int) -> Vector2 {
		return raylib.GetTouchPosition(i32(index))  ;
	}
	rl.GetTouchPointId = proc(index: int) -> int {
		return int(raylib.GetTouchPointId(i32(index)))
	}
	rl.GetTouchPointCount = proc() -> int {
		return int(raylib.GetTouchPointCount())
	}

	// Gestures and Touch Handling Functions (Module: rgestures)
	rl.SetGesturesEnabled = proc(flags: Gestures) {
		raylib.SetGesturesEnabled(flags);
	}
	rl.IsGestureDetected = proc(gesture: Gesture) -> bool {
		return raylib.IsGestureDetected(gesture)  ;
	}
	rl.GetGestureDetected = proc() -> Gesture {
		return raylib.GetGestureDetected()  ;
	}
	rl.GetGestureHoldDuration = proc() -> f32 {
		return raylib.GetGestureHoldDuration()  ;
	}
	rl.GetGestureDragVector = proc() -> Vector2 {
		return raylib.GetGestureDragVector()  ;
	}
	rl.GetGestureDragAngle = proc() -> f32 {
		return raylib.GetGestureDragAngle()  ;
	}
	rl.GetGesturePinchVector = proc() -> Vector2 {
		return raylib.GetGesturePinchVector()  ;
	}
	rl.GetGesturePinchAngle = proc() -> f32 {
		return raylib.GetGesturePinchAngle()
	}

	// Camera System Functions (Module: rcamera)
	rl.SetCameraMode = proc(camera: Camera, mode: CameraMode) {
		raylib.SetCameraMode(camera, mode);
	}
	rl.UpdateCamera = proc(camera: ^Camera) {
		raylib.UpdateCamera(camera);
	}

	rl.SetCameraPanControl = proc(keyPan: KeyboardKey) {
		raylib.SetCameraPanControl(keyPan);
	}
	rl.SetCameraAltControl = proc(keyAlt: KeyboardKey) {
		raylib.SetCameraAltControl(keyAlt);
	}
	rl.SetCameraSmoothZoomControl = proc(keySmoothZoom: KeyboardKey) {
		raylib.SetCameraSmoothZoomControl(keySmoothZoom);
	}
	rl.SetCameraMoveControls = proc(keyFront: KeyboardKey, keyBack: KeyboardKey, keyRight: KeyboardKey, keyLeft: KeyboardKey, keyUp: KeyboardKey, keyDown: KeyboardKey) {
		raylib.SetCameraMoveControls(keyFront, keyBack, keyRight, keyLeft, keyUp, keyDown);
	}

	// module: shapes

	// Set texture and rectangle to be used on shapes drawing
	// NOTE: It can be useful when using basic shapes and one font: single {}
	// defining a font char white rectangle would allow drawing everything in a single draw call
	rl.SetShapesTexture = proc(texture: Texture2D, source: Rectangle) {
		raylib.SetShapesTexture(texture, source);
	}

	// Basic shapes drawing functions
	rl.DrawPixel = proc(posX: int, posY: int, color: Color) {
		raylib.DrawPixel(i32(posX), i32(posY), color);
	}
	rl.DrawPixelV = proc(position: Vector2, color: Color) {
		raylib.DrawPixelV(position, color);
	}
	rl.DrawLine = proc(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) {
		raylib.DrawLine(i32(startPosX), i32(startPosY), i32(endPosX), i32(endPosY), color);
	}
	rl.DrawLineV = proc(startPos: Vector2, endPos: Vector2, color: Color) {
		raylib.DrawLineV(startPos, endPos, color);
	}
	rl.DrawLineEx = proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineEx(startPos, endPos, thick, color);
	}
	rl.DrawLineBezier = proc(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezier(startPos, endPos, thick, color);
	}
	rl.DrawLineBezierQuad = proc(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezierQuad(startPos, endPos, controlPos, thick, color);
	}
	rl.DrawLineBezierCubic = proc(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color) {
		raylib.DrawLineBezierCubic(startPos, endPos, startControlPos, endControlPos, thick, color);
	}
	rl.DrawLineStrip = proc(points: []Vector2, color: Color) {
		raylib.DrawLineStrip(&points[0], i32(len(points)), color);
	}
	rl.DrawCircle = proc(centerX: int, centerY: int, radius: f32, color: Color) {
		raylib.DrawCircle(i32(centerX), i32(centerY), radius, color);
	}
	rl.DrawCircleSector = proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawCircleSector(center, radius, startAngle, endAngle, i32(segments), color);
	}
	rl.DrawCircleSectorLines = proc(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawCircleSectorLines(center, radius, startAngle, endAngle, i32(segments), color);
	}
	rl.DrawCircleGradient = proc(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color) {
		raylib.DrawCircleGradient(i32(centerX), i32(centerY), radius, color1, color2);
	}
	rl.DrawCircleV = proc(center: Vector2, radius: f32, color: Color) {
		raylib.DrawCircleV(center, radius, color);
	}
	rl.DrawCircleLines = proc(centerX: int, centerY: int, radius: f32, color: Color) {
		raylib.DrawCircleLines(i32(centerX), i32(centerY), radius, color);
	}
	rl.DrawEllipse = proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) {
		raylib.DrawEllipse(i32(centerX), i32(centerY), radiusH, radiusV, color);
	}
	rl.DrawEllipseLines = proc(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) {
		raylib.DrawEllipseLines(i32(centerX), i32(centerY), radiusH, radiusV, color);
	}
	rl.DrawRing = proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, i32(segments), color);
	}
	rl.DrawRingLines = proc(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) {
		raylib.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, i32(segments), color);
	}
	rl.DrawRectangle = proc(posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.DrawRectangle(i32(posX), i32(posY), i32(width), i32(height), color);
	}
	rl.DrawRectangleV = proc(position: Vector2, size: Vector2, color: Color) {
		raylib.DrawRectangleV(position, size, color);
	}
	rl.DrawRectangleRec = proc(rec: Rectangle, color: Color) {
		raylib.DrawRectangleRec(rec, color);
	}
	rl.DrawRectanglePro = proc(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) {
		raylib.DrawRectanglePro(rec, origin, rotation, color);
	}
	rl.DrawRectangleGradientV = proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) {
		raylib.DrawRectangleGradientV(i32(posX), i32(posY), i32(width), i32(height), color1, color2);
	}
	rl.DrawRectangleGradientH = proc(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) {
		raylib.DrawRectangleGradientH(i32(posX), i32(posY), i32(width), i32(height), color1, color2);
	}
	rl.DrawRectangleGradientEx = proc(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) {
		raylib.DrawRectangleGradientEx(rec, col1, col2, col3, col4);
	}
	rl.DrawRectangleLines = proc(posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.DrawRectangleLines(i32(posX), i32(posY), i32(width), i32(height), color);
	}
	rl.DrawRectangleLinesEx = proc(rec: Rectangle, lineThick: f32, color: Color) {
		raylib.DrawRectangleLinesEx(rec, lineThick, color);
	}
	rl.DrawRectangleRounded = proc(rec: Rectangle, roundness: f32, segments: int, color: Color) {
		raylib.DrawRectangleRounded(rec, roundness, i32(segments), color);
	}
	rl.DrawRectangleRoundedLines = proc(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) {
		raylib.DrawRectangleRoundedLines(rec, roundness, i32(segments), lineThick, color);
	}
	rl.DrawTriangle = proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) {
		raylib.DrawTriangle(v1, v2, v3, color);
	}
	rl.DrawTriangleLines = proc(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) {
		raylib.DrawTriangleLines(v1, v2, v3, color);
	}
	rl.DrawTriangleFan = proc(points: []Vector2, color: Color) {
		raylib.DrawTriangleFan(&points[0], i32(len(points)), color);
	}
	rl.DrawTriangleStrip = proc(points: []Vector2, color: Color) {
		raylib.DrawTriangleStrip(&points[0], i32(len(points)), color);
	}
	rl.DrawPoly = proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) {
		raylib.DrawPoly(center, i32(sides), radius, rotation, color);
	}
	rl.DrawPolyLines = proc(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) {
		raylib.DrawPolyLines(center, i32(sides), radius, rotation, color);
	}
	rl.DrawPolyLinesEx = proc(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) {
		raylib.DrawPolyLinesEx(center, i32(sides), radius, rotation, lineThick, color);
	}

	// Basic shapes collision detection functions
	rl.CheckCollisionRecs = proc(rec1: Rectangle, rec2: Rectangle) -> bool {
		return raylib.CheckCollisionRecs(rec1, rec2)  ;
	}
	rl.CheckCollisionCircles = proc(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) -> bool {
		return raylib.CheckCollisionCircles(center1, radius1, center2, radius2)  ;
	}
	rl.CheckCollisionCircleRec = proc(center: Vector2, radius: f32, rec: Rectangle) -> bool {
		return raylib.CheckCollisionCircleRec(center, radius, rec)  ;
	}
	rl.CheckCollisionPointRec = proc(point: Vector2, rec: Rectangle) -> bool {
		return raylib.CheckCollisionPointRec(point, rec)  ;
	}
	rl.CheckCollisionPointCircle = proc(point: Vector2, center: Vector2, radius: f32) -> bool {
		return raylib.CheckCollisionPointCircle(point, center, radius)  ;
	}
	rl.CheckCollisionPointTriangle = proc(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) -> bool {
		return raylib.CheckCollisionPointTriangle(point, p1, p2, p3)  ;
	}
	rl.CheckCollisionLines = proc(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2) -> (Vector2, bool) {
		collisionPoint:Vector2
		collided := raylib.CheckCollisionLines(startPos1, endPos1, startPos2, endPos2, &collisionPoint)
		return collisionPoint, collided
	}
	rl.CheckCollisionPointLine = proc(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) -> bool {
		return raylib.CheckCollisionPointLine(point, p1, p2, i32(threshold))  ;
	}
	rl.GetCollisionRec = proc(rec1: Rectangle, rec2: Rectangle) -> Rectangle {
		return raylib.GetCollisionRec(rec1, rec2)  ;
	}

	// module: textures

	// Image loading functions
	// NOTE: These functions do not require GPU access
	rl.LoadImage = proc(fileName: string) -> Image {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadImage(fileName)  ;
	}
	rl.LoadImageRaw = proc(fileName: string, width: int, height: int, format: PixelFormat, headerSize: int) -> Image {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadImageRaw(fileName, i32(width), i32(height), format, i32(headerSize))  ;
	}
	rl.LoadImageAnim = proc(fileName: string) -> (Image, int) {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		frames : i32
		image := raylib.LoadImageAnim(fileName, &frames)
		return image, int(frames)
	}
	rl.LoadImageFromMemory = proc(fileType: string, fileData: []u8) -> Image {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadImageFromMemory(fileType, &fileData[0], i32(len(fileData)))  ;
	}
	rl.LoadImageFromTexture = proc(texture: Texture2D) -> Image {
		return raylib.LoadImageFromTexture(texture)  ;
	}
	// rl.LoadImageFromScreen = proc() -> Image {
	// 	return raylib.LoadImageFromScreen()
	// }
	rl.UnloadImage = proc(image: Image) {
		raylib.UnloadImage(image);
	}
	rl.ExportImage = proc(image: Image, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportImage(image, fileName)  ;
	}
	rl.ExportImageAsCode = proc(image: Image, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportImageAsCode(image, fileName)  ;
	}

	// Image generation functions
	rl.GenImageColor = proc(width: int, height: int, color: Color) -> Image {
		return raylib.GenImageColor(i32(width), i32(height), color)  ;
	}
	rl.GenImageGradientV = proc(width: int, height: int, top: Color, bottom: Color) -> Image {
		return raylib.GenImageGradientV(i32(width), i32(height), top, bottom)  ;
	}
	rl.GenImageGradientH = proc(width: int, height: int, left: Color, right: Color) -> Image {
		return raylib.GenImageGradientH(i32(width), i32(height), left, right)  ;
	}
	rl.GenImageGradientRadial = proc(width: int, height: int, density: f32, inner: Color, outer: Color) -> Image {
		return raylib.GenImageGradientRadial(i32(width), i32(height), density, inner, outer)  ;
	}
	rl.GenImageChecked = proc(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) -> Image {
		return raylib.GenImageChecked(i32(width), i32(height), i32(checksX), i32(checksY), col1, col2)  ;
	}
	rl.GenImageWhiteNoise = proc(width: int, height: int, factor: f32) -> Image {
		return raylib.GenImageWhiteNoise(i32(width), i32(height), factor)  ;
	}
	rl.GenImageCellular = proc(width: int, height: int, tileSize: int) -> Image {
		return raylib.GenImageCellular(i32(width), i32(height), i32(tileSize))  ;
	}

	// Image manipulation functions
	rl.ImageCopy = proc(image: Image) -> Image {
		return raylib.ImageCopy(image)  ;
	}
	rl.ImageFromImage = proc(image: Image, rec: Rectangle) -> Image {
		return raylib.ImageFromImage(image, rec)  ;
	}
	rl.ImageText = proc(text: string, fontSize: int, color: Color) -> Image {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.ImageText(text, i32(fontSize), color)  ;
	}
	rl.ImageTextEx = proc(font: Font, text: string, fontSize: f32, spacing: f32, tint: Color) -> Image {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.ImageTextEx(font, text, fontSize, spacing, tint)  ;
	}
	rl.ImageFormat = proc(image: ^Image, newFormat: PixelFormat) {
		raylib.ImageFormat(image, newFormat);
	}
	rl.ImageToPOT = proc(image: ^Image, fill: Color) {
		raylib.ImageToPOT(image, fill);
	}
	rl.ImageCrop = proc(image: ^Image, crop: Rectangle) {
		raylib.ImageCrop(image, crop);
	}
	rl.ImageAlphaCrop = proc(image: ^Image, threshold: f32) {
		raylib.ImageAlphaCrop(image, threshold);
	}
	rl.ImageAlphaClear = proc(image: ^Image, color: Color, threshold: f32) {
		raylib.ImageAlphaClear(image, color, threshold);
	}
	rl.ImageAlphaMask = proc(image: ^Image, alphaMask: Image) {
		raylib.ImageAlphaMask(image, alphaMask);
	}
	rl.ImageAlphaPremultiply = proc(image: ^Image) {
		raylib.ImageAlphaPremultiply(image);
	}
	rl.ImageResize = proc(image: ^Image, newWidth: int, newHeight: int) {
		raylib.ImageResize(image, i32(newWidth), i32(newHeight));
	}
	rl.ImageResizeNN = proc(image: ^Image, newWidth: int,newHeight: int) {
		raylib.ImageResizeNN(image, i32(newWidth),i32(newHeight));
	}
	rl.ImageResizeCanvas = proc(image: ^Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color) {
		raylib.ImageResizeCanvas(image, i32(newWidth), i32(newHeight), i32(offsetX), i32(offsetY), fill);
	}
	rl.ImageMipmaps = proc(image: ^Image) {
		raylib.ImageMipmaps(image);
	}
	rl.ImageDither = proc(image: ^Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int) {
		raylib.ImageDither(image, i32(rBpp), i32(gBpp), i32(bBpp), i32(aBpp));
	}
	rl.ImageFlipVertical = proc(image: ^Image) {
		raylib.ImageFlipVertical(image);
	}
	rl.ImageFlipHorizontal = proc(image: ^Image) {
		raylib.ImageFlipHorizontal(image);
	}
	rl.ImageRotateCW = proc(image: ^Image) {
		raylib.ImageRotateCW(image);
	}
	rl.ImageRotateCCW = proc(image: ^Image) {
		raylib.ImageRotateCCW(image);
	}
	rl.ImageColorTint = proc(image: ^Image, color: Color) {
		raylib.ImageColorTint(image, color);
	}
	rl.ImageColorInvert = proc(image: ^Image) {
		raylib.ImageColorInvert(image);
	}
	rl.ImageColorGrayscale = proc(image: ^Image) {
		raylib.ImageColorGrayscale(image);
	}
	rl.ImageColorContrast = proc(image: ^Image, contrast: f32) {
		raylib.ImageColorContrast(image, contrast);
	}
	rl.ImageColorBrightness = proc(image: ^Image, brightness: int) {
		raylib.ImageColorBrightness(image, i32(brightness));
	}
	rl.ImageColorReplace = proc(image: ^Image, color: Color, replace: Color) {
		raylib.ImageColorReplace(image, color, replace);
	}
	rl.LoadImageColors = proc(image: Image) -> [^]Color {
		return raylib.LoadImageColors(image);
	}
	rl.LoadImagePalette = proc(image: Image, maxPaletteSize: int) -> []Color {
		n : i32
		colors := raylib.LoadImagePalette(image, i32(maxPaletteSize), &n) ;
		return colors[:n]
	}
	rl.UnloadImageColors = proc(colors: [^]Color) {
		raylib.UnloadImageColors(colors);
	}
	rl.UnloadImagePalette = proc(colors: [^]Color) {
		raylib.UnloadImagePalette(colors);
	}
	rl.GetImageAlphaBorder = proc(image: Image, threshold: f32) -> Rectangle {
		return raylib.GetImageAlphaBorder(image, threshold)  ;
	}
	rl.GetImageColor = proc(image: Image, x: int, y: int) -> Color {
		return raylib.GetImageColor(image, i32(x), i32(y));
	}

	// Image drawing functions
	// NOTE: Image software-rendering functions (CPU)
	rl.ImageClearBackground = proc(dst: ^Image, color: Color) {
		raylib.ImageClearBackground(dst, color);
	}
	rl.ImageDrawPixel = proc(dst: ^Image, posX: int, posY: int, color: Color) {
		raylib.ImageDrawPixel(dst, i32(posX), i32(posY), color);
	}
	rl.ImageDrawPixelV = proc(dst: ^Image, position: Vector2, color: Color) {
		raylib.ImageDrawPixelV(dst, position, color);
	}
	rl.ImageDrawLine = proc(dst: ^Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) {
		raylib.ImageDrawLine(dst, i32(startPosX), i32(startPosY), i32(endPosX), i32(endPosY), color);
	}
	rl.ImageDrawLineV = proc(dst: ^Image, start: Vector2, end: Vector2, color: Color) {
		raylib.ImageDrawLineV(dst, start, end, color);
	}
	rl.ImageDrawCircle = proc(dst: ^Image, centerX: int, centerY: int, radius: int, color: Color) {
		raylib.ImageDrawCircle(dst, i32(centerX), i32(centerY), i32(radius), color);
	}
	rl.ImageDrawCircleV = proc(dst: ^Image, center: Vector2, radius: int, color: Color) {
		raylib.ImageDrawCircleV(dst, center, i32(radius), color);
	}
	rl.ImageDrawRectangle = proc(dst: ^Image, posX: int, posY: int, width: int, height: int, color: Color) {
		raylib.ImageDrawRectangle(dst, i32(posX), i32(posY), i32(width), i32(height), color);
	}
	rl.ImageDrawRectangleV = proc(dst: ^Image, position: Vector2, size: Vector2, color: Color) {
		raylib.ImageDrawRectangleV(dst, position, size, color);
	}
	rl.ImageDrawRectangleRec = proc(dst: ^Image, rec: Rectangle, color: Color) {
		raylib.ImageDrawRectangleRec(dst, rec, color);
	}
	rl.ImageDrawRectangleLines = proc(dst: ^Image, rec: Rectangle, thick: int, color: Color) {
		raylib.ImageDrawRectangleLines(dst, rec, i32(thick), color);
	}
	rl.ImageDraw = proc(dst: ^Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) {
		raylib.ImageDraw(dst, src, srcRec, dstRec, tint);
	}
	rl.ImageDrawText = proc(dst: ^Image, text: string, posX: int, posY: int, fontSize: int, color: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.ImageDrawText(dst, text, i32(posX), i32(posY), i32(fontSize), color);
	}
	rl.ImageDrawTextEx = proc(dst: ^Image, font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.ImageDrawTextEx(dst, font, text, position, fontSize, spacing, tint);
	}

	// Texture loading functions
	// NOTE: These functions require GPU access
	rl.LoadTexture = proc(fileName: cstring) -> Texture2D {
		fmt.println(fileName)
		// fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadTexture(fileName)
	}
	rl.LoadTextureFromImage = proc(image: Image) -> Texture2D {
		return raylib.LoadTextureFromImage(image)  ;
	}
	rl.LoadTextureCubemap = proc(image: Image, layout: CubemapLayout) -> TextureCubemap {
		return raylib.LoadTextureCubemap(image, layout)  ;
	}
	rl.LoadRenderTexture = proc(width: int, height: int) -> RenderTexture2D {
		return raylib.LoadRenderTexture(i32(width), i32(height))  ;
	}
	rl.UnloadTexture = proc(texture: Texture2D) {
		raylib.UnloadTexture(texture);
	}
	rl.UnloadRenderTexture = proc(target: RenderTexture2D) {
		raylib.UnloadRenderTexture(target);
	}
	rl.UpdateTexture = proc(texture: Texture2D, pixels: rawptr) {
		raylib.UpdateTexture(texture, pixels);
	}
	rl.UpdateTextureRec = proc(texture: Texture2D, rec: Rectangle, pixels: rawptr) {
		raylib.UpdateTextureRec(texture, rec, pixels);
	}

	// Texture configuration functions
	rl.GenTextureMipmaps = proc(texture: ^Texture2D) {
		raylib.GenTextureMipmaps(texture);
	}
	rl.SetTextureFilter = proc(texture: Texture2D, filter: TextureFilter) {
		raylib.SetTextureFilter(texture, filter);
	}
	rl.SetTextureWrap = proc(texture: Texture2D, wrap: TextureWrap) {
		raylib.SetTextureWrap(texture, wrap);
	}

	// Texture drawing functions
	rl.DrawTexture = proc(texture: Texture2D, posX: int, posY: int, tint: Color) {
		raylib.DrawTexture(texture, i32(posX), i32(posY), tint);
	}
	rl.DrawTextureV = proc(texture: Texture2D, position: Vector2, tint: Color) {
		raylib.DrawTextureV(texture, position, tint);
	}
	rl.DrawTextureEx = proc(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) {
		raylib.DrawTextureEx(texture, position, rotation, scale, tint);
	}
	rl.DrawTextureRec = proc(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) {
		raylib.DrawTextureRec(texture, source, position, tint);
	}
	rl.DrawTextureQuad = proc(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color) {
		raylib.DrawTextureQuad(texture, tiling, offset, quad, tint);
	}
	rl.DrawTextureTiled = proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, scale: f32, tint: Color) {
		raylib.DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint);
	}
	rl.DrawTexturePro = proc(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawTexturePro(texture, source, dest, origin, rotation, tint);
	}
	rl.DrawTextureNPatch = proc(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint);
	}
	rl.DrawTexturePoly = proc(texture: Texture2D, center: Vector2, points: [^]Vector2, texcoords: [^]Vector2, pointsCount: int, tint: Color) {
		raylib.DrawTexturePoly(texture, center, points, texcoords, i32(pointsCount), tint);
	}

	// Color/pixel related functions
	rl.Fade = proc(color: Color, alpha: f32) -> Color {
		return raylib.Fade(color, alpha)  ;
	}
	rl.ColorToInt = proc(color: Color) -> int {
		return int(raylib.ColorToInt(color))  ;
	}
	rl.ColorNormalize = proc(color: Color) -> Vector4 {
		return raylib.ColorNormalize(color)  ;
	}
	rl.ColorFromNormalized = proc(normalized: Vector4) -> Color {
		return raylib.ColorFromNormalized(normalized)  ;
	}
	rl.ColorToHSV = proc(color: Color) -> Vector3 {
		return raylib.ColorToHSV(color)  ;
	}
	rl.ColorFromHSV = proc(hue: f32, saturation: f32, value: f32) -> Color {
		return raylib.ColorFromHSV(hue, saturation, value)  ;
	}
	rl.ColorAlpha = proc(color: Color, alpha: f32) -> Color {
		return raylib.ColorAlpha(color, alpha)  ;
	}
	rl.ColorAlphaBlend = proc(dst: Color, src: Color, tint: Color) -> Color {
		return raylib.ColorAlphaBlend(dst, src, tint)  ;
	}
	rl.GetColor = proc(hexValue: u32) -> Color {
		return raylib.GetColor(i32(hexValue))  ;
	}
	rl.GetPixelColor = proc(srcPtr: rawptr, format: PixelFormat) -> Color {
		return raylib.GetPixelColor(srcPtr, format)  ;
	}
	rl.SetPixelColor = proc(dstPtr: rawptr, color: Color, format: PixelFormat) {
		raylib.SetPixelColor(dstPtr, color, format);
	}
	rl.GetPixelDataSize = proc(width: int, height: int, format: PixelFormat) -> int {
		return int(raylib.GetPixelDataSize(i32(width), i32(height), format))  ;
	}

	// module: text

	//  font loading/unloading functions
	rl.GetFontDefault = proc() -> Font {
		return raylib.GetFontDefault()  ;
	}
	rl.LoadFont = proc(fileName: string) -> Font {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadFont(fileName)  ;
	}
	rl.LoadFontEx = proc(fileName: string, fontSize: int, fontChars: []rune, glyphCount: int) -> Font {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadFontEx(fileName, i32(fontSize), nil, i32(glyphCount))
	}
	rl.LoadFontFromImage = proc(image: Image, key: Color, firstChar: rune) -> Font {
		return raylib.LoadFontFromImage(image, key, firstChar)  ;
	}
	rl.LoadFontFromMemory = proc(fileType: string, fileData: []u8, fontSize: int, fontChars: []rune) -> Font {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadFontFromMemory(fileType, &fileData[0], i32(len(fileData)), i32(fontSize), &fontChars[0], i32(len(fontChars)))  ;
	}
	rl.LoadFontData = proc(fileData: []u8, fontSize: int, fontChars: []rune, _type: FontType) -> ^GlyphInfo {
		return raylib.LoadFontData(&fileData[0], i32(len(fileData)), i32(fontSize), &fontChars[0], i32(len(fontChars)), _type);
	}
	rl.GenImageFontAtlas = proc(chars: [^]GlyphInfo, recs: [^][^]Rectangle, glyphCount: int, fontSize: int, padding: int, packMethod: int) -> Image {
		return raylib.GenImageFontAtlas(chars, recs, i32(glyphCount), i32(fontSize), i32(padding), i32(packMethod))  ;
	}
	rl.UnloadFontData = proc(chars: []GlyphInfo) {
		raylib.UnloadFontData(&chars[0], i32(len(chars)));
	}
	rl.UnloadFont = proc(font: Font) {
		raylib.UnloadFont(font);
	}

	// Text drawing functions
	rl.DrawFPS = proc(posX: int, posY: int) {
		raylib.DrawFPS(i32(posX), i32(posY));
	}
	rl.DrawText = proc(text: string, posX: int, posY: int, fontSize: int, color: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawText(text, i32(posX), i32(posY), i32(fontSize), color);
	}
	rl.DrawTextEx = proc(font: Font, text: string, position: Vector2, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawTextEx(font, text, position, fontSize, spacing, tint);
	}
	rl.DrawTextPro = proc(font: Font, text: string, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		raylib.DrawTextPro(font, text, position, origin, rotation, fontSize, spacing, tint);
	}
	rl.DrawTextCodepoint = proc(font: Font, codepoint: rune, position: Vector2, fontSize: f32, tint: Color) {
		raylib.DrawTextCodepoint(font, codepoint, position, fontSize, tint)
	}

	// Text misc. functions
	rl.MeasureText = proc(text: string, fontSize: int) -> int {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return int(raylib.MeasureText(text, i32(fontSize)));
	}
	rl.MeasureTextEx = proc(font: Font, text: string, fontSize: f32, spacing: f32) -> Vector2 {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return raylib.MeasureTextEx(font, text, fontSize, spacing)  ;
	}
	rl.GetGlyphIndex = proc(font: Font, codepoint: rune) -> int {
		return int(raylib.GetGlyphIndex(font, codepoint))  ;
	}
	rl.GetGlyphInfo = proc(font: Font, codepoint: rune) -> GlyphInfo {
		return raylib.GetGlyphInfo(font, codepoint)  ;
	}
	rl.GetGlyphAtlasRec = proc(font: Font, codepoint: rune) -> Rectangle {
		return raylib.GetGlyphAtlasRec(font, codepoint)  ;
	}

	// Text codepoints management functions (characters: unicode)
	rl.LoadCodepoints = proc(text: string) -> []rune {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		count :i32
		result := raylib.LoadCodepoints(text, &count);
		return result[:count]
	}
	rl.UnloadCodepoints = proc(codepoints: []rune) {
		raylib.UnloadCodepoints(&codepoints[0]);
	}
	rl.GetCodepointCount = proc(text: string) -> int {
		text := strings.clone_to_cstring(text, context.temp_allocator)
		return int(raylib.GetCodepointCount(text))
	}
	// rl.GetCodepoint = proc(text: string, bytesProcessed: [^]int) -> int {
	// 	text := strings.clone_to_cstring(text, context.temp_allocator)
	// 	return raylib.GetCodepoint(text, bytesProcessed)  ;
	// }
	// rl.CodepointToUTF8 = proc(codepoint: rune, byteSize: [^]int) -> string {
	// 	return string(raylib.CodepointToUTF8(codepoint, byteSize))
	// }
	rl.TextCodepointsToUTF8 = proc(codepoints: []rune) -> string {
		return string(raylib.TextCodepointsToUTF8(&codepoints[0], i32(len(codepoints))))
	}

	// module: models

	// Basic geometric 3D shapes drawing functions
	rl.DrawLine3D = proc(startPos: Vector3, endPos: Vector3, color: Color) {
		raylib.DrawLine3D(startPos, endPos, color);
	}
	rl.DrawPoint3D = proc(position: Vector3, color: Color) {
		raylib.DrawPoint3D(position, color);
	}
	rl.DrawCircle3D = proc(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) {
		raylib.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color);
	}
	rl.DrawTriangle3D = proc(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) {
		raylib.DrawTriangle3D(v1, v2, v3, color);
	}
	rl.DrawTriangleStrip3D = proc(points: []Vector3, color: Color) {
		raylib.DrawTriangleStrip3D(&points[0], i32(len(points)), color);
	}
	rl.DrawCube = proc(position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCube(position, width, height, length, color);
	}
	rl.DrawCubeV = proc(position: Vector3, size: Vector3, color: Color) {
		raylib.DrawCubeV(position, size, color);
	}
	rl.DrawCubeWires = proc(position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeWires(position, width, height, length, color);
	}
	rl.DrawCubeWiresV = proc(position: Vector3, size: Vector3, color: Color) {
		raylib.DrawCubeWiresV(position, size, color);
	}
	rl.DrawCubeTexture = proc(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeTexture(texture, position, width, height, length, color);
	}
	rl.DrawCubeTextureRec = proc(texture: Texture2D, source: Rectangle, position: Vector3, width: f32, height: f32, length: f32, color: Color) {
		raylib.DrawCubeTextureRec(texture, source, position, width, height, length, color);
	}
	rl.DrawSphere = proc(centerPos: Vector3, radius: f32, color: Color) {
		raylib.DrawSphere(centerPos, radius, color);
	}
	rl.DrawSphereEx = proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) {
		raylib.DrawSphereEx(centerPos, radius, i32(rings), i32(slices), color);
	}
	rl.DrawSphereWires = proc(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) {
		raylib.DrawSphereWires(centerPos, radius, i32(rings), i32(slices), color);
	}
	rl.DrawCylinder = proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) {
		raylib.DrawCylinder(position, radiusTop, radiusBottom, height, i32(slices), color);
	}
	rl.DrawCylinderEx = proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) {
		raylib.DrawCylinderEx(startPos, endPos, startRadius, endRadius, i32(sides), color);
	}
	rl.DrawCylinderWires = proc(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) {
		raylib.DrawCylinderWires(position, radiusTop, radiusBottom, height, i32(slices), color);
	}
	rl.DrawCylinderWiresEx = proc(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) {
		raylib.DrawCylinderWiresEx(startPos, endPos, startRadius, endRadius, i32(sides), color);
	}
	rl.DrawPlane = proc(centerPos: Vector3, size: Vector2, color: Color) {
		raylib.DrawPlane(centerPos, size, color);
	}
	rl.DrawRay = proc(ray: Ray, color: Color) {
		raylib.DrawRay(ray, color);
	}
	rl.DrawGrid = proc(slices: int, spacing: f32) {
		raylib.DrawGrid(i32(slices), spacing);
	}

	// Model loading/unloading functions
	rl.LoadModel = proc(fileName: string) -> Model {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadModel(fileName)  ;
	}
	rl.LoadModelFromMesh = proc(mesh: Mesh) -> Model {
		return raylib.LoadModelFromMesh(mesh)  ;
	}
	rl.UnloadModel = proc(model: Model) {
		raylib.UnloadModel(model);
	}
	rl.UnloadModelKeepMeshes = proc(model: Model) {
		raylib.UnloadModelKeepMeshes(model);
	}
	rl.GetModelBoundingBox = proc(model: Model) -> BoundingBox {
		return raylib.GetModelBoundingBox(model)  ;
	}

	// Model drawing functions
	rl.DrawModel = proc(model: Model, position: Vector3, scale: f32, tint: Color) {
		raylib.DrawModel(model, position, scale, tint);
	}
	rl.DrawModelEx = proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) {
		raylib.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	rl.DrawModelWires = proc(model: Model, position: Vector3, scale: f32, tint: Color) {
		raylib.DrawModelWires(model, position, scale, tint);
	}
	rl.DrawModelWiresEx = proc(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) {
		raylib.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	rl.DrawBoundingBox = proc(box: BoundingBox, color: Color) {
		raylib.DrawBoundingBox(box, color);
	}
	rl.DrawBillboard = proc(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color) {
		raylib.DrawBillboard(camera, texture, position, size, tint);
	}
	rl.DrawBillboardRec = proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: f32, tint: Color) {
		raylib.DrawBillboardRec(camera, texture, source, position, size, tint);
	}
	rl.DrawBillboardPro = proc(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) {
		raylib.DrawBillboardPro(camera, texture, source, position, up, size, origin, rotation, tint);
	}

	// Mesh management functions
	rl.UploadMesh = proc(mesh: ^Mesh, is_dynamic: bool) {
		raylib.UploadMesh(mesh, is_dynamic);
	}
	rl.UpdateMeshBuffer = proc(mesh: Mesh, index: int, data: rawptr, dataSize: int, offset: int) {
		raylib.UpdateMeshBuffer(mesh, i32(index), data, i32(dataSize), i32(offset));
	}
	rl.UnloadMesh = proc(mesh: Mesh) {
		raylib.UnloadMesh(mesh);
	}
	rl.DrawMesh = proc(mesh: Mesh, material: Material, transform: Matrix) {
		raylib.DrawMesh(mesh, material, transform);
	}
	rl.DrawMeshInstanced = proc(mesh: Mesh, material: Material, transforms: []Matrix) {
		raylib.DrawMeshInstanced(mesh, material, &transforms[0], i32(len(transforms)));
	}
	rl.ExportMesh = proc(mesh: Mesh, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportMesh(mesh, fileName)  ;
	}
	rl.GetMeshBoundingBox = proc(mesh: Mesh) -> BoundingBox {
		return raylib.GetMeshBoundingBox(mesh)  ;
	}
	rl.GenMeshTangents = proc(mesh: ^Mesh) {
		raylib.GenMeshTangents(mesh);
	}
	rl.GenMeshBinormals = proc(mesh: ^Mesh) {
		raylib.GenMeshBinormals(mesh);
	}

	// Mesh generation functions
	rl.GenMeshPoly = proc(sides: int, radius: f32) -> Mesh {
		return raylib.GenMeshPoly(i32(sides), radius)  ;
	}
	rl.GenMeshPlane = proc(width: f32, length: f32, resX: int, resZ: int) -> Mesh {
		return raylib.GenMeshPlane(width, length, i32(resX), i32(resZ))  ;
	}
	rl.GenMeshCube = proc(width: f32, height: f32, length: f32) -> Mesh {
		return raylib.GenMeshCube(width, height, length)  ;
	}
	rl.GenMeshSphere = proc(radius: f32, rings: int, slices: int) -> Mesh {
		return raylib.GenMeshSphere(radius, i32(rings), i32(slices))  ;
	}
	rl.GenMeshHemiSphere = proc(radius: f32, rings: int, slices: int) -> Mesh {
		return raylib.GenMeshHemiSphere(radius, i32(rings), i32(slices))  ;
	}
	rl.GenMeshCylinder = proc(radius: f32, height: f32, slices: int) -> Mesh {
		return raylib.GenMeshCylinder(radius, height, i32(slices))  ;
	}
	rl.GenMeshCone = proc(radius: f32, height: f32, slices: int) -> Mesh {
		return raylib.GenMeshCone(radius, height, i32(slices))  ;
	}
	rl.GenMeshTorus = proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh {
		return raylib.GenMeshTorus(radius, size, i32(radSeg), i32(sides))  ;
	}
	rl.GenMeshKnot = proc(radius: f32, size: f32, radSeg: int, sides: int) -> Mesh {
		return raylib.GenMeshKnot(radius, size, i32(radSeg), i32(sides))  ;
	}
	rl.GenMeshHeightmap = proc(heightmap: Image, size: Vector3) -> Mesh {
		return raylib.GenMeshHeightmap(heightmap, size)  ;
	}
	rl.GenMeshCubicmap = proc(cubicmap: Image, cubeSize: Vector3) -> Mesh {
		return raylib.GenMeshCubicmap(cubicmap, cubeSize)  ;
	}

	// Material loading/unloading functions
	rl.LoadMaterials = proc(fileName: string) -> []Material {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n: i32
		result := raylib.LoadMaterials(fileName, &n);
		return result[:n]
	}
	rl.LoadMaterialDefault = proc() -> Material {
		return raylib.LoadMaterialDefault()
	}
	rl.UnloadMaterial = proc(material: Material) {
		raylib.UnloadMaterial(material);
	}
	rl.SetMaterialTexture = proc(material: ^Material, mapType: MaterialMapIndex, texture: Texture2D) {
		raylib.SetMaterialTexture(material, mapType, texture);
	}
	rl.SetModelMeshMaterial = proc(model: ^Model, meshId: int, materialId: int) {
		raylib.SetModelMeshMaterial(model, i32(meshId), i32(materialId));
	}

	// Model animations loading/unloading functions
	rl.LoadModelAnimations = proc(fileName: string) -> []ModelAnimation {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		n : i32
		result := raylib.LoadModelAnimations(fileName, &n);
		return result[:n]
	}
	rl.UpdateModelAnimation = proc(model: Model, anim: ModelAnimation, frame: int) {
		raylib.UpdateModelAnimation(model, anim, i32(frame));
	}
	rl.UnloadModelAnimation = proc(anim: ModelAnimation) {
		raylib.UnloadModelAnimation(anim);
	}
	rl.UnloadModelAnimations = proc(animations: []ModelAnimation) {
		raylib.UnloadModelAnimations(&animations[0], u32(len(animations)));
	}
	rl.IsModelAnimationValid = proc(model: Model, anim: ModelAnimation) -> bool {
		return raylib.IsModelAnimationValid(model, anim)  ;
	}

	// Collision detection functions
	rl.CheckCollisionSpheres = proc(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) -> bool {
		return raylib.CheckCollisionSpheres(center1, radius1, center2, radius2)  ;
	}
	rl.CheckCollisionBoxes = proc(box1: BoundingBox, box2: BoundingBox) -> bool {
		return raylib.CheckCollisionBoxes(box1, box2)  ;
	}
	rl.CheckCollisionBoxSphere = proc(box: BoundingBox, center: Vector3, radius: f32) -> bool {
		return raylib.CheckCollisionBoxSphere(box, center, radius)  ;
	}
	rl.GetRayCollisionSphere = proc(ray: Ray, center: Vector3, radius: f32) -> RayCollision {
		return raylib.GetRayCollisionSphere(ray, center, radius)  ;
	}
	rl.GetRayCollisionBox = proc(ray: Ray, box: BoundingBox) -> RayCollision {
		return raylib.GetRayCollisionBox(ray, box)  ;
	}
	rl.GetRayCollisionModel = proc(ray: Ray, model: Model) -> RayCollision {
		return raylib.GetRayCollisionModel(ray, model)  ;
	}
	rl.GetRayCollisionMesh = proc(ray: Ray, mesh: Mesh, transform: Matrix) -> RayCollision {
		return raylib.GetRayCollisionMesh(ray, mesh, transform)  ;
	}
	rl.GetRayCollisionTriangle = proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) -> RayCollision {
		return raylib.GetRayCollisionTriangle(ray, p1, p2, p3)  ;
	}
	rl.GetRayCollisionQuad = proc(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) -> RayCollision {
		return raylib.GetRayCollisionQuad(ray, p1, p2, p3, p4)  ;
	}

	// module: audio

	// audio device management functions
	rl.InitAudioDevice = proc() {
		raylib.InitAudioDevice();
	}
	rl.CloseAudioDevice = proc() {
		raylib.CloseAudioDevice();
	}
	rl.IsAudioDeviceReady = proc() -> bool {
		return raylib.IsAudioDeviceReady()
	}
	rl.SetMasterVolume = proc(volume: f32) {
		raylib.SetMasterVolume(volume);
	}

	// Wave/Sound loading/unloading functions
	rl.LoadWave = proc(fileName: string) -> Wave {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadWave(fileName)  ;
	}
	rl.LoadWaveFromMemory = proc(fileType: string, data: []u8) -> Wave {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadWaveFromMemory(fileType, &data[0], i32(len(data)))  
	}
	rl.LoadSound = proc(fileName: string) -> Sound {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadSound(fileName)  ;
	}
	rl.LoadSoundFromWave = proc(wave: Wave) -> Sound {
		return raylib.LoadSoundFromWave(wave)  ;
	}
	rl.UpdateSound = proc(sound: Sound, data: rawptr, samplesCount: int) {
		raylib.UpdateSound(sound, data, i32(samplesCount));
	}
	rl.UnloadWave = proc(wave: Wave) {
		raylib.UnloadWave(wave);
	}
	rl.UnloadSound = proc(sound: Sound) {
		raylib.UnloadSound(sound);
	}
	rl.ExportWave = proc(wave: Wave, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportWave(wave, fileName)  ;
	}
	rl.ExportWaveAsCode = proc(wave: Wave, fileName: string) -> bool {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.ExportWaveAsCode(wave, fileName)  ;
	}

	// Wave/Sound management functions
	rl.PlaySound = proc(sound: Sound) {
		raylib.PlaySound(sound);
	}
	rl.StopSound = proc(sound: Sound) {
		raylib.StopSound(sound);
	}
	rl.PauseSound = proc(sound: Sound) {
		raylib.PauseSound(sound);
	}
	rl.ResumeSound = proc(sound: Sound) {
		raylib.ResumeSound(sound);
	}
	rl.PlaySoundMulti = proc(sound: Sound) {
		raylib.PlaySoundMulti(sound);
	}
	rl.StopSoundMulti = proc() {
		raylib.StopSoundMulti();
	}
	rl.GetSoundsPlaying = proc() -> int {
		return int(raylib.GetSoundsPlaying())
	}
	rl.IsSoundPlaying = proc(sound: Sound) -> bool {
		return raylib.IsSoundPlaying(sound)  
	}
	rl.SetSoundVolume = proc(sound: Sound, volume: f32) {
		raylib.SetSoundVolume(sound, volume)
	}
	rl.SetSoundPitch = proc(sound: Sound, pitch: f32) {
		raylib.SetSoundPitch(sound, pitch)
	}
	rl.WaveFormat = proc(wave: ^Wave, sampleRate: int, sampleSize: int, channels: int) {
		raylib.WaveFormat(wave, i32(sampleRate), i32(sampleSize), i32(channels));
	}
	rl.WaveCopy = proc(wave: Wave) -> Wave {
		return raylib.WaveCopy(wave)  ;
	}
	rl.WaveCrop = proc(wave: ^Wave, initSample: int, finalSample: int) {
		raylib.WaveCrop(wave, i32(initSample), i32(finalSample));
	}
	rl.LoadWaveSamples = proc(wave: Wave) -> ^f32 {
		return raylib.LoadWaveSamples(wave);
	}
	rl.UnloadWaveSamples = proc(samples: ^f32) {
		raylib.UnloadWaveSamples(samples);
	}

	// Music management functions
	rl.LoadMusicStream = proc(fileName: string) -> Music {
		fileName := strings.clone_to_cstring(fileName, context.temp_allocator)
		return raylib.LoadMusicStream(fileName)  ;
	}
	rl.LoadMusicStreamFromMemory = proc(fileType: string, data: []u8) -> Music {
		fileType := strings.clone_to_cstring(fileType, context.temp_allocator)
		return raylib.LoadMusicStreamFromMemory(fileType, &data[0], i32(len(data)))
	}
	rl.UnloadMusicStream = proc(music: Music) {
		raylib.UnloadMusicStream(music);
	}
	rl.PlayMusicStream = proc(music: Music) {
		raylib.PlayMusicStream(music);
	}
	rl.IsMusicStreamPlaying = proc(music: Music) -> bool {
		return raylib.IsMusicStreamPlaying(music)  ;
	}
	rl.UpdateMusicStream = proc(music: Music) {
		raylib.UpdateMusicStream(music);
	}
	rl.StopMusicStream = proc(music: Music) {
		raylib.StopMusicStream(music);
	}
	rl.PauseMusicStream = proc(music: Music) {
		raylib.PauseMusicStream(music);
	}
	rl.ResumeMusicStream = proc(music: Music) {
		raylib.ResumeMusicStream(music);
	}
	rl.SeekMusicStream = proc(music: Music, position: f32) {
		raylib.SeekMusicStream(music, position);
	}
	rl.SetMusicVolume = proc(music: Music, volume: f32) {
		raylib.SetMusicVolume(music, volume);
	}
	rl.SetMusicPitch = proc(music: Music, pitch: f32) {
		raylib.SetMusicPitch(music, pitch);
	}
	rl.GetMusicTimeLength = proc(music: Music) -> f32 {
		return raylib.GetMusicTimeLength(music)  ;
	}
	rl.GetMusicTimePlayed = proc(music: Music) -> f32 {
		return raylib.GetMusicTimePlayed(music)  ;
	}

	// AudioStream management functions
	rl.LoadAudioStream = proc(sampleRate: u32, sampleSize: u32, channels: u32) -> AudioStream {
		return raylib.LoadAudioStream(sampleRate, sampleSize, channels)  ;
	}
	rl.UpdateAudioStream = proc(stream: AudioStream, data: rawptr, samplesCount: int) {
		raylib.UpdateAudioStream(stream, data, i32(samplesCount));
	}
	// rl.CloseAudioStream = proc(stream: AudioStream) {
		// raylib.CloseAudioStream(stream);
	// }
	rl.IsAudioStreamProcessed = proc(stream: AudioStream) -> bool {
		return raylib.IsAudioStreamProcessed(stream)  ;
	}
	rl.PlayAudioStream = proc(stream: AudioStream) {
		raylib.PlayAudioStream(stream);
	}
	rl.PauseAudioStream = proc(stream: AudioStream) {
		raylib.PauseAudioStream(stream);
	}
	rl.ResumeAudioStream = proc(stream: AudioStream) {
		raylib.ResumeAudioStream(stream);
	}
	rl.IsAudioStreamPlaying = proc(stream: AudioStream) -> bool {
		return raylib.IsAudioStreamPlaying(stream)  ;
	}
	rl.StopAudioStream = proc(stream: AudioStream) {
		raylib.StopAudioStream(stream);
	}
	rl.SetAudioStreamVolume = proc(stream: AudioStream, volume: f32) {
		raylib.SetAudioStreamVolume(stream, volume);
	}
	rl.SetAudioStreamPitch = proc(stream: AudioStream, pitch: f32) {
		raylib.SetAudioStreamPitch(stream, pitch);
	}
	rl.SetAudioStreamBufferSizeDefault = proc(size: int) {
		raylib.SetAudioStreamBufferSizeDefault(i32(size));
	}
}
