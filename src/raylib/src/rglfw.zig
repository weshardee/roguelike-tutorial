/**********************************************************************************************
*
*   rglfw - raylib GLFW single file compilation
*
*   This file includes latest GLFW sources (https://github.com/glfw/glfw) to be compiled together
*   with raylib for all supported platforms, this way, no external dependencies are required.
*
*   LICENSE: zlib/libpng
*
*   Copyright (c) 2017-2022 Ramon Santamaria (@raysan5)
*
*   This software is provided "as-is", without any express or implied warranty. In no event
*   will the authors be held liable for any damages arising from the use of this software.
*
*   Permission is granted to anyone to use this software for any purpose, including commercial
*   applications, and to alter it and redistribute it freely, subject to the following restrictions:
*
*     1. The origin of this software must not be misrepresented; you must not claim that you
*     wrote the original software. If you use this software in a product, an acknowledgment
*     in the product documentation would be appreciated but is not required.
*
*     2. Altered source versions must be plainly marked as such, and must not be misrepresented
*     as being the original software.
*
*     3. This notice may not be removed or altered from any source distribution.
*
**********************************************************************************************/

//#define _GLFW_BUILD_DLL           // To build shared version
// Ref: http://www.glfw.org/docs/latest/compile.html#compile_manual

// Platform options:
// _GLFW_WIN32      to use the Win32 API
// _GLFW_X11        to use the X Window System
// _GLFW_WAYLAND    to use the Wayland API (experimental and incomplete)
// _GLFW_COCOA      to use the Cocoa frameworks
// _GLFW_OSMESA     to use the OSMesa API (headless and non-interactive)
// _GLFW_MIR        experimental, not supported at this moment

#if defined(_WIN32)
    #define _GLFW_WIN32
#endif
#if defined(__linux__)
    #if !defined(_GLFW_WAYLAND)     // Required for Wayland windowing
        #define _GLFW_X11
    #endif
#endif
#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__NetBSD__) || defined(__DragonFly__)
    #define _GLFW_X11
#endif
#if defined(__APPLE__)
    #define _GLFW_COCOA
    #define _GLFW_USE_MENUBAR       // To create and populate the menu bar when the first window is created
    #define _GLFW_USE_RETINA        // To have windows use the full resolution of Retina displays
#endif
#if defined(__TINYC__)
    #define _WIN32_WINNT_WINXP      0x0501
#endif

// Common modules to all platforms
const external/glfw/src/context.c = @import("external/glfw/src/context.c");
const external/glfw/src/init.c = @import("external/glfw/src/init.c");
const external/glfw/src/input.c = @import("external/glfw/src/input.c");
const external/glfw/src/monitor.c = @import("external/glfw/src/monitor.c");
const external/glfw/src/vulkan.c = @import("external/glfw/src/vulkan.c");
const external/glfw/src/window.c = @import("external/glfw/src/window.c");

#if defined(_WIN32)
    const external/glfw/src/win32_init.c = @import("external/glfw/src/win32_init.c");
    const external/glfw/src/win32_joystick.c = @import("external/glfw/src/win32_joystick.c");
    const external/glfw/src/win32_monitor.c = @import("external/glfw/src/win32_monitor.c");
    const external/glfw/src/win32_time.c = @import("external/glfw/src/win32_time.c");
    const external/glfw/src/win32_thread.c = @import("external/glfw/src/win32_thread.c");
    const external/glfw/src/win32_window.c = @import("external/glfw/src/win32_window.c");
    const external/glfw/src/wgl_context.c = @import("external/glfw/src/wgl_context.c");
    const external/glfw/src/egl_context.c = @import("external/glfw/src/egl_context.c");
    const external/glfw/src/osmesa_context.c = @import("external/glfw/src/osmesa_context.c");
#endif

#if defined(__linux__)
    #if defined(_GLFW_WAYLAND)
        const external/glfw/src/wl_init.c = @import("external/glfw/src/wl_init.c");
        const external/glfw/src/wl_monitor.c = @import("external/glfw/src/wl_monitor.c");
        const external/glfw/src/wl_window.c = @import("external/glfw/src/wl_window.c");
        const external/glfw/src/wayland-pointer-constraints-unstable-v1-client-protocol.c = @import("external/glfw/src/wayland-pointer-constraints-unstable-v1-client-protocol.c");
        const external/glfw/src/wayland-relative-pointer-unstable-v1-client-protocol.c = @import("external/glfw/src/wayland-relative-pointer-unstable-v1-client-protocol.c");
        #endif
    #if defined(_GLFW_X11)
        const external/glfw/src/x11_init.c = @import("external/glfw/src/x11_init.c");
        const external/glfw/src/x11_monitor.c = @import("external/glfw/src/x11_monitor.c");
        const external/glfw/src/x11_window.c = @import("external/glfw/src/x11_window.c");
        const external/glfw/src/glx_context.c = @import("external/glfw/src/glx_context.c");
    #endif

    const external/glfw/src/linux_joystick.c = @import("external/glfw/src/linux_joystick.c");
    const external/glfw/src/posix_thread.c = @import("external/glfw/src/posix_thread.c");
    const external/glfw/src/posix_time.c = @import("external/glfw/src/posix_time.c");
    const external/glfw/src/xkb_unicode.c = @import("external/glfw/src/xkb_unicode.c");
    const external/glfw/src/egl_context.c = @import("external/glfw/src/egl_context.c");
    const external/glfw/src/osmesa_context.c = @import("external/glfw/src/osmesa_context.c");
#endif

#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined( __NetBSD__) || defined(__DragonFly__)
    const external/glfw/src/x11_init.c = @import("external/glfw/src/x11_init.c");
    const external/glfw/src/x11_monitor.c = @import("external/glfw/src/x11_monitor.c");
    const external/glfw/src/x11_window.c = @import("external/glfw/src/x11_window.c");
    const external/glfw/src/xkb_unicode.c = @import("external/glfw/src/xkb_unicode.c");
    const external/glfw/src/null_joystick.c = @import("external/glfw/src/null_joystick.c");
    const external/glfw/src/posix_time.c = @import("external/glfw/src/posix_time.c");
    const external/glfw/src/posix_thread.c = @import("external/glfw/src/posix_thread.c");
    const external/glfw/src/glx_context.c = @import("external/glfw/src/glx_context.c");
    const external/glfw/src/egl_context.c = @import("external/glfw/src/egl_context.c");
    const external/glfw/src/osmesa_context.c = @import("external/glfw/src/osmesa_context.c");
#endif

#if defined(__APPLE__)
    const external/glfw/src/cocoa_init.m = @import("external/glfw/src/cocoa_init.m");
    const external/glfw/src/cocoa_joystick.m = @import("external/glfw/src/cocoa_joystick.m");
    const external/glfw/src/cocoa_monitor.m = @import("external/glfw/src/cocoa_monitor.m");
    const external/glfw/src/cocoa_window.m = @import("external/glfw/src/cocoa_window.m");
    const external/glfw/src/cocoa_time.c = @import("external/glfw/src/cocoa_time.c");
    const external/glfw/src/posix_thread.c = @import("external/glfw/src/posix_thread.c");
    const external/glfw/src/nsgl_context.m = @import("external/glfw/src/nsgl_context.m");
    const external/glfw/src/egl_context.c = @import("external/glfw/src/egl_context.c");
    const external/glfw/src/osmesa_context.c = @import("external/glfw/src/osmesa_context.c");
#endif
