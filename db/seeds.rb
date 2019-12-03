# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Favorite.destroy_all
Mission.destroy_all
Job.destroy_all
# User.destroy_all


Preference.destroy_all


puts "Building database"

# User.create!(
#   email: "patujulie@gmail.com",
#   password: "julieto",
#   first_name: "julie",
#   last_name: "Paturel",
#   username: "patujulie",
#   nationality: "francaise",
#   address: "310 ter rue de tourcoing - 59420 Mouvaux",
#   biograophy: "Jeune femme dynamique a la recherche d'un job d'été en extérieur. Je suis souriante, j'aime beaucoup rire et raconter des comptes avec de nouveaux amis ! ",
#   age: 23
# )
User.create!(
  email: "louis.guig@gmail.com",
  password: "louisto",
  first_name: "Louis",
  last_name: "Guiganton",
  username: "Louismggt",
  nationality: "francaise",
  address: "105, rue des martyrs - 59130 LAMBERSART",
  biograophy: "Farouche jeune homme, courageux, adepte de la musique disco et des voyages en pantoufle et tuktuk",
  age: 33
)

User.create!(
  email: "piteurspawn@msn.com",
  password: "azerty",
  first_name: "Pierre",
  last_name: "Danckaert",
  username: "Dank",
  nationality: "francaise",
  address: "2, rue Albert Bailly - 59350 SAINT-ANDRÉ",
  biograophy: "Sac sur le dos, musique dans les oreilles, crayons à la main, prêt à partir à l'aventure !",
  age: 33
)

Job.create!(
  title: "Ouvrier taille des arbres en pépinière H/F.",
  address: "190, Route des Pépinières - 38270 JARCIEU",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,18),
  end_date: Date.new(2020,4,18),
  description: "Taille des arbres en pépinière (H/F).",
  content: "Contrat de 4 mois. Amateur de plantes, vous aimez travailler dehors dans toutes les conditions, au contact de la terre. La taille (principalement au sécateur) est une des compétences clef de notre métier.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Pépinières Guillot Bourne II",
  email: "contact@guillot-bourne.com",
  telephone: "0474848518",
  website: "https://www.guillot-bourne.com/",
  logo: "https://www.guillot-bourne.com/wp-content/uploads/2018/06/Logo-Guillot-Bourne-II-2018-01.png",
  photo: "https://www.guillot-bourne.com/wp-content/uploads/2019/11/BETULAermaniiHolland3.jpg",
)

Job.create!(
  title: "Animateur d'enfants H/F",
  address: "Immeuble La Lauzière - 73130 SAINT FRANÇOIS",
  land_type: "Montagne",
  meal: false,
  accommodation: true,
  salary: 1625,
  places: 1,
  start_date: Date.new(2019,12,18),
  end_date: Date.new(2020,4,18),
  description: "Animation petite enfance 3 à 6 ans.",
  content: "Vous travaillerez avec des enfants de 3 mois à 6 ans Accueil des enfants et des familles Mise en place d\'activités et animations en intérieur. Préparation et habillage des enfants pour leurs cours de ski avec les moniteurs ESF Mise en place des repas et goûters",
  category: "Service",
  professional_domain: "Services à la personne / à la collectivité",
  name: "Maison des enfants",
  email: "associationclubsenfants@wanadoo.fr",
  telephone: "0479591560",
  website: "https://www.esf-saintfrancois.com/conseils/maison-des-enfants",
  logo: "https://www.esf-saintfrancois.com/phototheque/360x300/logo_familleplus-0.jpg",
  photo: "https://www.esf-saintfrancois.com/phototheque/300x200/img_1592.JPG",
)

Job.create!(
  title: "Factotum",
  address: "Camping Montpellier Plage - 95, avenue Saint Maurice - 34250 Palavas Les Flots",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1872,
  places: 1,
  start_date: Date.new(2020,1,1),
  end_date: Date.new(2020,9,30),
  description: "Prise en charge de l'entretien des bungalows.",
  content: "Pour un camping vous serez en charge de l entretien des bungalows et de l'ensemble du camping. Vous serez amener à placer les personnes dans le camping et vous ferez l'état des lieux pour les entrées et les sorties. Vous aurez en charge les petites réparations liées au quotidien de la vie dans le camping (ampoule, serrure etc), Donc vous êtes bon(ne) bricoleur(se). Contrat saisonnier, prise de poste début janvier 2020 jusqu'à fin septembre. Horaire en continu soit du matin soit de l'après-midi ou en coupure à définir avec l'employeur Travail le week-end. 39H Travail samedi et dimanche + heures supplémentaires",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Montpellier Plage",
  email: "camping.montpellier.plage@wanadoo.fr",
  telephone: "0467680091",
  website: "http://www.camping-montpellier-plage.com/",
  logo: "http://www.camping-montpellier-plage.com/medias/images/decoupe/montpellier-plage.png",
  photo: "http://www.camping-montpellier-plage.com/medias/admin/5-galerie-sejour.jpg",
)

Job.create!(
  title: "Réceptionniste polyvalent H/F",
  address: "LE BORSAT IV, 73320 Tignes",
  land_type: "Montagne",
  meal: false,
  accommodation: true,
  salary: 1521,
  places: 1,
  start_date: Date.new(2020,1,1),
  end_date: Date.new(2020,4,30),
  description: "Accueil et gestion des réservations pour notre résidence",
  content: "Accueillir, informer et conseiller la clientèle sur le fonctionnement et de la Résidence Assurer l’accueil téléphonique, la transmission des appels et des messages
Enregistrer les réservations et actualiser le planning d’occupation des logements
Effectuer les formalités administratives liées au séjour de la clientèle
Etablir les factures liées aux frais de séjour, contrôler les moyens de paiement et effectuer l’encaissement
Transmettre à son supérieur hiérarchique et à ses collègues, les informations et/ou les consignes éventuelles de certains clients, relatives au bon déroulement des séjours clients
Assurer l’ensemble des opérations d’entretien journalier et de nettoyage nécessaires au fonctionnement de l’établissement (commun, chambre, infrastructures …)",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "VACANCEOLE",
  email: "vacanceole@orange.fr",
  telephone: "0479757522",
  website: "https://www.vacanceole.com/",
  logo: "https://www.vacanceole.com/wp-content/uploads/logo-vacanceole-fb.png",
  photo: "https://www.vacanceole.com/wp-content/uploads/xTIGNES-LE-BORSAT-IV-HIVER-1400x500.jpg.pagespeed.ic.874AWIHt0w.webp",
)


