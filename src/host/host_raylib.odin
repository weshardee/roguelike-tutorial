package host

import "../shared"
import "vendor:raylib"

TEST_IMAGE_PATH :: "/Users/wes/dev/roguelike-tutorial/src/game/rl/walls.png"

populate_api :: proc() {
	api := shared.get_api()

	// Cursor-related functions
	api.ShowCursor = raylib.ShowCursor
	api.HideCursor = raylib.HideCursor
	api.IsCursorHidden = raylib.IsCursorHidden
	api.EnableCursor = raylib.EnableCursor
	api.DisableCursor = raylib.DisableCursor
	api.IsCursorOnScreen = raylib.IsCursorOnScreen

	// Drawing-related functions
	api.ClearBackground = raylib.ClearBackground
	api.BeginDrawing = raylib.BeginDrawing
	api.EndDrawing = raylib.EndDrawing
	api.BeginMode2D = raylib.BeginMode2D
	api.EndMode2D = raylib.EndMode2D
	api.BeginMode3D = raylib.BeginMode3D
	api.EndMode3D = raylib.EndMode3D
	api.BeginTextureMode = raylib.BeginTextureMode
	api.EndTextureMode = raylib.EndTextureMode
	api.BeginShaderMode = raylib.BeginShaderMode
	api.EndShaderMode = raylib.EndShaderMode
	api.BeginBlendMode = raylib.BeginBlendMode
	api.EndBlendMode = raylib.EndBlendMode
	api.BeginScissorMode = raylib.BeginScissorMode
	api.EndScissorMode = raylib.EndScissorMode
	api.BeginVrStereoMode = raylib.BeginVrStereoMode
	api.EndVrStereoMode = raylib.EndVrStereoMode

	// VR stereo config functions for VR simulator
	api.LoadVrStereoConfig = raylib.LoadVrStereoConfig
	api.UnloadVrStereoConfig = raylib.UnloadVrStereoConfig

	// Shader management functions
	api.LoadShader = raylib.LoadShader
	api.LoadShaderFromMemory = raylib.LoadShaderFromMemory
	api.GetShaderLocation = raylib.GetShaderLocation
	api.GetShaderLocationAttrib = raylib.GetShaderLocationAttrib
	api.SetShaderValue = raylib.SetShaderValue
	api.SetShaderValueV = raylib.SetShaderValueV
	api.SetShaderValueMatrix = raylib.SetShaderValueMatrix
	api.SetShaderValueTexture = raylib.SetShaderValueTexture
	api.UnloadShader = raylib.UnloadShader

	// Screen-space-related functions
	api.GetMouseRay = raylib.GetMouseRay
	api.GetCameraMatrix = raylib.GetCameraMatrix
	api.GetCameraMatrix2D = raylib.GetCameraMatrix2D
	api.GetWorldToScreen = raylib.GetWorldToScreen
	api.GetWorldToScreenEx = raylib.GetWorldToScreenEx
	api.GetWorldToScreen2D = raylib.GetWorldToScreen2D
	api.GetScreenToWorld2D = raylib.GetScreenToWorld2D

	// Timing-related functions
	api.SetTargetFPS = raylib.SetTargetFPS
	api.GetFPS = raylib.GetFPS
	api.GetFrameTime = raylib.GetFrameTime
	api.GetTime = raylib.GetTime

	// Misc. functions
	// api.GetRandomValue = raylib.GetRandomValue
	// api.SetRandomSeed = raylib.SetRandomSeed
	api.TakeScreenshot = raylib.TakeScreenshot
	api.SetConfigFlags = raylib.SetConfigFlags

	api.TraceLog = raylib.TraceLog
	api.SetTraceLogLevel = raylib.SetTraceLogLevel
	// api.MemAlloc = raylib.MemAlloc
	// api.MemRealloc = raylib.MemRealloc
	// api.MemFree = raylib.MemFree

	// Set custom callbacks
	// WARNING: Callbacks setup is intended for advance users
	// api.SetTraceLogCallback = raylib.SetTraceLogCallback
	// api.SetLoadFileDataCallback = raylib.SetLoadFileDataCallback
	// api.SetSaveFileDataCallback = raylib.SetSaveFileDataCallback
	// api.SetLoadFileTextCallback = raylib.SetLoadFileTextCallback
	// api.SetSaveFileTextCallback = raylib.SetSaveFileTextCallback

	// Files management functions
	api.LoadFileData = raylib.LoadFileData
	api.UnloadFileData = raylib.UnloadFileData
	api.SaveFileData = raylib.SaveFileData
	api.LoadFileText = raylib.LoadFileText
	api.UnloadFileText = raylib.UnloadFileText
	api.SaveFileText = raylib.SaveFileText
	api.FileExists = raylib.FileExists
	api.DirectoryExists = raylib.DirectoryExists
	api.IsFileExtension = raylib.IsFileExtension
	api.GetFileExtension = raylib.GetFileExtension
	api.GetFileName = raylib.GetFileName
	api.GetFileNameWithoutExt = raylib.GetFileNameWithoutExt
	api.GetDirectoryPath = raylib.GetDirectoryPath
	api.GetPrevDirectoryPath = raylib.GetPrevDirectoryPath
	api.GetWorkingDirectory = raylib.GetWorkingDirectory
	api.GetDirectoryFiles = raylib.GetDirectoryFiles
	api.ClearDirectoryFiles = raylib.ClearDirectoryFiles
	api.ChangeDirectory = raylib.ChangeDirectory
	api.IsFileDropped = raylib.IsFileDropped
	// api.LoadDroppedFiles = raylib.LoadDroppedFiles
	// api.UnloadDroppedFiles = raylib.UnloadDroppedFiles
	api.GetFileModTime = raylib.GetFileModTime

	// Compression/Encoding functionality
	api.CompressData = raylib.CompressData
	api.DecompressData = raylib.DecompressData
	api.EncodeDataBase64 = raylib.EncodeDataBase64
	api.DecodeDataBase64 = raylib.DecodeDataBase64

	// Persistent storage management
	api.SaveStorageValue = raylib.SaveStorageValue
	api.LoadStorageValue = raylib.LoadStorageValue

	// Misc.
	api.OpenURL = raylib.OpenURL

	// Input-related functions: keyboard
	api.IsKeyPressed = raylib.IsKeyPressed
	api.IsKeyDown = raylib.IsKeyDown
	api.IsKeyReleased = raylib.IsKeyReleased
	api.IsKeyUp = raylib.IsKeyUp
	api.SetExitKey = raylib.SetExitKey
	api.GetKeyPressed = raylib.GetKeyPressed
	api.GetCharPressed = raylib.GetCharPressed

	// Input-related functions: gamepads
	api.IsGamepadAvailable = raylib.IsGamepadAvailable
	api.GetGamepadName = raylib.GetGamepadName
	api.IsGamepadButtonPressed = raylib.IsGamepadButtonPressed
	api.IsGamepadButtonDown = raylib.IsGamepadButtonDown
	api.IsGamepadButtonReleased = raylib.IsGamepadButtonReleased
	api.IsGamepadButtonUp = raylib.IsGamepadButtonUp
	api.GetGamepadButtonPressed = raylib.GetGamepadButtonPressed
	api.GetGamepadAxisCount = raylib.GetGamepadAxisCount
	api.GetGamepadAxisMovement = raylib.GetGamepadAxisMovement
	api.SetGamepadMappings = raylib.SetGamepadMappings

	// Input-related functions: mouse
	api.IsMouseButtonPressed = raylib.IsMouseButtonPressed
	api.IsMouseButtonDown = raylib.IsMouseButtonDown
	api.IsMouseButtonReleased = raylib.IsMouseButtonReleased
	api.IsMouseButtonUp = raylib.IsMouseButtonUp
	api.GetMouseX = raylib.GetMouseX
	api.GetMouseY = raylib.GetMouseY
	api.GetMousePosition = raylib.GetMousePosition
	api.GetMouseDelta = raylib.GetMouseDelta
	api.SetMousePosition = raylib.SetMousePosition
	api.SetMouseOffset = raylib.SetMouseOffset
	api.SetMouseScale = raylib.SetMouseScale
	api.GetMouseWheelMove = raylib.GetMouseWheelMove
	api.SetMouseCursor = raylib.SetMouseCursor

	// Input-related functions: touch
	api.GetTouchX = raylib.GetTouchX
	api.GetTouchY = raylib.GetTouchY
	api.GetTouchPosition = raylib.GetTouchPosition
	api.GetTouchPointId = raylib.GetTouchPointId
	api.GetTouchPointCount = raylib.GetTouchPointCount

	// Gestures and Touch Handling Functions (Module: rgestures)
	api.SetGesturesEnabled = raylib.SetGesturesEnabled
	api.IsGestureDetected = raylib.IsGestureDetected
	api.GetGestureDetected = raylib.GetGestureDetected
	api.GetGestureHoldDuration = raylib.GetGestureHoldDuration
	api.GetGestureDragVector = raylib.GetGestureDragVector
	api.GetGestureDragAngle = raylib.GetGestureDragAngle
	api.GetGesturePinchVector = raylib.GetGesturePinchVector
	api.GetGesturePinchAngle = raylib.GetGesturePinchAngle

	// Camera System Functions (Module: rcamera)
	api.SetCameraMode = raylib.SetCameraMode
	api.UpdateCamera = raylib.UpdateCamera

	api.SetCameraPanControl = raylib.SetCameraPanControl
	api.SetCameraAltControl = raylib.SetCameraAltControl
	api.SetCameraSmoothZoomControl = raylib.SetCameraSmoothZoomControl
	api.SetCameraMoveControls = raylib.SetCameraMoveControls

	// module: shapes

	// Set texture and rectangle to be used on shapes drawing
	// NOTE: It can be useful when using basic shapes and one single font,
	// defining a font char white rectangle would allow drawing everything in a single draw call
	api.SetShapesTexture = raylib.SetShapesTexture

	// Basic shapes drawing functions
	api.DrawPixel = raylib.DrawPixel
	api.DrawPixelV = raylib.DrawPixelV
	api.DrawLine = raylib.DrawLine
	api.DrawLineV = raylib.DrawLineV
	api.DrawLineEx = raylib.DrawLineEx
	api.DrawLineBezier = raylib.DrawLineBezier
	api.DrawLineBezierQuad = raylib.DrawLineBezierQuad
	api.DrawLineBezierCubic = raylib.DrawLineBezierCubic
	api.DrawLineStrip = raylib.DrawLineStrip
	api.DrawCircle = raylib.DrawCircle
	api.DrawCircleSector = raylib.DrawCircleSector
	api.DrawCircleSectorLines = raylib.DrawCircleSectorLines
	api.DrawCircleGradient = raylib.DrawCircleGradient
	api.DrawCircleV = raylib.DrawCircleV
	api.DrawCircleLines = raylib.DrawCircleLines
	api.DrawEllipse = raylib.DrawEllipse
	api.DrawEllipseLines = raylib.DrawEllipseLines
	api.DrawRing = raylib.DrawRing
	api.DrawRingLines = raylib.DrawRingLines
	api.DrawRectangle = raylib.DrawRectangle
	api.DrawRectangleV = raylib.DrawRectangleV
	api.DrawRectangleRec = raylib.DrawRectangleRec
	api.DrawRectanglePro = raylib.DrawRectanglePro
	api.DrawRectangleGradientV = raylib.DrawRectangleGradientV
	api.DrawRectangleGradientH = raylib.DrawRectangleGradientH
	api.DrawRectangleGradientEx = raylib.DrawRectangleGradientEx
	api.DrawRectangleLines = raylib.DrawRectangleLines
	api.DrawRectangleLinesEx = raylib.DrawRectangleLinesEx
	api.DrawRectangleRounded = raylib.DrawRectangleRounded
	api.DrawRectangleRoundedLines = raylib.DrawRectangleRoundedLines
	api.DrawTriangle = raylib.DrawTriangle
	api.DrawTriangleLines = raylib.DrawTriangleLines
	api.DrawTriangleFan = raylib.DrawTriangleFan
	api.DrawTriangleStrip = raylib.DrawTriangleStrip
	api.DrawPoly = raylib.DrawPoly
	api.DrawPolyLines = raylib.DrawPolyLines
	api.DrawPolyLinesEx = raylib.DrawPolyLinesEx

	// Basic shapes collision detection functions
	api.CheckCollisionRecs = raylib.CheckCollisionRecs
	api.CheckCollisionCircles = raylib.CheckCollisionCircles
	api.CheckCollisionCircleRec = raylib.CheckCollisionCircleRec
	api.CheckCollisionPointRec = raylib.CheckCollisionPointRec
	api.CheckCollisionPointCircle = raylib.CheckCollisionPointCircle
	api.CheckCollisionPointTriangle = raylib.CheckCollisionPointTriangle
	api.CheckCollisionLines = raylib.CheckCollisionLines
	api.CheckCollisionPointLine = raylib.CheckCollisionPointLine
	api.GetCollisionRec = raylib.GetCollisionRec

	// module: textures

	// Image loading functions
	// NOTE: These functions do not require GPU access
	api.LoadImage = raylib.LoadImage
	api.LoadImageRaw = raylib.LoadImageRaw
	api.LoadImageAnim = raylib.LoadImageAnim
	api.LoadImageFromMemory = raylib.LoadImageFromMemory
	api.LoadImageFromTexture = raylib.LoadImageFromTexture
	// api.LoadImageFromScreen = raylib.LoadImageFromScreen
	api.UnloadImage = raylib.UnloadImage
	api.ExportImage = raylib.ExportImage
	api.ExportImageAsCode = raylib.ExportImageAsCode

	// Image generation functions
	api.GenImageColor = raylib.GenImageColor
	api.GenImageGradientV = raylib.GenImageGradientV
	api.GenImageGradientH = raylib.GenImageGradientH
	api.GenImageGradientRadial = raylib.GenImageGradientRadial
	api.GenImageChecked = raylib.GenImageChecked
	api.GenImageWhiteNoise = raylib.GenImageWhiteNoise
	api.GenImageCellular = raylib.GenImageCellular

	// Image manipulation functions
	api.ImageCopy = raylib.ImageCopy
	api.ImageFromImage = raylib.ImageFromImage
	api.ImageText = raylib.ImageText
	api.ImageTextEx = raylib.ImageTextEx
	api.ImageFormat = raylib.ImageFormat
	api.ImageToPOT = raylib.ImageToPOT
	api.ImageCrop = raylib.ImageCrop
	api.ImageAlphaCrop = raylib.ImageAlphaCrop
	api.ImageAlphaClear = raylib.ImageAlphaClear
	api.ImageAlphaMask = raylib.ImageAlphaMask
	api.ImageAlphaPremultiply = raylib.ImageAlphaPremultiply
	api.ImageResize = raylib.ImageResize
	api.ImageResizeNN = raylib.ImageResizeNN
	api.ImageResizeCanvas = raylib.ImageResizeCanvas
	api.ImageMipmaps = raylib.ImageMipmaps
	api.ImageDither = raylib.ImageDither
	api.ImageFlipVertical = raylib.ImageFlipVertical
	api.ImageFlipHorizontal = raylib.ImageFlipHorizontal
	api.ImageRotateCW = raylib.ImageRotateCW
	api.ImageRotateCCW = raylib.ImageRotateCCW
	api.ImageColorTint = raylib.ImageColorTint
	api.ImageColorInvert = raylib.ImageColorInvert
	api.ImageColorGrayscale = raylib.ImageColorGrayscale
	api.ImageColorContrast = raylib.ImageColorContrast
	api.ImageColorBrightness = raylib.ImageColorBrightness
	api.ImageColorReplace = raylib.ImageColorReplace
	api.LoadImageColors = raylib.LoadImageColors
	api.LoadImagePalette = raylib.LoadImagePalette
	api.UnloadImageColors = raylib.UnloadImageColors
	api.UnloadImagePalette = raylib.UnloadImagePalette
	api.GetImageAlphaBorder = raylib.GetImageAlphaBorder
	api.GetImageColor = raylib.GetImageColor

	// Image drawing functions
	// NOTE: Image software-rendering functions (CPU)
	api.ImageClearBackground = raylib.ImageClearBackground
	api.ImageDrawPixel = raylib.ImageDrawPixel
	api.ImageDrawPixelV = raylib.ImageDrawPixelV
	api.ImageDrawLine = raylib.ImageDrawLine
	api.ImageDrawLineV = raylib.ImageDrawLineV
	api.ImageDrawCircle = raylib.ImageDrawCircle
	api.ImageDrawCircleV = raylib.ImageDrawCircleV
	api.ImageDrawRectangle = raylib.ImageDrawRectangle
	api.ImageDrawRectangleV = raylib.ImageDrawRectangleV
	api.ImageDrawRectangleRec = raylib.ImageDrawRectangleRec
	api.ImageDrawRectangleLines = raylib.ImageDrawRectangleLines
	api.ImageDraw = raylib.ImageDraw
	api.ImageDrawText = raylib.ImageDrawText
	api.ImageDrawTextEx = raylib.ImageDrawTextEx

	// Texture loading functions
	// NOTE: These functions require GPU access
	api.LoadTexture = raylib.LoadTexture
	api.LoadTextureFromImage = raylib.LoadTextureFromImage
	api.LoadTextureCubemap = raylib.LoadTextureCubemap
	api.LoadRenderTexture = raylib.LoadRenderTexture
	api.UnloadTexture = raylib.UnloadTexture
	api.UnloadRenderTexture = raylib.UnloadRenderTexture
	api.UpdateTexture = raylib.UpdateTexture
	api.UpdateTextureRec = raylib.UpdateTextureRec

	// Texture configuration functions
	api.GenTextureMipmaps = raylib.GenTextureMipmaps
	api.SetTextureFilter = raylib.SetTextureFilter
	api.SetTextureWrap = raylib.SetTextureWrap

	// Texture drawing functions
	api.DrawTexture = proc(img: raylib.Texture2D, x, y: i32, tint: raylib.Color) {
		raylib.DrawTexture(img, x, y, tint)
	}
	api.DrawTextureV = proc(
		texture: raylib.Texture2D,
		pos: raylib.Vector2,
		tint: raylib.Color,
	) {
		raylib.DrawTextureV(texture, pos, tint)
	}
	api.DrawTextureEx = proc(
		texture: raylib.Texture2D,
		position: raylib.Vector2,
		rotation: f32,
		scale: f32,
		tint: raylib.Color,
	) {
		raylib.DrawTextureEx(texture, position, rotation, scale, tint)
	}
	api.DrawTextureRec = proc(
		texture: raylib.Texture2D,
		source: raylib.Rectangle,
		position: raylib.Vector2,
		tint: raylib.Color,
	) {
		raylib.DrawTextureRec(texture, source, position, tint)
	}
	api.DrawTextureQuad = proc(
		texture: raylib.Texture2D,
		tiling: raylib.Vector2,
		offset: raylib.Vector2,
		quad: raylib.Rectangle,
		tint: raylib.Color,
	) {
		raylib.DrawTextureQuad(texture, tiling, offset, quad, tint)
	}
	api.DrawTextureTiled = proc(
		texture: raylib.Texture2D,
		source: raylib.Rectangle,
		dest: raylib.Rectangle,
		origin: raylib.Vector2,
		rotation: f32,
		scale: f32,
		tint: raylib.Color,
	) {
		raylib.DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint)
	}
	api.DrawTexturePro = proc(
		texture: raylib.Texture2D,
		source: raylib.Rectangle,
		dest: raylib.Rectangle,
		origin: raylib.Vector2,
		rotation: f32,
		tint: raylib.Color,
	) {
		raylib.DrawTexturePro(texture, source, dest, origin, rotation, tint)
	}
	api.DrawTextureNPatch = proc(
		texture: raylib.Texture2D,
		nPatchInfo: raylib.NPatchInfo,
		dest: raylib.Rectangle,
		origin: raylib.Vector2,
		rotation: f32,
		tint: raylib.Color,
	) {

		raylib.DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint)
	}
	api.DrawTexturePoly = proc(
		texture: raylib.Texture2D,
		center: raylib.Vector2,
		points: [^]raylib.Vector2,
		texcoords: [^]raylib.Vector2,
		pointsCount: i32,
		tint: raylib.Color,
	) {
		raylib.DrawTexturePoly(texture, center, points, texcoords, pointsCount, tint)
	}

	// Color/pixel related functions
	api.Fade = raylib.Fade
	api.ColorToInt = raylib.ColorToInt
	api.ColorNormalize = raylib.ColorNormalize
	api.ColorFromNormalized = raylib.ColorFromNormalized
	api.ColorToHSV = raylib.ColorToHSV
	api.ColorFromHSV = raylib.ColorFromHSV
	api.ColorAlpha = raylib.ColorAlpha
	api.ColorAlphaBlend = raylib.ColorAlphaBlend
	api.GetColor = raylib.GetColor
	api.GetPixelColor = raylib.GetPixelColor
	api.SetPixelColor = raylib.SetPixelColor
	api.GetPixelDataSize = raylib.GetPixelDataSize


	// module: text

	// Font loading/unloading functions
	api.GetFontDefault = raylib.GetFontDefault
	api.LoadFont = raylib.LoadFont
	api.LoadFontEx = raylib.LoadFontEx
	api.LoadFontFromImage = raylib.LoadFontFromImage
	api.LoadFontFromMemory = raylib.LoadFontFromMemory
	api.LoadFontData = raylib.LoadFontData
	api.GenImageFontAtlas = raylib.GenImageFontAtlas
	api.UnloadFontData = raylib.UnloadFontData
	api.UnloadFont = raylib.UnloadFont

	// Text drawing functions
	api.DrawFPS = raylib.DrawFPS
	api.DrawText = raylib.DrawText
	api.DrawTextEx = raylib.DrawTextEx
	api.DrawTextPro = raylib.DrawTextPro
	api.DrawTextCodepoint = raylib.DrawTextCodepoint

	// Text misc. functions
	api.MeasureText = raylib.MeasureText
	api.MeasureTextEx = raylib.MeasureTextEx
	api.GetGlyphIndex = raylib.GetGlyphIndex
	api.GetGlyphInfo = raylib.GetGlyphInfo
	api.GetGlyphAtlasRec = raylib.GetGlyphAtlasRec

	// Text codepoints management functions (unicode characters)
	api.LoadCodepoints = raylib.LoadCodepoints
	api.UnloadCodepoints = raylib.UnloadCodepoints
	api.GetCodepointCount = raylib.GetCodepointCount
	api.GetCodepoint = raylib.GetCodepoint
	api.CodepointToUTF8 = raylib.CodepointToUTF8
	api.TextCodepointsToUTF8 = raylib.TextCodepointsToUTF8

	// Text strings management functions (no utf8 strings, only byte chars)         
	// NOTE: Some strings allocate memory internally for returned strings, just be careful!         
	// api.TextCopy = raylib.TextCopy
	// api.TextIsEqual = raylib.TextIsEqual
	// api.TextLength = raylib.TextLength
	// api.TextFormat = raylib.TextFormat
	// api.TextSubtext = raylib.TextSubtext
	// api.TextReplace = raylib.TextReplace
	// api.TextInsert = raylib.TextInsert
	// api.TextJoin = raylib.TextJoin
	// api.TextSplit = raylib.TextSplit
	// api.TextAppend = raylib.TextAppend
	// api.TextFindIndex = raylib.TextFindIndex
	// api.TextToUpper = raylib.TextToUpper
	// api.TextToLower = raylib.TextToLower
	// api.TextToPascal = raylib.TextToPascal
	// api.TextToInteger = raylib.TextToInteger

	// module: models

	// Basic geometric 3D shapes drawing functions
	api.DrawLine3D = raylib.DrawLine3D
	api.DrawPoint3D = raylib.DrawPoint3D
	api.DrawCircle3D = raylib.DrawCircle3D
	api.DrawTriangle3D = raylib.DrawTriangle3D
	api.DrawTriangleStrip3D = raylib.DrawTriangleStrip3D
	api.DrawCube = raylib.DrawCube
	api.DrawCubeV = raylib.DrawCubeV
	api.DrawCubeWires = raylib.DrawCubeWires
	api.DrawCubeWiresV = raylib.DrawCubeWiresV
	api.DrawCubeTexture = raylib.DrawCubeTexture
	api.DrawCubeTextureRec = raylib.DrawCubeTextureRec
	api.DrawSphere = raylib.DrawSphere
	api.DrawSphereEx = raylib.DrawSphereEx
	api.DrawSphereWires = raylib.DrawSphereWires
	api.DrawCylinder = raylib.DrawCylinder
	api.DrawCylinderEx = raylib.DrawCylinderEx
	api.DrawCylinderWires = raylib.DrawCylinderWires
	api.DrawCylinderWiresEx = raylib.DrawCylinderWiresEx
	api.DrawPlane = raylib.DrawPlane
	api.DrawRay = raylib.DrawRay
	api.DrawGrid = raylib.DrawGrid

	// Model loading/unloading functions
	api.LoadModel = raylib.LoadModel
	api.LoadModelFromMesh = raylib.LoadModelFromMesh
	api.UnloadModel = raylib.UnloadModel
	api.UnloadModelKeepMeshes = raylib.UnloadModelKeepMeshes
	api.GetModelBoundingBox = raylib.GetModelBoundingBox

	// Model drawing functions
	api.DrawModel = raylib.DrawModel
	api.DrawModelEx = raylib.DrawModelEx
	api.DrawModelWires = raylib.DrawModelWires
	api.DrawModelWiresEx = raylib.DrawModelWiresEx
	api.DrawBoundingBox = raylib.DrawBoundingBox
	api.DrawBillboard = raylib.DrawBillboard
	api.DrawBillboardRec = raylib.DrawBillboardRec
	api.DrawBillboardPro = raylib.DrawBillboardPro

	// Mesh management functions
	api.UploadMesh = raylib.UploadMesh
	api.UpdateMeshBuffer = raylib.UpdateMeshBuffer
	api.UnloadMesh = raylib.UnloadMesh
	api.DrawMesh = raylib.DrawMesh
	api.DrawMeshInstanced = raylib.DrawMeshInstanced
	api.ExportMesh = raylib.ExportMesh
	api.GetMeshBoundingBox = raylib.GetMeshBoundingBox
	api.GenMeshTangents = raylib.GenMeshTangents
	api.GenMeshBinormals = raylib.GenMeshBinormals

	// Mesh generation functions
	api.GenMeshPoly = raylib.GenMeshPoly
	api.GenMeshPlane = raylib.GenMeshPlane
	api.GenMeshCube = raylib.GenMeshCube
	api.GenMeshSphere = raylib.GenMeshSphere
	api.GenMeshHemiSphere = raylib.GenMeshHemiSphere
	api.GenMeshCylinder = raylib.GenMeshCylinder
	api.GenMeshCone = raylib.GenMeshCone
	api.GenMeshTorus = raylib.GenMeshTorus
	api.GenMeshKnot = raylib.GenMeshKnot
	api.GenMeshHeightmap = raylib.GenMeshHeightmap
	api.GenMeshCubicmap = raylib.GenMeshCubicmap

	// Material loading/unloading functions
	api.LoadMaterials = raylib.LoadMaterials
	api.LoadMaterialDefault = raylib.LoadMaterialDefault
	api.UnloadMaterial = raylib.UnloadMaterial
	api.SetMaterialTexture = raylib.SetMaterialTexture
	api.SetModelMeshMaterial = raylib.SetModelMeshMaterial

	// Model animations loading/unloading functions
	api.LoadModelAnimations = raylib.LoadModelAnimations
	api.UpdateModelAnimation = raylib.UpdateModelAnimation
	api.UnloadModelAnimation = raylib.UnloadModelAnimation
	api.UnloadModelAnimations = raylib.UnloadModelAnimations
	api.IsModelAnimationValid = raylib.IsModelAnimationValid

	// Collision detection functions
	api.CheckCollisionSpheres = raylib.CheckCollisionSpheres
	api.CheckCollisionBoxes = raylib.CheckCollisionBoxes
	api.CheckCollisionBoxSphere = raylib.CheckCollisionBoxSphere
	api.GetRayCollisionSphere = raylib.GetRayCollisionSphere
	api.GetRayCollisionBox = raylib.GetRayCollisionBox
	api.GetRayCollisionModel = raylib.GetRayCollisionModel
	api.GetRayCollisionMesh = raylib.GetRayCollisionMesh
	api.GetRayCollisionTriangle = raylib.GetRayCollisionTriangle
	api.GetRayCollisionQuad = raylib.GetRayCollisionQuad

	// module: audio

	// Audio device management functions
	api.InitAudioDevice = raylib.InitAudioDevice
	api.CloseAudioDevice = raylib.CloseAudioDevice
	api.IsAudioDeviceReady = raylib.IsAudioDeviceReady
	api.SetMasterVolume = raylib.SetMasterVolume

	// Wave/Sound loading/unloading functions
	api.LoadWave = raylib.LoadWave
	api.LoadWaveFromMemory = raylib.LoadWaveFromMemory
	api.LoadSound = raylib.LoadSound
	api.LoadSoundFromWave = raylib.LoadSoundFromWave
	api.UpdateSound = raylib.UpdateSound
	api.UnloadWave = raylib.UnloadWave
	api.UnloadSound = raylib.UnloadSound
	api.ExportWave = raylib.ExportWave
	api.ExportWaveAsCode = raylib.ExportWaveAsCode

	// Wave/Sound management functions
	api.PlaySound = raylib.PlaySound
	api.StopSound = raylib.StopSound
	api.PauseSound = raylib.PauseSound
	api.ResumeSound = raylib.ResumeSound
	api.PlaySoundMulti = raylib.PlaySoundMulti
	api.StopSoundMulti = raylib.StopSoundMulti
	api.GetSoundsPlaying = raylib.GetSoundsPlaying
	api.IsSoundPlaying = raylib.IsSoundPlaying
	api.SetSoundVolume = raylib.SetSoundVolume
	api.SetSoundPitch = raylib.SetSoundPitch
	api.WaveFormat = raylib.WaveFormat
	api.WaveCopy = raylib.WaveCopy
	api.WaveCrop = raylib.WaveCrop
	api.LoadWaveSamples = raylib.LoadWaveSamples
	api.UnloadWaveSamples = raylib.UnloadWaveSamples

	// Music management functions
	api.LoadMusicStream = raylib.LoadMusicStream
	api.LoadMusicStreamFromMemory = raylib.LoadMusicStreamFromMemory
	api.UnloadMusicStream = raylib.UnloadMusicStream
	api.PlayMusicStream = raylib.PlayMusicStream
	api.IsMusicStreamPlaying = raylib.IsMusicStreamPlaying
	api.UpdateMusicStream = raylib.UpdateMusicStream
	api.StopMusicStream = raylib.StopMusicStream
	api.PauseMusicStream = raylib.PauseMusicStream
	api.ResumeMusicStream = raylib.ResumeMusicStream
	api.SeekMusicStream = raylib.SeekMusicStream
	api.SetMusicVolume = raylib.SetMusicVolume
	api.SetMusicPitch = raylib.SetMusicPitch
	api.GetMusicTimeLength = raylib.GetMusicTimeLength
	api.GetMusicTimePlayed = raylib.GetMusicTimePlayed

	// AudioStream management functions
	api.LoadAudioStream = raylib.LoadAudioStream
	api.UpdateAudioStream = raylib.UpdateAudioStream
	// api.CloseAudioStream = raylib.CloseAudioStream
	api.IsAudioStreamProcessed = raylib.IsAudioStreamProcessed
	api.PlayAudioStream = raylib.PlayAudioStream
	api.PauseAudioStream = raylib.PauseAudioStream
	api.ResumeAudioStream = raylib.ResumeAudioStream
	api.IsAudioStreamPlaying = raylib.IsAudioStreamPlaying
	api.StopAudioStream = raylib.StopAudioStream
	api.SetAudioStreamVolume = raylib.SetAudioStreamVolume
	api.SetAudioStreamPitch = raylib.SetAudioStreamPitch
	api.SetAudioStreamBufferSizeDefault = raylib.SetAudioStreamBufferSizeDefault

	// testing
	api.test_img = raylib.LoadTexture(TEST_IMAGE_PATH)
	api.draw_test = proc() {
		api := shared.get_api()
		raylib.DrawTexture(api.test_img, 0, 0, {255, 255, 255, 255})
	}
	api.LoadTexture = proc "cdecl" (path: cstring) -> raylib.Texture {
		return raylib.LoadTexture(path)
	}
}
