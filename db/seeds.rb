# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dessert.destroy_all

desserts = [
  {
    name: "Gâteau au Yaourt",
    technique: "Mettre le four à préchauffer à 210 deg. Dans un grand récipient, verser la farine, le sucre, les oeufs, le yaourt, la levure, l'huile, l'amende amère ou rhum. Bien mélanger et le verser dans un moule à cake préalablement préparé avec du papier d'aluminium. Enfourner et laisser cuir pendant 45 min. "
    },
  {
    name: "Charlotte aux Fruits",
    technique: "Préparation de la mousse aux fruits"
    },
  {
    name: "Macarons",
    technique: "Mettre le four à préchauffer à 230 deg. Dans un récipient, verser le sucre glace et la poudre d\'amende. Monter les blancs en neige et mélanger délicatement avec le mélange sucre-amende. A l\'aide d\'une poche à douille, faire des petits tas de 4cm de diamètre environ sur une plaque à patisserie. Humidifier avec un pinceau le dessus du macaron et saupoudrer de sucre glace. Enfourner et reduiser la temperature du four à 120 deg. Laisser cuire pendant 15 min."
    },
  {
    name: "Dacquoise",
    technique: "Mettre le four à préchauffer à 230 deg. Dans un récipient, verser le sucre glace, la poudre d\'amende et la farine."
    }
]

desserts.each { |dessert| Dessert.create(dessert)}
