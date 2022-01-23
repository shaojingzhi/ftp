default:main

main:main.o server.o api.o commands.o 
	gcc main.o server.o api.o commands.o -o server -lpthread -Wall

main.o: main.c
	gcc -c main.c -o main.o -Wall

server.o:server.c server.h
	gcc -c server.c -o server.o -Wall

api.o:api.c api.h
	gcc -c api.c -o api.o -Wall

commands.o: commands.c commands.h
	gcc -c commands.c -o commands.o -Wall

clean:
	rm -f *.o
