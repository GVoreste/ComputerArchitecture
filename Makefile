BASEDIR:=DOUBTS
NOT_RESOLVED:=LINKING
ALL_DOUBTS:=$(notdir $(wildcard $(BASEDIR)/*))
DOUBTS_CLEAN:=$(addsuffix .clean,$(ALL_DOUBTS))
DOUBTS=$(filter-out $(NOT_RESOLVED),$(ALL_DOUBTS))
all: $(DOUBTS)

$(DOUBTS):
	$(MAKE) -C $(BASEDIR)/$@ 


.PHONY: clean $(DOUBTS_CLEAN)

clean: $(DOUBTS_CLEAN)

$(DOUBTS_CLEAN):
	$(MAKE) clean -C $(BASEDIR)/$(basename $@)
