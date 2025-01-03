@echo off

set EMSCRIPTEN_SDK_DIR=c:\emsdk
set OUT_DIR=build\web

if not exist %OUT_DIR% mkdir %OUT_DIR%

set EMSDK_QUIET=1
call %EMSCRIPTEN_SDK_DIR%\emsdk_env.bat

odin build main_web -target:freestanding_wasm32 -build-mode:obj -define:RAYLIB_WASM_LIB=env.o  -vet -strict-style -out:%OUT_DIR%\game
IF %ERRORLEVEL% NEQ 0 exit /b 1

for /f %%i in ('odin root') do set "ODIN_PATH=%%i"

set files=main_web\main_web.c %OUT_DIR%\game.wasm.o %ODIN_PATH%\vendor\raylib\wasm\libraylib.a  game\box2d\lib\box2d_wasm.o
set flags=-sUSE_GLFW=3 -sASYNCIFY -sASSERTIONS -DPLATFORM_WEB --shell-file main_web/index_template.html --preload-file assets
rem add `-g` to `emcc` call to enable debug symbols (works in chrome).
emcc -o %OUT_DIR%\index.html %files% %flags% && del %OUT_DIR%\game.wasm.o