class Preference < ApplicationRecord
  PREFERENCE_TYPES = [
    {
      name: "land_type",
      values: ["mer", "campagne", "ville", "montagne"],
      text: "3 petites questions qui vont nous aider:",
      title: 'Quel environnement préfères-tu ?'
    },
    {
      name: "category",
      values: ["industrie", "agricole", "social", "service"],
      text: 'Ok, on y voit plus clair,<br>encore deux petites questions',
      title: "Quel secteur d'activité ?"
    },
    {
      name: "duration",
      values: ["1-semaine", "1-mois", "2-mois"],
      text: 'Ok, dernière question ',
      title: 'Pour combien de temps ?'
    }
  ]
  belongs_to :user
end