Job.create!(
  title: "Tailleur de vigne H/F",
  address: "51270 COURJEONNET",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1200,
  places: 10,
  start_date: Date.new(2020,10,1),
  end_date: Date.new(2020,10,7),
  description: "Vendangeur(euse) pour une semaine.",
  content: "Domaine familiale recherche vendangeurs hommes et femmes a partir du vendredi 13 septembre pour une durée d'environ 5 jours, nourrit le midi. les repas sont offert. les animaux ne sont pas accepté.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne Simon Félix",
  email: "champagnesimonfelix@orange.fr",
  telephone: "0689780512",
  website: "https://www.facebook.com/champagnesimonfelix/",
  logo: "https://www.champagnesimonfelix.fr/wp-content/uploads/2019/02/cropped-LOGO-NOIR-copie.png",
  photo: "https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/76693409_807270383026278_7825131097041141760_o.jpg?_nc_cat=109&_nc_ohc=QMjkUYKjP1cAQkCMCIsR1XoJF1N8Pd9mMG1Ii0GalpvWGG-Wb-p8xkNqQ&_nc_ht=scontent-lht6-1.xx&oh=c9da9d2bb9142bf1503a19b472926ed8&oe=5E82B2C9",
)


Job.create!(
  title: "Ouvrier(ère) de culture maraîchère",
  address: "13310 - ST MARTIN DE CRAU",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1404,
  places: 2,
  start_date: Date.new(2019,11,30),
  end_date: Date.new(2020,3,31),
  description: "Ramassage et emballage de salades.",
  content: "Vous serez chargé(e) du ramassage et de l'emballage de salades sous serres. Vous travaillerez du lundi au vendredi, de 8h à 12h et de 14h à 17h.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "EARL NORMO PRIMEURS",
  email: "",
  telephone: "0666789895",
  website: "",
  logo: "",
  photo: "",
)


Job.create!(
  title: "Éducateur de jeunes enfants H/F",
  address: "VILLAGE CLUBS DU SOLEIL, 38000 - MONT DE LANS",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1574,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,3,30),
  description: "Accueil et animation auprès de jeunes enfants",
  content: "Vos missions:
-Accueillir et prendre en charge les enfants de 3 mois à 6 ans
-Assurer l'accueil des parents et le reporting de la journée
-Animer les activités manuelles et artistiques, les jeux, et les temps calmes
-Mettre en œuvre le spectacle des 4-6 ans
-Veiller au bien être des enfants et à leur sécurité
-Assurer un rôle pédagogique et éducatif auprès des enfants et de l'équipe
-Sensibiliser les animateurs enfants sur leur rôle éducatif
-Responsable de l'hygiène et de la sécurité des enfants
Votre profil:
-Le diplôme d'Etat d'éducateur de jeunes enfants (DEEJE)
-BAFA complet, perfectionnement petite enfance / BAPAAT / BPJEPS / BEATEP
-Expérience appréciée dans poste similaire
-Pratique de l'anglais appréciée
Les Villages Clubs du Soleil étudient, à compétences égales, toutes candidatures dont celles de personnes en situation de handicap
**Poste nourri et logé contre retenue**",
  category: "Social",
  professional_domain: "Services à la personne / à la collectivité",
  name: "VILLAGE CLUBS DU SOLEIL",
  email: "morzine.assistante@lesvillagesclubsdusoleil.com",
  telephone: "0476797640",
  website: "villagesclubsdusoleil.com",
  logo: "https://www.actumontagne.com/wp-content/uploads/2018/01/2018-01-19_15.35.44.jpg",
  photo: "",
)

Job.create!(
  title: "Skiman / Skiwoman",
  address: "74000 - LES GETS",
  land_type: "Montagne",
  meal: false,
  accommodation: false,
  salary: 2200,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,4,1),
  description: "Vente, location, entretient du matériel de ski.",
  content: "Vos actions principales se décomposeront par de la vente/location, du réglage
sur divers équipements de
sport d'hiver",
  category: "Service",
  professional_domain: "Sport",
  name: "PERRIERES SPORT",
  email: "",
  telephone: "0666789894",
  website: "https://www.psps.fr/",
  logo: "",
  photo: "https://www.lesgets.com/img/sitra_medias/6191935-fr-capture-d-e-cran-2019-05-10-a-11-10-29.png?1574550839",
)



Job.create!(
  title: "Chef de rang",
  address: "73000 - ARC 1950",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 2000,
  places: 1,
  start_date: Date.new(2020,1,1),
  end_date: Date.new(2020,3,1),
  description: "chef de rang pour une brasserie savoyarde",
  content: "vous serez chef de rang(H/F) pour une brasserie savoyarde entre 200 et300 couverts par jour.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "LE PERCE-NEIGE",
  email: "latabledeslys@live.fr",
  telephone: "0647829302",
  website: "https://www.leperceneige-lesarcs.fr/",
  logo: "https://s3-eu-west-1.amazonaws.com/sc-files.pjms.fr/p/pjms/652/000/315/452/4e42fd16e1fb46be8eef4174e114f4f4.png",
  photo: "https://s3-eu-west-1.amazonaws.com/sc-files.pjms.fr/p/pjms/652/000/315/452/129ee9477b39419eaba108419ad472eb.jpg",
)

Job.create!(
  title: "Conditionneur main (H/F)",
  address: "13002 MARSEILLE",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1900,
  places: 1,
  start_date: Date.new(2020,1,1),
  end_date: Date.new(2020,6,30),
  description: "Chocolaterie recherche  du renfort pour la période des fêtes.",
  content: "Chocolaterie artisanale située à Cabries (13480) recherche  du renfort pour la période des fêtes. Habileté manuelle exigée et capacité à travailler en équipe. Aucune connaissance particulière du chocolat n'est demandée mais une expérience dans ce domaine serait la bienvenue. Un moyen de locomotion est nécessaire pour arriver jusqu'à l'entreprise.",
  category: "Industrie",
  professional_domain: "Industrie",
  name: "L'Espérantie",
  email: "martorana@esperantine.com",
  telephone: "0491014496",
  website: "https://esperantine-de-marseille.com/",
  logo: "https://www.salonsce.com/exposants/2017/2/l-esperantine-d-800-399.png",
  photo: "https://lh3.googleusercontent.com/txNHw0eTKAeCQ8hMw1ObeatgFhKp5JDUnQia-8XZm29O8HJzC_LBSl4dG6QiC6I2fkmVI7dK=w1080-h608-p-no-v0",
)

Job.create!(
  title: "Conducteur de ligne de production/fabrication",
  address: "33000 Bordeaux",
  land_type: "Ville",
  meal: true,
  accommodation: false,
  salary: 1570,
  places: 1,
  start_date: Date.new(2020,1,1),
  end_date: Date.new(2020,6,30),
  description: "Vous assurez la conduite des équipements de fabrication et production.",
  content: "Au sein de l'atelier de production, vous assurez la conduite des équipements de fabrication ou des lignes de production en respectant les nomenclatures et le planning défini.
Vos missions sont :
         Anticiper et réaliser les changements de formats, effectuer les nettoyages
         Limiter les temps d'arrêt sur ligne et les pertes
         Contrôler régulièrement les produits sur ligne selon les procédures en place
         Contrôler le flux de personnel sur la ligne de fabrication, affecter les bonnes ressources au bon endroit et au bon moment
         Maintenir la motivation et l'implication des équipes de la ligne

Sélectionné(e) selon la Méthode de Recrutement par Simulation (MRS), vous serez évalué(e) via plusieurs exercices :Respecter des normes et consignes/ Exécuter des gestes avec dextérité / Maintenir son attention dans la durée.
Inscription réunion 05 24 07 70 21 de 10h30 à12h15 ou mrsgironde.33062@pole-emploi",
  category: "Industrie",
  professional_domain: "Industrie",
  name: "Plateforme de Vocation GIRONDE",
  email: "mrsgironde.33062@pole-emploi",
  telephone: "0524077021",
  website: "",
  logo: "",
  photo: "",
)


