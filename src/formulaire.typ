#set text(font: "New Computer Modern", size: 15pt)

#let todo = state("todo", 0)
#show regex("[Tt][Oo][Dd][Oo]"): it => {
    todo.update(n => n + 1)
    box(baseline: 5pt, rect(fill: red, text(black)[*#it;*]))
}

= TODO list
#let today = datetime.today()
#let deadline = datetime(
    year: 2026,
    month: 03,
    day: 10,
)
Il te reste #(deadline - today).hours() heures, c'est-à-dire #(deadline - today).seconds() secondes (#{(deadline - today).weeks()/52} années) pour faire tout ça (#context todo.at(<end>) TODO restant):
- remplir tous les TODO
- faire signer
- joindre les pièces suivantes:
    - attestation d'inscription au DENS
    - CV
    - Relevés de notes (L3, M1, M2)
    - projet de thèse (2 à 3 pages, max 5)
    - avis détaillé de votre direction de thèse
    - avis de la direction des études de votre département
    - annexe: formulaire Avis ED et laboratoire uniquement à signer
- supprimer cette première page

#v(1fr)
#align(center)[TODO: exister]
#v(1fr)

#pagebreak(weak: true)

#{
    align(center, text(25pt)[*Dossier de candidature*])
    align(center, text(20pt)[Contrats doctoraux spécifiques normaliens Sciences 2026])
    v(1cm)
}

/ Département de rattachement: Informatique
/ Promotion: TODO

= Candidat·e
/ Nom: #smallcaps[Todo]
/ Prénom: Todo
/ Date de naissance: TODO
/ Lieu de naissance: TODO
/ Nationalité: TODO

/ Email ÉNS: #link("mailto:TODO")[TODO]
/ Email personnel: #link("mailto:TODO")[TODO]
/ Téléphone: #link("tel:TODO")[TODO]

= Projet de thèse
/ Établissement d'inscription: TODO
/ Directeur·ice de la thèse: TODO
/ Codirecteur·ice(s) de la thèse: TODO
/ Intitulé provisoire de la thèse: TODO

= École doctorale
/ Code: École doctorale n° TODO
/ Intitulé: TODO
/ Directeur·ice: Todo #smallcaps[Todo]

= Laboratoire
/ Code: TODO _(UMR ou autre)_
/ Intitulé: TODO
/ Directeur·ice: Todo #smallcaps[Todo]

= Résumé du projet de thèse
_TODO (800 caractères maximum)_

#v(1fr)


#text(size: 12pt)[Je, soussigné·e Todo #smallcaps[Todo] #link("mailto:TODO")[TODO] _(nom, prénom, mail du/de la directeur·ice de thèse)_, certifie l'exactitude des renseignements fournis ci-dessus.]

#h(1fr); *Signature:* #h(1em) #box(baseline: 25%, rect(width: 45%, height: 1.5cm))

<end>
// Local Variables:
// typst-preview--master-file: "./formulaire-cdsn.typ"
// End:
