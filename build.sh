#!/bin/sh

git clone https://github.com/powturbo/TurboPFor tpf
cd tpf
make bitpack.o bitpack_sse.o bitunpack.o bitunpack_sse.o vp4c.o vp4c_sse.o vp4d.o vp4d_sse.o bitutil.o vint.o
ar rcs libturbopfor.a bitpack.o bitpack_sse.o bitunpack.o bitunpack_sse.o vp4c.o vp4c_sse.o vp4d.o vp4d_sse.o bitutil.o vint.o