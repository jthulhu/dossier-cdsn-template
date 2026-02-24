# Prérequis
Pour utiliser ce repo pour faire votre dossier de CDSN, vous aurez besoin de
- typst
- GNU make
- pdftk
- latexmk (utile uniquement si vous faites votre CV en LaTeX plutôt qu'en Typst)

# Dossier de CDSN

Pour faire votre dossier de CDSN, vous devez accomplir les quêtes suivantes:
- Indiquer votre nom/prénom dans le `Makefile`
- Remplir le formulaire (dans le fichier `src/formulaire.typ`).  Le formulaire contient lui-même la liste des choses à faire pour le remplir.
  Vous pouvez visualiser l'avancement du remplissage de votre formulaire en faisant `make formulaire.pdf`
- Télécharger votre attestation d'inscription au DENS, et la placer dans `src/attestation-dens.pdf`.  Attention, si vous téléchargez votre
  *certificat de scolarité*[^1], celui-ci contient plus de pages que celle qui vous sert.  Dans ce cas, nommez votre fichier `src/certificat-scolarite.pdf`,
  et la page utile sera extraite automatiquement.
- Réaliser votre CV.  Vous pouvez soit vous baser sur le template typst fournit, soit inclure votre CV en pdf dans `src/cv.pdf`, soit inclure
  votre CV écrit en LaTeX dans `src/cv.tex`.
- Télécharger vos relevés de notes de L3, M1 et M2 (disponibles sur [le cloud](https://cloud.eleves.ens.fr)) dans un fichier nommé
  `src/grades.pdf`.
- Mettre votre projet de thèse dans `build/projet-de-these.pdf`.
- Mettre l'avis motivé de votre encadrant·e de thèse dans `build/avis-motive.pdf`.
- Mettre l'accord de la direction dans `build/accord-direction.pdf`.
- Remplir votre nom/prénom/gentilé dans le template de l'annexe, dans `src/annexe.typ`, puis compiler cette annexe avec `make annexe.pdf`.
- Faire signer l'annexe, et mettre la version signée dans `src/annexe-signee.pdf`.

Si vous faites `make`, et que votre dossier n'est pas complet, le message
d'erreur va vous expliquer ce qu'il manque.  N'hésitez pas à tab-compléter
avec `make`.

[1]: Téléchargeable sur Pégasus, dans *Document Officiels*.