Job.create!(
  title: "Tailleur de vigne H/F",
  address: "34000 - CAZOULS LES BEZIERS",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,12,15),
  end_date: Date.new(2020,2,15),
  description: "Taille en cordon de royat à l'aide d'un ciseau électrique",
  content: "Vous serez chargé(e) de la taille en cordon de royat à l'aide d'un ciseau électrique fourni par l'employeur. Expérience obligatoire d'au moins une saison de taille.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "BEZIERS COURONDELLE",
  email: "",
  telephone: "0524077021",
  website: "",
  logo: "",
  photo: "",
)

Job.create!(
  title: "Ouvrier en ferme d'élevage bovin H/F",
  address: "1 ham Morteau, 02000 MONS EN LAONNOIS",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 2,
  start_date: Date.new(2020,8,1),
  end_date: Date.new(2020,12,31),
  description: "Vous intervenez sur une exploitation ayant 200 vaches allaitantes.",
  content: "Vous prodiguerez le soin aux animaux, le nourrissage, le vêlage serait un plus.
Exploitation avec des bâtiments neufs, une pailleuse et un manitou.
Vous serez amené à conduire le matériel de l'exploitation.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "SCEA FERME DE MORTEAU",
  email: "",
  telephone: "0323241376",
  website: "",
  logo: "https://occitanie.chambre-agriculture.fr/fileadmin/user_upload/Occitanie/076_Inst-Occitanie/CRAO/Blondes_d_Aquitaine-Chambre_d_agriculture_de_l_Orne.JPG",
  photo: "https://www.la-viande.fr/sites/default/files/styles/facebook/public/article/images/alimentation-bovins-la-viande-hd.jpg?itok=-FdnynO3",
)

Job.create!(
  title: "Agent fabrication de production alimentaire (H/F)",
  address: "67150 - ERSTEIN",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1809,
  places: 1,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,11,30),
  description: "Réception dans l'usine, surveillance des installations et nettoyage.",
  content: "Durant la période de collecte des betteraves, vous participez à la réception de celles-ci dans l'usine, à la surveillance des installations et à leur nettoyage.
Les postes sont divers mais la plupart d'entre eux comportent de la manutention et du port de charges ainsi que du travail physique.
Les postes ont un rythme de 4*8, incluant le travail du samedi, dimanche et jours fériés.
Il y a plusieurs postes à pourvoir pour un démarrage du contrat courant du mois de septembre. 42H - Travail samedi et dimanche",
  category: "Industrie",
  professional_domain: "Industrie",
  name: "CRISTAL UNION",
  email: "",
  telephone: "0388596161",
  website: "https://www.cristal-union.fr/sites-de-production/site-derstein/",
  logo: "https://www.cristal-union.fr/app/themes/cristal-union/static/images/logo.jpg",
  photo: "https://cristal-union-cristal-union-fr.osu.eu-west-2.outscale.com/uploads/2016/06/dsc00319-1024x683.jpg",
)

Job.create!(
  title: "Ouvrier viticole tractoriste (H/F)",
  address: "Mas Amiel, 66460 Maury",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1570,
  places: 5,
  start_date: Date.new(2020,1,15),
  end_date: Date.new(2020,4,15),
  description: "Entretien des vignes et travaux mécanisés.",
  content: "Au sein du domaine viticole vos activités sont principalement liées à l'entretien de la vigne et à la réalisation de tous les travaux mécanisés.
Au cours de l'hiver, vous taillez la vigne (Gobelet et Cordon de Royat), vous réalisez tous les travaux mécanisés et autres.Vous êtes chargé des travaux d'entretien du sol.Vous effectuez les travaux de désherbage ainsi que l'écimage et le rognage pour favoriser un bon équilibre végétatif.
Vous êtes responsable de l'application des produits phytosanitaires, ce qui nécessite une bonne connaissance des produits et le respect des normes d'utilisation, dans un objectif d'efficacité, pour votre sécurité et celle de l'environnement.
Des connaissances en soudure et en mécanique seront appréciées. Vous savez manager une équipe. Poste avec possibilité de pérennisation en fonction de l'évolution de l'activité du domaine. Certiphyto nécessaire.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Mas Amiel",
  email: "caveau@masamiel.fr",
  telephone: "0468290102",
  website: "http://masamiel.fr/fr/",
  logo: "http://masamiel.fr/wp-content/themes/masamiel/img/logo_alt.jpg",
  photo: "http://www.aocmaury.com/images/fond2000.jpg",
)

Job.create!(
  title: "Aide viticole (H/F)",
  address: "11 RTE DE LA PIERRE PERCEE - 17520 SAINTE-LHEURINE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1570,
  places: 1,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,10,5),
  description: "Exploitation viticole recherche une personne pour tailler les vignes à la tâche.",
  content: "Exploitation viticole recherche une personne pour tailler les vignes à la tâche.
Vous avez déjà effectué une saison  en taille ou vous sortez de formation viticole et connaissez la technique.
Vous travaillerez sur des parcelles situées à Ste Lheurine et Jarnac Champagne
Poste à pourvoir dès que possible.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "DAVID",
  email: "",
  telephone: "0685267514",
  website: "",
  logo: "",
  photo: "",
)

Job.create!(
  title: "Aide viticole (H/F)",
  address: "11 RTE DE LA PIERRE PERCEE - 17520 SAINTE-LHEURINE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1570,
  places: 1,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,12,30),
  description: "Exploitation viticole recherche une personne pour tailler les vignes à la tâche.",
  content: "Exploitation viticole recherche une personne pour tailler les vignes à la tâche.
Vous avez déjà effectué une saison  en taille ou vous sortez de formation viticole et connaissez la technique.
Vous travaillerez sur des parcelles situées à Ste Lheurine et Jarnac Champagne
Poste à pourvoir dès que possible.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "DAVID",
  email: "",
  telephone: "0685267514",
  website: "",
  logo: "",
  photo: "",
)

