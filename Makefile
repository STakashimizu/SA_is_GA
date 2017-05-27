MODULES := extraction sf/Maps VPHL/Distributions VPHL/Intervals VPHL/PrImp VPHL/SfLib
VS      := $(MODULES:%=%.v)

.PHONY: coq clean

coq: Makefile.coq
	$(MAKE) -f Makefile.coq

Makefile.coq: Makefile $(VS)
	coq_makefile $(VS) -R sf sf -R VPHL VPHL -o Makefile.coq

clean:: Makefile.coq
	$(MAKE) -f Makefile.coq clean
	rm -f Makefile.coq
