nasm -f elf64 shifty-mofo.S
gcc -no-pie shifty-mofo.o -o shifty-mofo -lc
