target("dummylua")
add_defines("Win32", "_WINDOWS_PLATFORM_=1")
add_rules("mode.debug", "mode.release")
-- if is_mode("debug") then
--         set_symbols("debug")
--     set_optimize("none")
-- elseif is_mode("release") then
--     set_symbols("hidden")
--     set_optimize("fastest")
--     set_strip("all")
--     add_cxflags("-DNDEBUG")
-- end

    set_kind("binary")
    add_files("clib/*.c", "common/*.c", "compiler/*.c", "test/*.c", "vm/*.c", "main.c")
