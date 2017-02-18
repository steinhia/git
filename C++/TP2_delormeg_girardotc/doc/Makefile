DOC = doxygen

html/index.html : Doxyfile ../src/Dvector.h
	$(DOC) Doxyfile

.Phony: clean

clean :
	rm -rf html/* doxygen_sqlite3.db latex

