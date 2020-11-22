
bash -lc "./configure --prefix=`cygpath -u $PREFIX`"
bash -lc "make"
bash -lc "make install"

if errorlevel 1 exit 1
