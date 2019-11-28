# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"

Job.destroy_all
User.destroy_all
Mission.destroy_all
Favorite.destroy_all
Preference.destroy_all


puts "Building database"

User.create!(
  email: "patujulie@gmail.com",
  password: "julieto",
  first_name: "julie",
  last_name: "Paturel",
  username: "patujulie",
  nationality: "francaise",
  address: "310 ter rue de tourcoing - 59420 Mouvaux",
  biograophy: "Jeune femme dynamique a la recherche d'un job d'été en extérieur. Je suis souriante, j'aime beaucoup rire et raconter des comptes avec de nouveaux amis ! ",
  photo:"https://lh3.googleusercontent.com/a-/AAuE7mC0uPzlRZ3t_rUybWI-TCUY56t8FOP8WTBFOpjgaA=s96-cc-rg",
  age: 23
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
  category: "Nature",
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
  address: "15 Rue DU CHENE LA JEANSONNE - 51270 COURJEONNET",
  land_type: "Campagne",
  meal: true,
  accommodation: true,
  salary: 1200,
  places: 10,
  start_date: Date.new(2020,10,1),
  end_date: Date.new(2020,10,30),
  description: "Vendangeur(euse) pour une semaine.",
  content: "Domaine familiale recherche vendangeurs hommes et femmes a partir du vendredi 13 septembre pour une durée d'environ 5 jours, nourrit le midi. les repas sont offert. les animaux ne sont pas accepté.",
  category: "Nature",
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
  category: "Nature",
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
  start_date: nil,
  end_date: nil,
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
  category: "Nature",
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
  category: "Nature",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "SCEA FERME DE MORTEAU",
  email: "",
  telephone: "0323241376",
  website: "",
  logo: "",
  photo: "",
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
  category: "Nature",
  professional_domain: "Espaces verts et naturels / Agriculture / Pêche / Soins aux animaux",
  name: "Mas Amiel",
  email: "caveau@masamiel.fr",
  telephone: "0468290102",
  website: "http://masamiel.fr/fr/",
  logo: "http://masamiel.fr/wp-content/themes/masamiel/img/logo_alt.jpg",
  photo: "http://www.aocmaury.com/images/fond2000.jpg",
)
puts "database created"
