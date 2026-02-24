NOM := NOM
PRENOM := Prénom
DPT := Informatique
DOSSIER := $(NOM)-$(PRENOM)-CDSN_Sciences-$(DPT)-DOSSIER.pdf
ATTESTATIONS := $(NOM)-$(PRENOM)-CDSN_Sciences-$(DPT)-ATTESTATIONS.pdf


all: $(NOM)-$(PRENOM)-CDSN_Sciences-$(DPT)-DOSSIER.pdf $(NOM)-$(PRENOM)-CDSN_Sciences-$(DPT)-ATTESTATIONS.pdf
.PHONY: all

cv.pdf formulaire.pdf annexe.pdf $(DOSSIER) $(ATTESTATION): %.pdf: build/%.pdf
	cp $< $@

build/%.pdf: src/%.pdf | build
	cp $< $@

build/%.pdf: src/%.tex | build
	latexmk -pdf -jobname=$(basename $@)

build/%.pdf: src/%.typ | build
	typst compile --root src/ $< $@

build/$(DOSSIER): build/formulaire.pdf build/attestation-dens.pdf build/cv.pdf build/grades.pdf build/projet-de-these.pdf build/avis-motive.pdf build/accord-direction.pdf build/annexe-signee.pdf
	pdftk cat $^ output $@

build/$(ATTESTATIONS): attestation-m2.pdf attestation-dens.pdf | build
	pdftk $^ cat output $@

build:
	@mkdir -p $@

clean:
	rm -r build
	rm *.pdf
.PHONY: clean
