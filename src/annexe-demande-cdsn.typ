#image("logo-psl.png", width: 30%)

#set document(
    title: [Candidature à un contrat doctoral spécifique ÉNS]
)
#set par(justify: true)

#title()
#v(1fr)
#let field(length) = box(width: length, line(length: 100%, stroke: .5pt))

#let gentilé = [M./M#super[me]] // TODO: mettre le vrai gentilé, ou le supprimer
#let nom = [Prénom #smallcaps[Nom]]       // TODO: comment tu t'appelles?

Je soussigné·e #field(20em), en qualité de directeur·ice du laboratoire / équipe d'accueil #field(15em), déclare avoir pris 
connaissance du projet de thèse de #gentilé #nom et accepte de l'accueillir dans ma structure si un contrat 
doctoral lui est attribué.

Fait à #field(5em), le #field(8em). #h(1cm) *Signature*:

#v(2fr)

Je soussigné·e #field(20em), en qualitté de directeur·ice de l'école doctorale #field(15em), déclare avoir pris connaissance
du projet de thèse de #gentilé #nom et accepte de l'accueillir dans ma structure si un contrat doctoral lui 
est attribué.

Fait à #field(5em), le #field(8em). #h(1cm) *Signature*:
#v(2fr)
// Local Variables:
// typst-preview--master-file: "/annexe-demande-cdsn.typ"
// End:
