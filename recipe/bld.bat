copy "%RECIPE_DIR%\build.sh" .
FOR /F "delims=" %%i in ('cygpath.exe -u "%LIBRARY_PREFIX%"') DO set "PREFIX=%%i"
FOR /F "delims=" %%i in ('cygpath.exe -u "%BUILD_PREFIX%"') DO set "BUILD_PREFIX=%%i"
FOR /F "delims=" %%i in ('cygpath.exe -u "%SRC_DIR%"') DO set "SRC_DIR=%%i"
FOR /F "delims=" %%i in ('cygpath.exe -u "%RECIPE_DIR%"') DO set "RECIPE_DIR=%%i"

bash -lc "./configure --prefix=`cygpath -u $PREFIX` --bindir=`cygpath -u $LIBRARY_BIN` --libdir=`cygpath -u $LIBRARY_LIB`"
bash -lc "make"
bash -lc "make install"

if errorlevel 1 exit 1
