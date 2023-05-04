# Mult-target-directed-fuzzing

# Installation (Tested on Ubuntu 18.04 64-bit with clang 6.0)

```bash
git clone https://github.com/yueduan/Mult-target-directed-fuzzing.git
cd Mult-target-directed-fuzzing
export WORKDIR=$(pwd)
export RGIJON=$(pwd)/RG-IJON
export PATH=$PATH:$RGIJON
export AFL_PATH=$RGIJON
export EXAMPLES=$(pwd)/examples
cd $RGIJON
make clean all
cd llvm_mode
LLVM_CONFIG=llvm-config-6.0 CC=clang-6.0 make
```
# Examples

# Example-1. Instrument code and collect run-time values of a simple motivating example (challeng-RG.c)

## Compile the example program
```bash
cd $EXAMPLES
afl-clang-fast -o challenge-RG challenge-RG.c
```

## fuzz the example binary
The debug.log file will be outputted to /data folder in appending mode so ensure that the /data folder exists and you may need to delete the old debug.log if necessary. The file is created once the target location is reached and it could take a few minutes.
```bash
rm /data/debug.log
afl-fuzz -d -i in-challenge -o out-challenge -x challenge.dict ./challenge-RG @@
```
A sample challenge-debug.log file is stored in the examples folder

# Example-2. CVE-2018-13785 in LibPNG

## Annotate LibPNG using the AIF_RANGE annotation
```bash
cd $EXAMPLES
git clone https://github.com/glennrp/libpng.git
cd libpng
git checkout 916117d
patch -p1 < $EXAMPLES/libpng.diff
sed -i 's/return ((int)(crc != png_ptr->crc));/return (0);/g' pngrutil.c
```

## Compile LibPNG
```bash
cd $EXAMPLES/libpng
autoreconf -f -i
CC=afl-clang-fast ./configure --disable-shared
make clean all
```

## Fuzz LibPNG
```bash
cd $EXAMPLES
rm /data/debug.log
afl-fuzz -d -i in-png -o out-png -x png.dict libpng/pngimage @@
```
A sample libpng-debug.log file is stored in the examples folder
