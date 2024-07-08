add_rules("mode.release", "mode.debug")
target("dummylua")
-- add_defines("Win32", "_WINDOWS_PLATFORM_=1")
    -- on_build("windows", function (target)
    --     print("build for windows")
    --     add_defines("Win32", "_WINDOWS_PLATFORM_=1")
    -- end)
    if is_plat("windows") then
        add_defines("Win32", "_WINDOWS_PLATFORM_=1")
    end
    set_arch("x86")
    set_symbols("debug")
    -- add_rules("mode.debug", "mode.release")
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

-- xmake project -k compile_commands
