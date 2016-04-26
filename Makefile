﻿# Makefile generated by makedep.

# Tools
RM   = rm
AS   = gcc
CC   = gcc
CXX  = g++
LD   = g++
LEX  = flex
YACC = bison

# File Lists
SRCS_AS  = asm/dynamic.S asm/intr_common_handler.S asm/multiboot.S asm/start.S
SRCS_CC  = src/console.c src/init.c src/interrupts.c src/malloc.c src/pmm.c src/serial.c src/stdlib.c src/timer.c src/vmm.c
SRCS_CXX = src/cplusplus.cpp src/vm.cpp csl/cpustatetype.cpp csl/io.cpp
OBJS     = obj/dynamic.o obj/intr_common_handler.o obj/multiboot.o obj/start.o obj/console.o obj/init.o obj/interrupts.o obj/malloc.o obj/pmm.o obj/serial.o obj/stdlib.o obj/timer.o obj/vmm.o obj/cplusplus.o obj/vm.o obj/cpustatetype.o obj/io.o

# Flags
FLAGS    = -g -Wall -Wextra -m32 -DCIRCUIT_OS -Dnullptr=0 -D__cdecl="__attribute__((cdecl))" -mno-sse -mno-sse2 -mno-mmx -I/home/felix/projects/Electronics/Electronics/Conductance -I/home/felix/projects/Electronics/Electronics/Tools
ASFLAGS  = -masm=intel
CCFLAGS  = -std=c11 -Dnullptr=0 -fno-stack-protector -ffreestanding -Iinclude
CXXFLAGS = -std=c++11 -fno-stack-protector -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore -ffreestanding -Wno-unused-function -Iinclude
LDFLAGS  = -nostdlib -fno-builtin -Tkernel.ld

# Targets
all: prereqs kernel

