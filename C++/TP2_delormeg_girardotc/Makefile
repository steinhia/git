SRC_DIR = src
DOC_DIR = doc

.PHONY: check clean doc all viewDoc checkMemory

check: 
	@(cd $(SRC_DIR) && $(MAKE) $@)
	
checkMemory:
	@(cd $(SRC_DIR) && $(MAKE) $@)


all: 
	@($(MAKE) clean)
	@($(MAKE) check)
	@($(MAKE) doc)
	
doc:
	@(cd $(DOC_DIR) && $(MAKE) html/index.html)
clean:
	@(cd $(SRC_DIR) && $(MAKE) clean)
	@(cd $(DOC_DIR) && $(MAKE) clean)

viewDoc: doc 
	firefox doc/html/index.html
