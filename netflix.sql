-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2019 at 12:58 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `name`) VALUES
(1, 'Acción'),
(2, 'Comedia'),
(3, 'Terror'),
(4, 'Ciencia Ficción'),
(5, 'Drama'),
(6, 'Fantasía'),
(7, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id_movie` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id_movie`, `id_genre`, `title`, `summary`, `year`, `duration`) VALUES
(1, 1, 'The Dark Knight', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 2008, 152),
(2, 3, 'El Conjuro', 'Los investigadores paranormales Ed (Patrick Wilson) y Lorraine Warren (Vera Farmiga) confrontan a una entidad poderosamente demoníaca cuando intentan ayudar a una familia que está siendo aterrorizada por una presencia oscura en su granja aislada.', 2013, 112),
(3, 3, 'The Nun ', ' A priest with a haunted past and a novice on the threshold of her final vows are sent by the Vatican to investigate the death of a young nun in Romania and confront a malevolent force in the form of a demonic nun. ', 2018, 96),
(4, 4, 'Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe. ', 2018, 149),
(5, 1, 'AQUAMAN', 'Arthur Curry learns that he is the heir to the underwater kingdom of Atlantis, and must step forward to lead his people and be a hero to the world. ', 2018, 143),
(6, 4, 'Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe. ', 2018, 149),
(7, 5, 'Black Mirror: Bandersnatch', 'In 1984, a young programmer begins to question reality as he works to adapt a fantasy novel into a video game.', 2018, 90),
(8, 1, 'The Mule', 'A 90-year-old horticulturist and Korean War veteran is caught transporting $3 million worth of cocaine through Illinois for a Mexican drug cartel.', 2018, 116),
(9, 1, 'Sucker Punch', 'A young girl is institutionalized by her abusive stepfather, retreating to an alternative reality as a coping strategy, envisioning a plan to help her escape. ', 2011, 110),
(10, 1, 'Spider-Man: Into the Spider-Verse', 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities. ', 2018, 107),
(11, 1, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers. ', 1999, 146),
(12, 1, ' The Lord of the Rings', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring. ', 2003, 211),
(13, 1, 'Spider-Man: Into the Spider-Verse', 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.', 2018, 117),
(14, 1, 'Spider-Man: Into the Spider-Verse', 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.', 2018, 117),
(15, 7, 'Diary of a Nymphomaniac', 'A chronicle of the life of a middle-class French girl\'s sexual adventures, her then fall into prostitution, and her ultimate redemption. ', 2008, 101),
(16, 1, 'Bumblebee', 'On the run in the year of 1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie, on the cusp of turning 18 and trying to find her place in the world, discovers Bumblebee, battle-scarred and broken. ', 2018, 117),
(17, 5, 'Fight Club', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more. ', 1999, 139),
(18, 1, 'Bumblebee', 'On the run in the year of 1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie, on the cusp of turning 18 and trying to find her place in the world, discovers Bumblebee, battle-scarred and broken. ', 2018, 117),
(19, 1, 'Transformers: The Last Knight', 'Autobots and Decepticons are at war, with humans on the sidelines. Optimus Prime is gone. The key to saving our future lies buried in the secrets of the past, in the hidden history of Transformers on Earth.', 2017, 154),
(20, 1, 'Star Wars: The Empire Strikes Back ', ' After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader. ', 1980, 1),
(21, 5, '8 Mile', ' A young rapper, struggling with every aspect of his life, wants to make it big but his friends and foes make this odyssey of rap harder than it may seem. ', 2002, 110),
(22, 1, 'Venom', 'When Eddie Brock acquires the powers of a symbiote, he will have to release his alter-ego "Venom" to save his life. ', 2018, 112),
(23, 3, 'Escape Room', 'Six strangers find themselves in circumstances beyond their control, and must use their wits to survive.', 2019, 100),
(24, 1, 'BATMAN', 'LA PELICULA', 2016, 90),
(25, 7, 'Yo soy Simon', 'Un adolescente homosexual se enamora a través de internet de un compañero de clase cuya identidad desconoce. Averiguar de quién se trata resultará una experiencia divertida, ardua y trascendental.', 2018, 110),
(26, 2, 'This is 40', ' Mientras Pete lucha por mantener su sello discográfico, él y Debbie navegan por un curso de tres semanas de sexo y romance, victorias profesionales y crisis financieras.', 2012, 134),
(27, 6, 'Spider-Man: Un nuevo universo', 'El Joven Miles Morales está haciendo malabares con su vida entre ser un estudiante de secundaria y ser Spider-Man. Sin embargo, cuando Wilson “el Kingpin” Fisk utiliza un Super Colisionador, otro Spider-Man de otro universo.', 2018, 94),
(28, 1, 'Sherlock Holmes', 'En la película, Sherlock Holmes (Robert Downey Jr.) y el doctor Watson (Jude Law) investigan, junto a la ladrona Irene Adler (Rachel McAdams), una serie de extrañas desapariciones que parecen ser la consecuencia de una conspiración. ', 2009, 128),
(29, 6, 'Spider-Man: Un nuevo universo', 'El Joven Miles Morales está haciendo malabares con su vida entre ser un estudiante de secundaria y ser Spider-Man. Sin embargo, cuando Wilson “el Kingpin” Fisk utiliza un Super Colisionador, otro Spider-Man de otro universo.', 2018, 94),
(30, 2, 'Taxi', 'To work off his tarnished driving record, a hip taxi driver must chauffeur a loser police inspector on the trail of German bank robbers. ', 1998, 86),
(31, 2, 'The Mask', 'Bank clerk Stanley Ipkiss is transformed into a manic superhero when he wears a mysterious mask. ', 1994, 101),
(32, 1, 'Gladiator', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery. ', 2000, 165),
(33, 6, 'Fantastic Beasts: The Crimes of Grindelwald ', 'The second installment of the "Fantastic Beasts" series featuring the adventures of Magizoologist Newt Scamander', 2018, 134),
(34, 1, 'Star Wars: The Empire Strikes Back ', ' After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader. ', 1980, 136),
(35, 1, ' Star Wars: Episode V ', 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader. ', 1980, 124),
(36, 1, 'Assassin\'s Creed', 'Callum Lynch explores the memories of his ancestor Aguilar de Nerha and gains the skills of a Master Assassin, before taking on the secret Templar society.', 2016, 115),
(37, 5, 'El señor de los anillos', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 2001, 178),
(38, 1, 'Gladiator', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery. ', 2000, 165),
(39, 1, 'Star Wars: The Empire Strikes Back ', ' After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader. ', 1980, 136),
(40, 2, 'Toy Story 4', 'When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy. ', 2019, 150),
(41, 6, 'The Grinch', 'A grumpy Grinch plots to ruin Christmas for the village of Whoville. ', 2018, 86),
(42, 6, 'The Grinch', 'A grumpy Grinch plots to ruin Christmas for the village of Whoville. ', 2018, 86),
(43, 4, 'Dr Strange', 'La vida del Dr. Stephen Strange (Benedict Cumberbatch) cambia después de que un accidente automovilístico le roba el uso de sus manos. ', 2016, 155),
(44, 7, 'Fifty Shades Freed', 'Anastasia and Christian get married, but Jack Hyde continues to threaten their relationship. ', 2018, 105),
(45, 1, ' 	 Yun nan chong gu (2018)', 'Following in the footsteps of blockbuster MOJIN: THE LOST LEGEND and based on the bestselling novel series, MOJIN: THE WORM VALLEY once again finds legendary tomb explorer Hu Bayi on a dangerous mission as he seeks out the Tomb of Emperor Xian,', 2018, 110),
(46, 1, 'Project X', '3 high school seniors throw a birthday party to make a name for themselves. As the night progresses, things spiral out of control as word of the party spreads.', 2012, 88),
(47, 3, 'Soy leyenda', 'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 2007, 101),
(48, 6, 'Ralph Breaks the Internet', 'Six years after the events of "Wreck-It Ralph," Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure.', 218, 112),
(49, 4, 'Dr Strange', 'La vida del Dr. Stephen Strange (Benedict Cumberbatch) cambia después de que un accidente automovilístico le roba el uso de sus manos. ', 2016, 155),
(50, 6, 'Ralph Breaks the Internet', 'Six years after the events of "Wreck-It Ralph," Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure.', 218, 112),
(51, 2, 'Los Tres Chiflados', 'Basada en la popular serie de cortos de mediados del siglo XX, realizada por el trío cómico "Los tres chiflados".', 2012, 90),
(52, 3, 'REC', 'Un reportero (Manuela Velasco) y su camarógrafo graban una terrible epidemia de una enfermedad que transforma a los humanos en caníbales viciosos.', 2007, 90),
(53, 1, 'Blackhat', 'Los gobiernos estadounidenses y chinos se ven obligados a cooperar por el bien de la seguridad nacional de ambas potencias. ', 2015, 133),
(54, 1, 'Pirates of the Caribbean', ' Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead. ', 2003, 143),
(55, 4, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers. ', 1999, 136),
(56, 1, 'Aquaman', 'Aquaman debe recuperar el legendario Tridente de Atlan para salvar a la ciudad subacuática de Atlantis, y al mundo de la superficie, de su hermano hambriento de poder.', 2018, 142),
(57, 4, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers. ', 1999, 136),
(58, 1, 'Transformers: El lado oscuro de la Luna', 'The Autobots learn of a Cybertronian spacecraft hidden on the moon, and race against the Decepticons to reach it and to learn its secrets.', 2011, 154),
(59, 4, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers. ', 1999, 136),
(60, 6, 'Toy Story', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home. ', 1995, 81),
(61, 2, 'The Longest Yard', 'En una cárcel de Texas, veteranos de la NFL entrenan a sus compañeros para un juego contra los guardias del penal.', 2005, 113),
(62, 3, 'Mama', 'A young couple take in their two nieces only to suspect that a supernatural spirit named Mama has latched itself to their family.', 2013, 100),
(63, 3, 'LA MONJA', 'PELICULA DE TERROR', 2018, 128),
(64, 5, 'The Pianist', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 2002, 150),
(65, 2, 'It\'s a Wonderful Life ', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed. ', 1946, 130),
(66, 2, 'It\'s a Wonderful Life ', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed. ', 1946, 130),
(67, 1, 'Dragon Ball Super: Broly', ' Goku and Vegeta encounter Broly, a Saiyan warrior unlike any fighter they\'ve faced before. ', 2018, 100),
(68, 5, 'Déjame salir', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 2017, 104),
(69, 1, 'Braveheart', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England. ', 1995, 164),
(70, 1, 'Braveheart', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England. ', 1995, 164),
(71, 5, 'Creed: La leyenda de Rocky', 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed. ', 2015, 133),
(72, 2, 'Home Alone', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation. ', 1990, 103),
(73, 3, 'Bajo la misma estrella', 'Hazel Grace Lancaster (Shailene Woodley), una paciente de cáncer de 16 años de edad, conoce y se enamora de Gus Waters (Ansel Elgort), una adolescente igualmente afligida de su grupo de apoyo para el cáncer. Hazel siente que Gus realmente la entiende.  ', 2014, 1),
(74, 5, 'Red social', 'Está basada en el libro Multimillonarios por accidente, de Ben Mezrich, y narra la historia de la conocida red social Facebook.', 2010, 120),
(75, 2, 'Home Alone', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation. ', 1990, 103),
(76, 1, '300', ' King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C. ', 2006, 117),
(77, 3, 'Bajo la misma estrella', 'Hazel Grace Lancaster (Shailene Woodley), una paciente de cáncer de 16 años de edad, conoce y se enamora de Gus Waters (Ansel Elgort), una adolescente igualmente afligida de su grupo de apoyo para el cáncer. Hazel siente que Gus realmente la entiende.  ', 2014, 1),
(78, 2, 'Bumblebee (2018)', 'On the run in the year of 1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie, on the cusp of turning 18 and trying to find her place in the world, discovers Bumblebee, battle-scarred and broken.', 2018, 114),
(80, 2, 'Toy Story 4', 'When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy. ', 2019, 150),
(81, 3, 'Train to Busan', 'While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.', 2016, 118),
(82, 3, 'Train to Busan', 'While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.', 2016, 118),
(83, 5, 'Pearl Harbor', 'El ataque a Pearl Harbor fue un ataque militar sorpresa del Servicio Aéreo de la Marina Imperial Japonesa contra la base naval de los Estados Unidos en Pearl Harbor, Territorio de Hawaii, en la mañana del 7 de diciembre de 1941.', 2001, 184),
(84, 1, 'DURO DE MATAR', 'PELICULA DE VAN DAMM', 2013, 122),
(85, 3, 'Jaws ', ' When a killer shark unleashes chaos on a beach resort, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down. ', 1975, 124),
(86, 6, 'WALL·E ', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind. ', 2008, 98),
(87, 1, 'Justice League: The Flashpoint Paradox ', 'The Flash finds himself in a war torn alternate timeline and teams up with alternate versions of his fellow heroes to return home and restore the timeline. ', 2013, 75),
(88, 2, 'The Wolf of Wall Street', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government', 2013, 180),
(89, 6, 'WALL·E ', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind. ', 2008, 98),
(90, 2, 'The Wolf of Wall Street', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government', 2013, 180),
(91, 6, 'Underworld', 'Una mujer vampiro trata de proteger a un estudiante de unos hombres lobo que intentan crear una especie híbrida.', 2003, 170),
(92, 5, 'Cincuenta sombras de Grey', 'Una estudiante de literatura inicia un romance atrevido con un controlador hombre de negocios cuyos gustos sexuales se encuentran en la frontera del dolor y el placer.', 2015, 129),
(93, 2, 'Deadpool 2', 'Deadpool tiene que proteger a un mutante adolescente de Cable, un soldado del futuro genéticamente modificado, pero Deadpool no está solo: otros superhéroes igual de chiflados que él unen sus fuerzas contra el perverso Cable.', 2018, 134),
(94, 1, 'Never Back Down ', ' A frustrated and conflicted teenager arrives at a new high school to discover an underground fight club and meet a classmate who begins to coerce him into fighting. ', 2008, 110),
(95, 2, 'El lobo de Wall Street', ' Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government. ', 2013, 180),
(96, 4, 'WALL·E', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind. ', 2008, 120),
(97, 4, 'WALL·E', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind. ', 2008, 120),
(98, 1, 'Civil War', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 2016, 147),
(99, 1, 'Fast & Furious 7', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother. ', 2015, 135),
(100, 2, 'Home Alone', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation. ', 1990, 110),
(101, 3, 'Us', 'A mother and father take their kids to their beach house, expecting to enjoy time with friends, but their serenity turns to tension and chaos when some visitors arrive uninvited. ', 2019, 143),
(102, 5, 'Pearl Harbor', 'El ataque a Pearl Harbor fue un ataque militar sorpresa del Servicio Aéreo de la Marina Imperial Japonesa contra la base naval de los Estados Unidos en Pearl Harbor, Territorio de Hawaii, en la mañana del 7 de diciembre de 1941.', 2001, 184),
(103, 5, 'Déjame salir', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point. ', 2017, 104),
(104, 2, 'Niños grandes ', 'After their high school basketball coach passes away, five good friends and former teammates reunite for a Fourth of July holiday weekend.', 2010, 142),
(106, 1, 'Venom', 'Durante la investigacion de Eddie Brock acerca de la corporacion life, Eddie se combina con el cuerpo de un alienigena dentro de la investigacion.', 2018, 140),
(107, 1, 'Black Mirror: Bandersnatch', 'In 1984, a young programmer begins to question reality as he works to adapt a fantasy novel into a video game.', 2018, 90),
(108, 1, 'Ready Player One', 'When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune. ', 2018, 140),
(109, 1, 'El lobo de Wall Street ', ' Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government. ', 2013, 180),
(110, 1, ' Boyka: Undisputed', ' In the fourth installment of the fighting franchise, Boyka is shooting for the big leagues when an accidental death in the ring makes him question everything he stands for. ', 2016, 86),
(111, 5, 'Mi nombre es Khan', 'Un hombre (Shah Rukh Khan) autista viaja a través de los Estados Unidos para conocer al presidente Obama.', 2010, 165),
(112, 5, 'Bohemian Rhapsody', ' The story of the legendary rock music band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985). ', 2018, 134),
(113, 5, 'Warrior', 'The youngest son of an alcoholic former boxer returns home, where he\'s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother. ', 2011, 151),
(114, 5, 'Warrior', 'The youngest son of an alcoholic former boxer returns home, where he\'s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother. ', 2011, 151),
(115, 1, 'The Wolf of Wall Street', 'Jordan Belfort is a Long Island penny stockbroker who served 22 months in prison for defrauding investors in a massive 1990s securities scam that involved widespread corruption on Wall Street and in the corporate banking world', 2013, 180),
(116, 1, 'Spider-Man 3', 'A strange black entity from another world bonds with Peter Parker and causes inner turmoil as he contends with new villains, temptations, and revenge. ', 2007, 139),
(117, 1, 'Django Unchained', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner. ', 2012, 147),
(118, 1, 'Django Unchained', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner. ', 2012, 147),
(119, 1, 'Kill Bill: Vol. 1 ', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her. ', 2003, 141),
(120, 1, 'Deadpool 2', 'Foul-mouthed mutant mercenary Wade Wilson (AKA. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg, Cable. ', 2018, 120),
(121, 1, 'El mariachi ', 'A traveling mariachi is mistaken for a murderous criminal and must hide from a gang bent on killing him', 1992, 81),
(122, 1, 'Deadpool 2', 'Foul-mouthed mutant mercenary Wade Wilson (AKA. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg, Cable. ', 2018, 119),
(123, 1, 'Deadpool', 'Wade Wilson (Ryan Reynolds) es un ex agente de las Fuerzas Especiales que ahora trabaja como mercenario. Su mundo se derrumba cuando el malvado científico Ajax (Ed Skrein) lo tortura, lo desfigura y lo transforma en Deadpool.', 2016, 148),
(124, 1, 'Deadpool', 'Wade Wilson (Ryan Reynolds) es un ex agente de las Fuerzas Especiales que ahora trabaja como mercenario. Su mundo se derrumba cuando el malvado científico Ajax (Ed Skrein) lo tortura, lo desfigura y lo transforma en Deadpool.', 2016, 148),
(125, 1, ' El vicio del poder', 'The story of Dick Cheney, an unassuming bureaucratic Washington insider, who quietly wielded immense ', 2018, 90),
(126, 1, 'The Secret LIfe of Pets', 'The Secret Life of your Pets is a fun and fresh comedy that is worth seeing in the movies, with some very stupid but effective jokes. It is not a must-see movie, but they will enjoy it a lot if they are accompanied by their younger siblings or children.', 2016, 87),
(127, 3, 'Insidious: The Last Key', 'Parapsychologist Dr. Elise Rainier faces her most fearsome and personal haunting yet, as she is drawn back to her ghostly childhood home, where the terror began. ', 2018, 103),
(128, 7, 'Tres metros sobre el cielo', 'A privileged woman and a reckless man fall in love despite their different social classes. ', 2010, 178),
(129, 3, ' Hellboy', 'Based on the graphic novels by Mike Mignola, Hellboy, caught between the worlds of the supernatural and human, battles an ancient sorceress bent on revenge. ', 2019, 120),
(130, 1, 'Supergirl', 'Las aventuras de la prima de Superman en su propia carrera de superhéroe. “A los 12 años, Kara escapó del condenado planeta Krypton con la ayuda de sus padres, al mismo tiempo que el bebé Kal-El', 2015, 145),
(131, 1, 'Supergirl', 'Las aventuras de la prima de Superman en su propia carrera de superhéroe. “A los 12 años, Kara escapó del condenado planeta Krypton con la ayuda de sus padres, al mismo tiempo que el bebé Kal-El', 2015, 145),
(132, 2, 'A Haunted House', 'Malcolm and Kisha move into their dream home, but soon learn a demon also resides there. When Kisha becomes possessed, Malcolm - determined to keep his sex life on track - turns to a priest, a psychic, and a team of ghost-busters for help. ', 2013, 86),
(133, 4, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival. ', 2014, 161),
(134, 1, 'jumanji', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game. ', 2017, 119),
(135, 6, 'The Amazing Spider-Man 2: El poder de Electro', 'When New York is put under siege by Oscorp, it is up to Spider-Man to save the city he swore to protect as well as his loved ones. ', 2014, 142),
(136, 1, 'Vengadores: Infinity War', ' The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos ', 2018, 190),
(137, 1, 'San Andreas', 'In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey with his ex-wife across the state in order to rescue his daughter.', 2015, 156),
(138, 7, 'Amar te duele ', 'Renata is a young high-class girl and Ulises is a poor guy. They both fall in love, but they must fight against everyone, specially Renata\'s rich parents, who want to stop their love', 2002, 104),
(140, 1, 'The Doors', 'The story of the famous and influential 1960s rock band The Doors and its lead singer and composer, Jim Morrison, from his days as a UCLA film student in Los Angeles, to his untimely death in Paris, France at age 27 in 1971. ', 1991, 140),
(141, 2, 'asd', 'asd', 13, 13),
(143, 2, 'khe', 'kha', 2000, 123),
(145, 2, 'watchmen', 'superheroes', 2008, 124),
(147, 6, 'sup', 'pr2', 2015, 120),
(149, 1, 'Avengers', 'batman superman', 2018, 105),
(150, 1, '50 SOMBRAS', 'AMOR', 2018, 112),
(151, 1, 'ANTHONY', 'CARDENAS', 2018, 115),
(152, 2, 'pr01', 'prueba 01', 2019, 15),
(153, 2, 'khefuef', 'fuef', 2000, 142),
(154, 1, 'RODRIGO', 'TUFIÑO', 2018, 115),
(156, 5, 'Bohemian Rapsody', 'The legendary Rock Band Queen', 2018, 134),
(157, 7, 'Date a live', 'hola', 2011, 120),
(158, 1, 'rambo', 'asesino libre', 2000, 154),
(159, 4, 'pr01', 'prueba 01', 2019, 15),
(160, 1, 'superman', 'super heroe', 2011, 120),
(163, 2, 'pr02', 'prueba 02', 2019, 15),
(164, 1, 'hola', 'como', 123, 34),
(165, 2, 'Boris', 'Mauricio', 1234, 25),
(167, 1, 'Deadpool', 'Deadpool', 2017, 120),
(174, 4, 'AAA', 'AAA', 2048, 1),
(175, 5, 'Con mi corazon en Yambo', 'Pelicula sobre los hermanos Restrepo', 2008, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id_movie`),
  ADD KEY `genre_movie_fk` (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `genre_movie_fk` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
