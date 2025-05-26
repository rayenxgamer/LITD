cmake . -B build/ -GNinja     -DCMAKE_SYSTEM_NAME=Windows     -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc -DCMAKE_EXE_LINKER_FLAGS="-static"