prereqs:
	mkdir obj
	git clone https://github.com/MasterQ32/ker
	mv ker/* .
.PHONY: clean all prereqs
clean:
	$(RM) obj/dynamic.o obj/intr_common_handler.o obj/multiboot.o obj/start.o obj/console.o obj/init.o obj/interrupts.o obj/malloc.o obj/pmm.o obj/serial.o obj/stdlib.o obj/timer.o obj/vmm.o obj/cplusplus.o obj/vm.o obj/cpustatetype.o obj/io.o

kernel: obj/dynamic.o obj/intr_common_handler.o obj/multiboot.o obj/start.o obj/console.o obj/init.o obj/interrupts.o obj/malloc.o obj/pmm.o obj/serial.o obj/stdlib.o obj/timer.o obj/vmm.o obj/cplusplus.o obj/vm.o obj/cpustatetype.o obj/io.o conductance/assembly.o conductance/casts.o conductance/compoundtype.o conductance/instructions.o conductance/module.o conductance/object.o conductance/opcodes.o conductance/process.o conductance/string.o conductance/thread.o conductance/virtualmachine.o conductance/vmpointertype.o conductance/vmprimitivetype.o conductance/vmprocessidtype.o conductance/vmtype.o conductance/vmvalue.o conductance/vmvoidtype.o
	$(LD) $(FLAGS) $(LDFLAGS) -o $@ obj/dynamic.o obj/intr_common_handler.o obj/multiboot.o obj/start.o obj/console.o obj/init.o obj/interrupts.o obj/malloc.o obj/pmm.o obj/serial.o obj/stdlib.o obj/timer.o obj/vmm.o obj/cplusplus.o obj/vm.o obj/cpustatetype.o obj/io.o conductance/assembly.o conductance/casts.o conductance/compoundtype.o conductance/instructions.o conductance/module.o conductance/object.o conductance/opcodes.o conductance/process.o conductance/string.o conductance/thread.o conductance/virtualmachine.o conductance/vmpointertype.o conductance/vmprimitivetype.o conductance/vmprocessidtype.o conductance/vmtype.o conductance/vmvalue.o conductance/vmvoidtype.o

# src/console.c
obj/console.o: src/console.c include/console.h include/kstdlib.h \
 include/varargs.h include/config.h include/malloc.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/console.c

# src/init.c
obj/init.o: src/init.c include/kernel.h include/kstdlib.h include/varargs.h \
 include/config.h include/malloc.h include/console.h include/interrupts.h \
 include/cpustate.h include/pmm.h include/multiboot.h include/vmm.h \
 include/timer.h include/serial.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/init.c

# src/interrupts.c
obj/interrupts.o: src/interrupts.c include/interrupts.h include/cpustate.h \
 include/console.h include/kstdlib.h include/varargs.h include/config.h \
 include/malloc.h include/io.h src/intr_stubs.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/interrupts.c

# src/malloc.c
obj/malloc.o: src/malloc.c include/config.h include/kernel.h \
 include/kstdlib.h include/varargs.h include/malloc.h include/console.h \
 include/serial.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/malloc.c

# src/pmm.c
obj/pmm.o: src/pmm.c include/pmm.h include/multiboot.h include/kernel.h \
 include/kstdlib.h include/varargs.h include/config.h include/malloc.h \
 include/console.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/pmm.c

# src/serial.c
obj/serial.o: src/serial.c include/io.h include/serial.h include/kstdlib.h \
 include/varargs.h include/config.h include/malloc.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/serial.c

# src/stdlib.c
obj/stdlib.o: src/stdlib.c include/kstdlib.h include/varargs.h \
 include/config.h include/malloc.h include/kernel.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/stdlib.c

# src/timer.c
obj/timer.o: src/timer.c include/timer.h include/kernel.h \
 include/interrupts.h include/cpustate.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/timer.c

# src/vmm.c
obj/vmm.o: src/vmm.c include/config.h include/vmm.h include/pmm.h \
 include/multiboot.h include/kstdlib.h include/varargs.h include/malloc.h \
 include/console.h include/kernel.h
	$(CC)  $(FLAGS) $(CCFLAGS) -o $@ -c src/vmm.c

# src/cplusplus.cpp
obj/cplusplus.o: src/cplusplus.cpp include/kstdlib.h include/varargs.h \
 include/config.h include/malloc.h include/console.h include/ker/new.hpp
	$(CXX)  $(FLAGS) $(CXXFLAGS) -o $@ -c src/cplusplus.cpp

# src/vm.cpp
obj/vm.o: src/vm.cpp include/kstdlib.h include/varargs.h include/config.h \
 include/malloc.h include/timer.h include/dynamic.h include/console.h \
 include/multiboot.h include/interrupts.h include/cpustate.h \
 src/../csl/cpustatetype.hpp src/../csl/io.hpp
	$(CXX)  $(FLAGS) $(CXXFLAGS) -o $@ -c src/vm.cpp

# csl/cpustatetype.cpp
obj/cpustatetype.o: csl/cpustatetype.cpp csl/cpustatetype.hpp \
 include/cpustate.h include/console.h
	$(CXX)  $(FLAGS) $(CXXFLAGS) -o $@ -c csl/cpustatetype.cpp

# csl/io.cpp
obj/io.o: csl/io.cpp include/io.h csl/io.hpp
	$(CXX)  $(FLAGS) $(CXXFLAGS) -o $@ -c csl/io.cpp

# asm/dynamic.S
obj/dynamic.o: asm/dynamic.S
	$(AS) $(FLAGS) $(ASFLAGS) -o $@ -c asm/dynamic.S

# asm/intr_common_handler.S
obj/intr_common_handler.o: asm/intr_common_handler.S
	$(AS) $(FLAGS) $(ASFLAGS) -o $@ -c asm/intr_common_handler.S

# asm/multiboot.S
obj/multiboot.o: asm/multiboot.S
	$(AS) $(FLAGS) $(ASFLAGS) -o $@ -c asm/multiboot.S

# asm/start.S
obj/start.o: asm/start.S
	$(AS) $(FLAGS) $(ASFLAGS) -o $@ -c asm/start.S

# Custom Targets

TOOLS=/home/felix/projects/Electronics/build-Electronics-Clang-Debug/bin

obj/main.in: scripts/main.cu
	$(TOOLS)/copper \
		scripts/main.cu > \
		scripts/main.cu.spark
	$(TOOLS)/spark \
		scripts/main.cu.spark \
		obj/main.in

obj/keyboard.in: scripts/keyboard.cu
	$(TOOLS)/copper \
		scripts/keyboard.cu > \
		scripts/keyboard.cu.spark
	$(TOOLS)/spark \
		scripts/keyboard.cu.spark \
		obj/keyboard.in

QEMUFLAGS=-serial stdio -kernel kernel -initrd obj/main.in,obj/keyboard.in

.PHONY: run
run:
	qemu-system-i386 $(QEMUFLAGS)

.PHONY: debug
debug:
	qemu-system-i386 -s -S $(QEMUFLAGS)