Job.create!(
  title: "Tailleur de vigne (H/F)",
  address: "33560 - STE EULALIE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,2,26),
  description: "Exploitation viticole recherche pour la campagne 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 6 personnes pour la taille des vignes.
Rémunération à l'heure, cat C  Convention Collective agricole de la Gironde. Savoirs et savoir-faire : Techniques de soins aux arbres ou ceps, Techniques de taille de fructification. Savoir-être professionnels
Travail en équipe
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Ouvrier qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.lagriculture-recrute.org/Upload/000005.JPG",
)
Job.create!(
  title: "Tourneur de bouteille (H/F)",
  address: "51200 - Epernay",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,3,5),
  description: "URGENT -- Vinification 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 3 tourneurs de bouteilles.
  Dans els règles de l'art traditionnel, vous travaillerez en équipe pour assurer la qualité de nos plus grands crus.
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Ouvrier qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.berger-elaborateur.fr/images/photos/tourneur.jpg",
)
Job.create!(
  title: "Tourneur de bouteille (H/F)",
  address: "33560 - STE EULALIE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,1,5),
  description: "URGENT -- Vinification 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 3 tourneurs de bouteilles.
  Dans els règles de l'art traditionnel, vous travaillerez en équipe pour assurer la qualité de nos plus grands crus.
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Ouvrier qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.berger-elaborateur.fr/images/photos/tourneur.jpg",
)
Job.create!(
  title: "Préparateur équipement Taille (H/F)",
  address: "51200 - Epernay",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,9),
  description: "Exploitation viticole recherche pour la campagne 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 6 personnes pour la taille des vignes.
Rémunération à l'heure, cat C  Convention Collective agricole de la Gironde. Savoirs et savoir-faire : Techniques de soins aux arbres ou ceps, Techniques de taille de fructification. Savoir-être professionnels
Travail en équipe
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Ouvrier qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.lagriculture-recrute.org/Upload/000005.JPG",
)
Job.create!(
  title: "Mécanicien Tracteur (H/F)",
  address: "33560 - STE EULALIE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,9),
  description: "Exploitation viticole recherche pour la campagne 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 1 personne pour la préparation/répartion mécanique.
Rémunération à l'heure, cat C  Convention Collective agricole de la Gironde. Savoirs et savoir-faire : Savoir-être professionnels
Travail en équipe
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Mécanicien qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.lagriculture-recrute.org/Upload/000005.JPG",
)
Job.create!(
  title: "Mécanicien Tracteur (H/F)",
  address: "33560 - STE EULALIE",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1428,
  places: 6,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,30),
  description: "Exploitation viticole recherche pour la campagne 2019",
  content: "Exploitation viticole recherche pour la campagne 2019, 1 personne pour la préparation/répartion mécanique.
Rémunération à l'heure, cat C  Convention Collective agricole de la Gironde. Savoirs et savoir-faire : Savoir-être professionnels
Travail en équipe
Rigueur. INFORMATIONS COMPLÉMENTAIRES
Qualification : Mécanicien qualifié (P1,P2)
Secteur d'activité : Activités des organisations professionnelles",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Champagne JEAN-LOUIS",
  email: "",
  telephone: "",
  website: "http://gironde.anefa.org",
  logo: "https://entreprise.pole-emploi.fr/static/img/minisite/fIinrHXoe4HBzwIR46Mx2wjm6T20YeIQ.png",
  photo: "https://www.lagriculture-recrute.org/Upload/000005.JPG",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,1,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,1,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Service",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,11,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Service",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,11,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,11,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,1,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,1,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Saisonnier en pépinière (h/f)",
  address: "49700 - Louresse-Rochemenier",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2019,10,28),
  end_date: Date.new(2020,11,28),
  description: "",
  content: "Vous serez chargé(e) d'assurer :
- Ecussonnage, attache, pose et dépose de tuteur, ébourgeonnage
- Entretiens des cultures
Vous devrez exercer votre fonction dans le respect des normes de qualité et des règles de sécurité.
Profil recherché :
- Débutant accepté
- Des connaissances en milieu agricole, idéalement liées au travail en pépinières et en vergers seraient appréciées
- Autonomie, implication, sérieux, travail en équipe et rigueur sont des atouts indispensables pour réussir
- Etre capable de comprendre et retranscrire les consignes écrites et orales",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Terrena",
  email: "groupeterrena-171175@cvmail.com",
  telephone: "0240989000",
  website: "https://www.terrena.fr/",
  logo: "https://www.terrena.fr/wp-content/uploads/logo_terrena_CMJN.png",
  photo: "https://cardinale-sud-solutions.com/wp-content/uploads/2018/10/Terrena-social-cardinale-sud-768x511.png",
)
Job.create!(
  title: "Bûcheron / Bûcheronne",
  address: "08300  RETHEL",
  land_type: "Campagne",
  meal: true,
  accommodation: false,
  salary: 1400,
  places: 1,
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,10,1),
  description: "Venez vous défouler contre la nature avec nous",
  content: "Vous réalisez l'abattage des arbres, la coupe du bois en 2 mètres et la mise en stère.
Vous intervenez sur plusieurs parcelles dans les Ardennes, Marne et la Meuse, au départ de Rethel.
Vous êtes véhiculé par l'employeur pour vous rendre sur les chantiers.
Équipements de sécurité non fournis : casque, chaussures anti-coupures, pantalon anti-coupures.
Déterminer l'abattage ou l'élagage selon la trajectoire de chute des arbres en prenant en compte l'environnement et les conditions climatiques",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "SEBASTIEN CHAMPEAUX",
  email: "",
  telephone: "0626370215",
  website: "",
  logo: "",
  photo: "",
)


