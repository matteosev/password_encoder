password_encoder: password_encoder.asm
	nasm password_encoder.asm -f elf64 -o password_encoder.o
	ld password_encoder.o -o password_encoder
	rm password_encoder.o
  @echo Finished, type ./password_encoder to execute.
