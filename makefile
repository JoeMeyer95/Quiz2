all : 
	make archive
	make build
build:
	make college

college : course.o college.o collegemain.o
	g++ course.o college.o collegemain.o -o college

course.o : course.h course.cc node.h

	g++ -c course.cc

college.o : college.h college.cc

	g++ -c college.cc

collegemain.o : collegemain.cc

	g++ -c collegemain.cc

doc :
	doxygen collegemain.cc

myexe:
	make college

doczip:
	tar -czvf documentation.tar.gz html later

archive :
	tar -czvf college.tar.gz college.cc college.h collegemain.cc course.cc course.h node.h makefile

clean :
	rm -f college course.o college.o collegemain.o