Job.create!(
  title: "Animateur vacances de Noël (H/F)",
  address: "73210 - Plagne-Montalbert",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1470,
  places: 1,
  start_date: Date.new(2019,12,19),
  end_date: Date.new(2020,1,3),
  description: "Animateur enfants 6-8 ans (H/F)
Vacances de Noël / Poste nourri logé",
  content: "BAFA ou équivalent
Permis B
Village de vacances 3 étoiles, appartenant au Conseil départemental du Val de Marne (300 lits environ), situé au niveau de la station de Montalbert (La Plagne). Logement assuré pour les employés (seul ou à 2 selon disponibilité) en studio meublé, équipé cuisine et salle de bain (charges locatives). 2 jours de repos hebdomadaires
Vous accompagnez des enfants âgés de 6 à 8 ans (club Cabris).
Vous serez garant de la sécurité physique et affective des enfants.
Vous leur proposerez des activités adaptées pour permettre leur épanouissement.
Vous assurerez les départs et retours ski
Vous devrez vous adapter au milieu montagnard et leur faire découvrir cet environnement.
Vous devrez être à l'écoute, savoir travailler en équipe et vous rendre disponible pour les parents.
Savoirs et savoir-faire
Informer les parents sur l'organisation de la structure et présenter le programme des activités aux enfants
Organiser ou adapter la séance d'animation selon le déroulement de la journée
Préparer l'espace d'animation et guider les participants tout au long de la séance
Repérer les difficultés ou problèmes d'un enfant, intervenir ou informer le directeur, les parents
Surveiller le déroulement de l'activité et veiller au respect des consignes de jeux, des règles de vie sociale",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Village vacances Jean Franco",
  email: "",
  telephone: "0479557200",
  website: "http://www.emploi-laplagne.com/",
  logo: "http://emploi-laplagne.com/wp-content/uploads/2017/10/cropped-logo_la_plagne.png",
  photo: "https://www.la-plagne.com/sites/default/files/styles/illustration/public/medias/images/DESTI_Montalbert_terrasse-village-hiver_P-Royer.jpg",
)
Job.create!(
  title: "Animateur vacances de Noël (H/F)",
  address: "73210 - Plagne-Montalbert",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1470,
  places: 1,
  start_date: Date.new(2019,12,19),
  end_date: Date.new(2020,3,3),
  description: "Animateur enfants 6-8 ans (H/F)
Saison complète / Poste nourri logé",
  content: "BAFA ou équivalent
Permis B
Village de vacances 3 étoiles, appartenant au Conseil départemental du Val de Marne (300 lits environ), situé au niveau de la station de Montalbert (La Plagne). Logement assuré pour les employés (seul ou à 2 selon disponibilité) en studio meublé, équipé cuisine et salle de bain (charges locatives). 2 jours de repos hebdomadaires
Vous accompagnez des enfants âgés de 6 à 8 ans (club Cabris).
Vous serez garant de la sécurité physique et affective des enfants.
Vous leur proposerez des activités adaptées pour permettre leur épanouissement.
Vous assurerez les départs et retours ski
Vous devrez vous adapter au milieu montagnard et leur faire découvrir cet environnement.
Vous devrez être à l'écoute, savoir travailler en équipe et vous rendre disponible pour les parents.
Savoirs et savoir-faire
Informer les parents sur l'organisation de la structure et présenter le programme des activités aux enfants
Organiser ou adapter la séance d'animation selon le déroulement de la journée
Préparer l'espace d'animation et guider les participants tout au long de la séance
Repérer les difficultés ou problèmes d'un enfant, intervenir ou informer le directeur, les parents
Surveiller le déroulement de l'activité et veiller au respect des consignes de jeux, des règles de vie sociale",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Village vacances Jean Franco",
  email: "",
  telephone: "0479557200",
  website: "http://www.emploi-laplagne.com/",
  logo: "http://emploi-laplagne.com/wp-content/uploads/2017/10/cropped-logo_la_plagne.png",
  photo: "https://www.la-plagne.com/sites/default/files/styles/illustration/public/medias/images/DESTI_Montalbert_terrasse-village-hiver_P-Royer.jpg",
)
Job.create!(
  title: "Animateur Saison hiver (H/F)",
  address: "73210 - Plagne-Montalbert",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1470,
  places: 1,
  start_date: Date.new(2019,12,19),
  end_date: Date.new(2020,3,3),
  description: "Animateur enfants 6-8 ans (H/F)
Saison complète / Poste nourri logé",
  content: "BAFA ou équivalent
Permis B
Village de vacances 3 étoiles, appartenant au Conseil départemental du Val de Marne (300 lits environ), situé au niveau de la station de Montalbert (La Plagne). Logement assuré pour les employés (seul ou à 2 selon disponibilité) en studio meublé, équipé cuisine et salle de bain (charges locatives). 2 jours de repos hebdomadaires
Vous accompagnez des enfants âgés de 6 à 8 ans (club Cabris).
Vous serez garant de la sécurité physique et affective des enfants.
Vous leur proposerez des activités adaptées pour permettre leur épanouissement.
Vous assurerez les départs et retours ski
Vous devrez vous adapter au milieu montagnard et leur faire découvrir cet environnement.
Vous devrez être à l'écoute, savoir travailler en équipe et vous rendre disponible pour les parents.
Savoirs et savoir-faire
Informer les parents sur l'organisation de la structure et présenter le programme des activités aux enfants
Organiser ou adapter la séance d'animation selon le déroulement de la journée
Préparer l'espace d'animation et guider les participants tout au long de la séance
Repérer les difficultés ou problèmes d'un enfant, intervenir ou informer le directeur, les parents
Surveiller le déroulement de l'activité et veiller au respect des consignes de jeux, des règles de vie sociale",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Village vacances Jean Franco",
  email: "",
  telephone: "0479557200",
  website: "http://www.emploi-laplagne.com/",
  logo: "http://emploi-laplagne.com/wp-content/uploads/2017/10/cropped-logo_la_plagne.png",
  photo: "https://www.la-plagne.com/sites/default/files/styles/illustration/public/medias/images/DESTI_Montalbert_terrasse-village-hiver_P-Royer.jpg",
)
Job.create!(
  title: "Animateur Saison hiver (H/F)",
  address: "73210 - Plagne-Montalbert",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1470,
  places: 1,
  start_date: Date.new(2019,12,19),
  end_date: Date.new(2020,2,3),
  description: "Animateur enfants 6-8 ans (H/F)
Saison complète / Poste nourri logé",
  content: "BAFA ou équivalent
Permis B
Village de vacances 3 étoiles, appartenant au Conseil départemental du Val de Marne (300 lits environ), situé au niveau de la station de Montalbert (La Plagne). Logement assuré pour les employés (seul ou à 2 selon disponibilité) en studio meublé, équipé cuisine et salle de bain (charges locatives). 2 jours de repos hebdomadaires
Vous accompagnez des enfants âgés de 6 à 8 ans (club Cabris).
Vous serez garant de la sécurité physique et affective des enfants.
Vous leur proposerez des activités adaptées pour permettre leur épanouissement.
Vous assurerez les départs et retours ski
Vous devrez vous adapter au milieu montagnard et leur faire découvrir cet environnement.
Vous devrez être à l'écoute, savoir travailler en équipe et vous rendre disponible pour les parents.
Savoirs et savoir-faire
Informer les parents sur l'organisation de la structure et présenter le programme des activités aux enfants
Organiser ou adapter la séance d'animation selon le déroulement de la journée
Préparer l'espace d'animation et guider les participants tout au long de la séance
Repérer les difficultés ou problèmes d'un enfant, intervenir ou informer le directeur, les parents
Surveiller le déroulement de l'activité et veiller au respect des consignes de jeux, des règles de vie sociale",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Village vacances Jean Franco",
  email: "",
  telephone: "0479557200",
  website: "http://www.emploi-laplagne.com/",
  logo: "http://emploi-laplagne.com/wp-content/uploads/2017/10/cropped-logo_la_plagne.png",
  photo: "https://www.la-plagne.com/sites/default/files/styles/illustration/public/medias/images/DESTI_Montalbert_terrasse-village-hiver_P-Royer.jpg",
)
Job.create!(
  title: "Animateur Saison hiver (H/F)",
  address: "73210 - Plagne-Montalbert",
  land_type: "Montagne",
  meal: true,
  accommodation: true,
  salary: 1470,
  places: 1,
  start_date: Date.new(2019,12,19),
  end_date: Date.new(2020,2,3),
  description: "Animateur enfants 6-8 ans (H/F)
Saison complète / Poste nourri logé",
  content: "BAFA ou équivalent
Permis B
Village de vacances 3 étoiles, appartenant au Conseil départemental du Val de Marne (300 lits environ), situé au niveau de la station de Montalbert (La Plagne). Logement assuré pour les employés (seul ou à 2 selon disponibilité) en studio meublé, équipé cuisine et salle de bain (charges locatives). 2 jours de repos hebdomadaires
Vous accompagnez des enfants âgés de 6 à 8 ans (club Cabris).
Vous serez garant de la sécurité physique et affective des enfants.
Vous leur proposerez des activités adaptées pour permettre leur épanouissement.
Vous assurerez les départs et retours ski
Vous devrez vous adapter au milieu montagnard et leur faire découvrir cet environnement.
Vous devrez être à l'écoute, savoir travailler en équipe et vous rendre disponible pour les parents.
Savoirs et savoir-faire
Informer les parents sur l'organisation de la structure et présenter le programme des activités aux enfants
Organiser ou adapter la séance d'animation selon le déroulement de la journée
Préparer l'espace d'animation et guider les participants tout au long de la séance
Repérer les difficultés ou problèmes d'un enfant, intervenir ou informer le directeur, les parents
Surveiller le déroulement de l'activité et veiller au respect des consignes de jeux, des règles de vie sociale",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Village vacances Jean Franco",
  email: "",
  telephone: "0479557200",
  website: "http://www.emploi-laplagne.com/",
  logo: "http://emploi-laplagne.com/wp-content/uploads/2017/10/cropped-logo_la_plagne.png",
  photo: "https://www.la-plagne.com/sites/default/files/styles/illustration/public/medias/images/DESTI_Montalbert_terrasse-village-hiver_P-Royer.jpg",
)
Job.create!(
  title: "Barman / Barmaid Serveur H/F",
  address: "23 Rue François Simon, 13003 Marseille",
  land_type: "Mer",
  meal: true,
  accommodation: true,
  salary: 1527,
  places: 1,
  start_date: Date.new(2019,12,2),
  end_date: Date.new(2020,3,30),
  description: "Recherche passionnés par leur métier et prêts à rendre service.",
  content: "Mission
Assurer et élaborer le service des boissons chaudes, soft drink et cocktails
Accueillir et personnaliser la relation client
Contribuer à l’animation et à l’ambiance du service
Assurer la mise en place et la fermeture du bar
Procéder le nettoyage et la remise en ordre du bar et de la salle
Assurer le respect  et l’application des normes d’hygiène et de qualité conformément à la norme Iso 9001 et à l’HACCP


Profil
CAP/BEP serveur limonadier, ou BTH hôtellerie restauration apprécié
Expérience significative dans un poste similaire
Connaissance et savoir faire avéré dans les alcools et cocktails
Maitrise de l’anglais et/ou du néerlandais appréciée
Les Villages Clubs du Soleil étudient, à compétences égales, toutes candidatures dont celles de personnes en situation de handicap
Si en plus vos points forts sont:

Organisation
Autonomie
Capacité à gérer en simultanée des opérations de durée et de nature différentes
Esprit d’équipe
Imagination et créativité",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Villages Club Soleil Marseille",
  email: "scalvet@lesvillagesclubsdusoleil.com",
  telephone: "04 91 95 08 88",
  website: "https://www.villagesclubsdusoleil.com/",
  logo: "https://www.villagesclubsdusoleil.com/fstrz/r/s/www.villagesclubsdusoleil.com/skin/frontend/rwd/public/images/logo-vcs.svg",
  photo: "https://www.lechotouristique.com/mediatheque/4/2/7/000058724.jpg",
)

