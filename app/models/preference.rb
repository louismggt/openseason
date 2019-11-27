class Preference < ApplicationRecord
  PREFERENCE_TYPES = [
    {
      name: "land_type",
      values: ["mer", "campagne", "ville", "montagne"],
      text: 'Trouve ton job saisonnier idéal en 3 question!',
      title: 'Quel environnement préfères-tu ?'
    },
    {
      name: "category",
      values: ["industrie", "agriculture", "social", "service"],
      text: 'Ok, ça focalise déjà ta recherche,<br>encore deux petites questions',
      title: "Quel secteur d'activité ?"
    },
    {
      name: "land_type",
      values: ["1-semaine", "1-mois", "2-mois"],
      text: 'Ok, dernière question ',
      title: 'Pour combien de temps ?'
    }
  ]
    # land_type: ["mer", "campagne", "ville", "montagne"],
    # category: ["industrie", "agriculture", "social", "service"],
    # duration: ["1-semaine", "1-mois", "2-mois"],
  belongs_to :user
end
