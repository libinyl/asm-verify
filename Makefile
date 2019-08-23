TARGET:=simplest
OBJ:= simplest.o


LD :=ld
NASM:=nasm

LD_FLAGS 	:=
NASM_FLAGS	:= -f elf64

$(TARGET): $(OBJ)
	$(LD) $(LD_FLAGS) $^ -o $@

$(OBJ): simplest.asm
	$(NASM) $(NASM_FLAGS) -g $^ -o $@

clean:
	rm -rf $(TARGET) $(OBJ)
