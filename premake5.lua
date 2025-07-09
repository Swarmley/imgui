

project "imgui"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   targetdir ("%{wks.location}" .. "/bin/%{cfg.buildcfg}" .. "/%{prj.name}")
   architecture "x86_64"


   includedirs {"", "%{include_directories.SDL}"}
   libdirs{
      "%{lib_directories.SDL_debug}"
   }
   files {
   "backends/imgui_impl_sdl3.cpp",
   "backends/imgui_impl_sdl3.h",
   "backends/imgui_impl_dx12.h",
   "backends/imgui_impl_dx12.cpp",
   "backends/imgui_impl_win32.h",
   "backends/imgui_impl_win32.cpp",
   "imgui.h",
   "imgui.cpp",
   "imgui.h",
   "imgui_demo.cpp",
   "imgui_draw.cpp",
   "imgui_internal.h",
   "imgui_tables.cpp",
   "imgui_widgets.cpp",
   "imstb_rectpack.h",
   "imstb_textedit.h",
   "imstb_truetype.h",
   "imconfig.h",
}

   filter "configurations:Debug"
      defines { "_DEBUG", }
      symbols "On"

   filter "configurations:Release"
      optimize "On"