Job.create!(
  title: "Barman / Barmaid Serveur H/F",
  address: "23 Rue François Simon, 13003 Marseille",
  land_type: "Mer",
  meal: true,
  accommodation: true,
  salary: 1527,
  places: 1,
  start_date: Date.new(2019,12,2),
  end_date: Date.new(2020,1,30),
  description: "Remplacement Noël",
  content: "Mission
Assurer et élaborer le service des boissons chaudes, soft drink et cocktails
Accueillir et personnaliser la relation client
Contribuer à l’animation et à l’ambiance du service
Assurer la mise en place et la fermeture du bar
Procéder le nettoyage et la remise en ordre du bar et de la salle
Assurer le respect  et l’application des normes d’hygiène et de qualité conformément à la norme Iso 9001 et à l’HACCP


Profil
CAP/BEP serveur limonadier, ou BTH hôtellerie restauration apprécié
Expérience significative dans un poste similaire
Connaissance et savoir faire avéré dans les alcools et cocktails
Maitrise de l’anglais et/ou du néerlandais appréciée
Les Villages Clubs du Soleil étudient, à compétences égales, toutes candidatures dont celles de personnes en situation de handicap
Si en plus vos points forts sont:

Organisation
Autonomie
Capacité à gérer en simultanée des opérations de durée et de nature différentes
Esprit d’équipe
Imagination et créativité",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Villages Club Soleil Marseille",
  email: "scalvet@lesvillagesclubsdusoleil.com",
  telephone: "04 91 95 08 88",
  website: "https://www.villagesclubsdusoleil.com/",
  logo: "https://www.villagesclubsdusoleil.com/fstrz/r/s/www.villagesclubsdusoleil.com/skin/frontend/rwd/public/images/logo-vcs.svg",
  photo: "https://www.lechotouristique.com/mediatheque/4/2/7/000058724.jpg",
)

Job.create!(
  title: "Chef de rang (H/F)",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,3,30),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chef de rang (H/F)",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,3,30),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chef de rang (H/F)",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,1,30),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chorégraphe cocktail",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,1,30),
  description: "Tu te sens l'âme d'un Tom Cruise?",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chorégraphe cocktail",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,1,30),
  description: "Tu te sens l'âme d'un Tom Cruise?",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chorégraphe cocktail",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2020,5,1),
  end_date: Date.new(2020,9,30),
  description: "Tu te sens l'âme d'un Tom Cruise?",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chorégraphe cocktail",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2020,5,1),
  end_date: Date.new(2020,6,30),
  description: "Tu te sens l'âme d'un Tom Cruise?",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chorégraphe cocktail",
  address: "5 Place Bellevue, 64200 Biarritz",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2020,5,1),
  end_date: Date.new(2020,6,30),
  description: "Tu te sens l'âme d'un Tom Cruise?",
  content: "LE CAFE DE PARIS recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Café de paris",
  email: "reception@hotelcafedeparis.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chef de rang (H/F)",
  address: "74400 - Chamonix",
  land_type: "Montagne",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 2,
  start_date: Date.new(2019,12,1),
  end_date: Date.new(2020,3,30),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "Le bar du haut des pistes recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Resto la bonne Altitude",
  email: "reception@labonnealtitude.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chef de rang (H/F)",
  address: "74400 - Chamonix",
  land_type: "Montagne",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,2,1),
  end_date: Date.new(2020,3,10),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "Le bar du haut des pistes recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Resto la bonne Altitude",
  email: "reception@labonnealtitude.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Chef de rang (H/F)",
  address: "74400 - Chamonix",
  land_type: "Montagne",
  meal: false,
  accommodation: false,
  salary: 1680,
  places: 1,
  start_date: Date.new(2019,2,1),
  end_date: Date.new(2020,5,10),
  description: "Recherche débutant ou confirmé. Faites vite!",
  content: "Le bar du haut des pistes recherche un profil serveur(se) ou chef de rang pour le restaurant de l'hôtel avec prise de poste immédiate. CDD jusqu'à fin janvier (hôtel en travaux par la suite) avec possibilité de revenir pour un poste en CDI ou CDD saisonnier selon souhait.
