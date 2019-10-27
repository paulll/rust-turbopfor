#!/bin/sh

git clone https://github.com/powturbo/TurboPFor tpf
cd tpf
sed -i -re 's/(p4n.*\(\s*)(.*);/\1const \2;/' vp4.h
LIBS="bitpack.o bitpack_sse.o bitunpack.o bitunpack_sse.o vp4c.o vp4c_sse.o vp4d.o vp4d_sse.o bitutil.o vint.o bitpack_avx2.o bitunpack_avx2.o vp4c_avx2.o vp4d_avx2.o"
make AVX2=1 $LIBS
ar rcs libturbopfor.a $LIBS
