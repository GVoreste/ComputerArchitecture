BASEDIR:=DOUBTS
NOT_RESOLVED:=LINKING
ALL_DOUBTS:=$(filter-out README.rst LDD,$(notdir $(wildcard $(BASEDIR)/*)))
DOUBTS_CLEAN:=$(addsuffix .clean,$(ALL_DOUBTS))
DOUBTS=$(filter-out $(NOT_RESOLVED),$(ALL_DOUBTS))
all: $(DOUBTS) htmldocs

$(DOUBTS):
	$(MAKE) -C $(BASEDIR)/$@ 

htmldocs:
	$(MAKE) -C docs html

.PHONY: clean $(DOUBTS_CLEAN) docsclean

clean: $(DOUBTS_CLEAN) docsclean

$(DOUBTS_CLEAN):
	$(MAKE) clean -C $(BASEDIR)/$(basename $@)

docsclean:
	$(MAKE) -C docs clean