Contrat de 35 à 39h selon disponibilités, 2 jours de congés consécutifs.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Resto la bonne Altitude",
  email: "reception@labonnealtitude.com",
  telephone: "0559241953",
  website: "https://www.hotel-cafedeparis-biarritz.com/",
  logo: "https://www.hotel-cafedeparis-biarritz.com/assets/img/hotel-biarritz-cafe-de-paris.png",
  photo: "https://www.hotel-cafedeparis-biarritz.com/cache/f/3/9/c/4/f39c4b3d3646bb823a682539935aaebb9cd36fd1.jpeg",
)
Job.create!(
  title: "Secretaire comptable (H/F)",
  address: "30510 - GENERAC",
  land_type: "Campagne",
  meal: false,
  accommodation: false,
  salary: 1300,
  places: 1,
  start_date: Date.new(2020,2,1),
  end_date: Date.new(2020,4,30),
  description: "GESTIONNAIRE PAIE / ASSISTANTE COMPTABLE",
  content: "Au sein d'un service administratif, et rattaché(e) à la direction, vous avez pour missions principales :
- La gestion et l’établissement de paies (250-300 paies). La gestion des charges sociales et DSN.
- Une partie de la gestion administrative du personnel (affiliations et suivi des entrées/sorties, soldes de tout compte, visites médicales, gestion des maladies et des absences...) et relations avec les différents organismes sociaux (mutuelle, sécurité sociale...).
- Assistante comptable vous serez amené(e) également à effectuer des tâches comptables simples (saisie des écritures, pointages…)
Divers travaux de secrétariat, traitement du courrier.
Gestion des stocks et de ressources matérielles, archivage.

Vous justifiez impérativement de 2 années d'expérience dans un poste similaire.
Vous êtes une autonome et dynamique. Vous appréciez le travail en équipe et avez de bonnes capacités relationnelles et d'adaptation.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Domaine des coteaux",
  email: "domaine.coteaux@domaine-coteaux.fr",
  telephone: "0466013709",
  website: "http://www.domaine-coteaux.com/",
  logo: "http://www.domaine-coteaux.com/images/logo.jpg",
  photo: "",
)
Job.create!(
  title: "Secretaire comptable (H/F)",
  address: "30510 - GENERAC",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1300,
  places: 1,
  start_date: Date.new(2020,2,1),
  end_date: Date.new(2020,4,30),
  description: "Remplacement maternité COMPTABLE",
  content: "Au sein d'un service administratif, et rattaché(e) à la direction, vous avez pour missions principales :
- La gestion et l’établissement de paies (250-300 paies). La gestion des charges sociales et DSN.
- Une partie de la gestion administrative du personnel (affiliations et suivi des entrées/sorties, soldes de tout compte, visites médicales, gestion des maladies et des absences...) et relations avec les différents organismes sociaux (mutuelle, sécurité sociale...).
- Assistante comptable vous serez amené(e) également à effectuer des tâches comptables simples (saisie des écritures, pointages…)
Divers travaux de secrétariat, traitement du courrier.
Gestion des stocks et de ressources matérielles, archivage.

Vous justifiez impérativement de 2 années d'expérience dans un poste similaire.
Vous êtes une autonome et dynamique. Vous appréciez le travail en équipe et avez de bonnes capacités relationnelles et d'adaptation.",
  category: "Agricole",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Domaine des coteaux",
  email: "domaine.coteaux@domaine-coteaux.fr",
  telephone: "0466013709",
  website: "http://www.domaine-coteaux.com/",
  logo: "http://www.domaine-coteaux.com/images/logo.jpg",
  photo: "",
)
Job.create!(
  title: "Secretaire comptable (H/F)",
  address: "30510 - GENERAC",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1300,
  places: 1,
  start_date: Date.new(2020,2,1),
  end_date: Date.new(2020,4,30),
  description: "Remplacement maternité COMPTABLE",
  content: "Au sein d'un service administratif, et rattaché(e) à la direction, vous avez pour missions principales :
- La gestion et l’établissement de paies (250-300 paies). La gestion des charges sociales et DSN.
- Une partie de la gestion administrative du personnel (affiliations et suivi des entrées/sorties, soldes de tout compte, visites médicales, gestion des maladies et des absences...) et relations avec les différents organismes sociaux (mutuelle, sécurité sociale...).
- Assistante comptable vous serez amené(e) également à effectuer des tâches comptables simples (saisie des écritures, pointages…)
Divers travaux de secrétariat, traitement du courrier.
Gestion des stocks et de ressources matérielles, archivage.

Vous justifiez impérativement de 2 années d'expérience dans un poste similaire.
Vous êtes une autonome et dynamique. Vous appréciez le travail en équipe et avez de bonnes capacités relationnelles et d'adaptation.",
  category: "Service",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Domaine des coteaux",
  email: "domaine.coteaux@domaine-coteaux.fr",
  telephone: "0466013709",
  website: "http://www.domaine-coteaux.com/",
  logo: "http://www.domaine-coteaux.com/images/logo.jpg",
  photo: "",
)
Job.create!(
  title: "Secretaire comptable (H/F)",
  address: "30510 - GENERAC",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1300,
  places: 1,
  start_date: Date.new(2020,2,1),
  end_date: Date.new(2020,2,28),
  description: "Remplacement maternité COMPTABLE",
  content: "Au sein d'un service administratif, et rattaché(e) à la direction, vous avez pour missions principales :
- La gestion et l’établissement de paies (250-300 paies). La gestion des charges sociales et DSN.
- Une partie de la gestion administrative du personnel (affiliations et suivi des entrées/sorties, soldes de tout compte, visites médicales, gestion des maladies et des absences...) et relations avec les différents organismes sociaux (mutuelle, sécurité sociale...).
- Assistante comptable vous serez amené(e) également à effectuer des tâches comptables simples (saisie des écritures, pointages…)
Divers travaux de secrétariat, traitement du courrier.
Gestion des stocks et de ressources matérielles, archivage.

Vous justifiez impérativement de 2 années d'expérience dans un poste similaire.
Vous êtes une autonome et dynamique. Vous appréciez le travail en équipe et avez de bonnes capacités relationnelles et d'adaptation.",
  category: "Service",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Domaine des coteaux",
  email: "domaine.coteaux@domaine-coteaux.fr",
  telephone: "0466013709",
  website: "http://www.domaine-coteaux.com/",
  logo: "http://www.domaine-coteaux.com/images/logo.jpg",
  photo: "",
)
Job.create!(
  title: "Remplacement Fête de la soupe comptable (H/F)",
  address: "30510 - GENERAC",
  land_type: "Ville",
  meal: false,
  accommodation: false,
  salary: 1300,
  places: 1,
  start_date: Date.new(2020,2,1),
  end_date: Date.new(2020,2,10),
  description: "Remplacement Fête de la soupe COMPTABLE",
  content: "Au sein d'un service administratif, et rattaché(e) à la direction, vous avez pour missions principales :
- La gestion et l’établissement de paies (250-300 paies). La gestion des charges sociales et DSN.
- Une partie de la gestion administrative du personnel (affiliations et suivi des entrées/sorties, soldes de tout compte, visites médicales, gestion des maladies et des absences...) et relations avec les différents organismes sociaux (mutuelle, sécurité sociale...).
- Assistante comptable vous serez amené(e) également à effectuer des tâches comptables simples (saisie des écritures, pointages…)
Divers travaux de secrétariat, traitement du courrier.
Gestion des stocks et de ressources matérielles, archivage.

Vous justifiez impérativement de 2 années d'expérience dans un poste similaire.
Vous êtes une autonome et dynamique. Vous appréciez le travail en équipe et avez de bonnes capacités relationnelles et d'adaptation.",
  category: "Service",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Domaine des coteaux",
  email: "domaine.coteaux@domaine-coteaux.fr",
  telephone: "0466013709",
  website: "http://www.domaine-coteaux.com/",
  logo: "http://www.domaine-coteaux.com/images/logo.jpg",
  photo: "",
)
Job.create!(
  title: "Animateur / Animatrice d'enfants",
  address: "Promenade des Sources, 64600 Anglet",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1850,
  places: 2,
  start_date: Date.new(2019,12,20),
  end_date: Date.new(2020,5,1),
  description: "Le bonheur des enfants : votre unique préoccupation !",
  content: "Dans le respect de la legislation relative à leur accueil, vous animez les activités destinées aux enfants de 3 à 10 ans.
Garant de leur sécurité et de leur bien-être, vous mettez en oeuvre les activités et les spectacles en respectant le rythme de vie des enfants et en vous conformant au cahier des prestations et au référentiel de service.
Votre sens des responsabilités et du service client , votre caractère affirmé et votre patience sont indispensables à la réussite de votre mission, la maitrise de l'anglais également.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Hotel Belambra",
  email: "",
  telephone: "0890641314",
  website: "https://www.belambra.fr/club-anglet-la-chambre-d-amour/hiver",
  logo: "https://www.belambra.fr/files/live/sites/Belambra/files/contributed/2018/belambra-vacances-france.jpg",
  photo: "https://ecoledesurf.com/anglet/global/img/heb.png",
)
Job.create!(
  title: "Animateur / Animatrice d'enfants",
  address: "Promenade des Sources, 64600 Anglet",
  land_type: "Mer",
  meal: false,
  accommodation: false,
  salary: 1850,
  places: 2,
  start_date: Date.new(2020,5,1),
  end_date: Date.new(2020,6,1),
  description: "Le bonheur des enfants : votre unique préoccupation !",
  content: "Dans le respect de la legislation relative à leur accueil, vous animez les activités destinées aux enfants de 3 à 10 ans.
Garant de leur sécurité et de leur bien-être, vous mettez en oeuvre les activités et les spectacles en respectant le rythme de vie des enfants et en vous conformant au cahier des prestations et au référentiel de service.
Votre sens des responsabilités et du service client , votre caractère affirmé et votre patience sont indispensables à la réussite de votre mission, la maitrise de l'anglais également.",
  category: "Service",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Hotel Belambra",
  email: "",
  telephone: "0890641314",
  website: "https://www.belambra.fr/club-anglet-la-chambre-d-amour/hiver",
  logo: "https://www.belambra.fr/files/live/sites/Belambra/files/contributed/2018/belambra-vacances-france.jpg",
  photo: "https://ecoledesurf.com/anglet/global/img/heb.png",
)

Job.create!(
  title: "Directeur séjours adaptés H/F",
  address: "86370 - VIVONNE",
  land_type: "Ville",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2020,2,1),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
Job.create!(
  title: "Directeur séjours adaptés H/F",
  address: "86370 - VIVONNE",
  land_type: "Ville",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2020,4,10),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
Job.create!(
  title: "Directeur séjours adaptés Nature H/F",
  address: "86370 - VIVONNE",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2020,1,10),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
Job.create!(
  title: "Directeur séjours adaptés Nature H/F",
  address: "86370 - VIVONNE",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2020,5,10),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
Job.create!(
  title: "Directeur séjours adaptés Nature H/F",
  address: "86370 - VIVONNE",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2019,12,30),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
Job.create!(
  title: "Directeur séjours adaptés H/F",
  address: "86370 - VIVONNE",
  land_type: "Ville",
  meal: true,
  accommodation: true,
  salary: 1624,
  places: 1,
  start_date: Date.new(2019,12,21),
  end_date: Date.new(2019,12,31),
  description: "Association de Vacances adaptées",
  content: "Vos missions : Faire passer de bonnes vacances à des adultes en situation de handicap mental et/ou psychique.
Accompagner les vacanciers dans leur quotidien (aide à la toilette), préparer les repas, adapter et animer les activités du séjour, solliciter les vacanciers à participer à la vie du groupe prendre le temps de vivre…
Organiser et participer à la vie du groupe (petits groupes de 7 à 11 pers encadrés par 2 ou 3 accompagnateurs).
Présence en continue sur le séjour
Hébergement et restauration pris en charge par l'association pendant le séjour
Le salaire : 52€/jr pour les responsables et 46€/jr pour les animateurs.
Être âgé de minimum 20 ans et avoir 1 an de permis de conduire.
Votre contrat prendra effet à Poitiers.
Profil recherché :
Sensible au milieu du handicap
Permis de conduire obligatoire",
  category: "Social",
  professional_domain: "Hôtellerie - Restauration / Tourisme / Animation",
  name: "Roulotte et Nature",
  email: "animateur.asso@gmail.com",
  telephone: "05 49 50 64 60",
  website: "http://www.vacancesadaptees.org/",
  logo: "http://www.vacancesadaptees.org/build/img/logo.jpg?1515666919126",
  photo: "",
)
# Job.create!(
#   title: "",
#   address: "",
#   land_type: "",
#   meal: ,
#   accommodation: ,
#   salary: ,
#   places: ,
#   start_date: Date.new(),
#   end_date: Date.new(),
#   description: "",
#   content: "",
#   category: "",
#   professional_domain: "",
#   name: "",
#   email: "",
#   telephone: "",
#   website: "",
#   logo: "",
#   photo: "",
# )



puts "database created"
