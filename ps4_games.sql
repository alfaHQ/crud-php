-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 07:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps4_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `horror`
--

CREATE TABLE `horror` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horror`
--

INSERT INTO `horror` (`id`, `name`, `desc`, `img`) VALUES
(1, 'OMORI', 'Explore a strange world full of colorful friends and foes. Navigate through the vibrant and the mundane in order to uncover a forgotten past. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.', 'omori.png'),
(2, 'BROKEN MIND', 'In BROKEN MIND, you play Agent Frank Morgan, a detective with a dark past.\nYou will have to investigate the disappearance of a teenage girl who was abducted during a live Internet broadcast. The investigation is accelerated when Laura\'s phone emits a signal a few miles away in the middle of the forest!', 'brokenmind.png'),
(3, 'Oxide Room 104', 'Combining escape room gameplay and action, Oxide Room 104 is a bone-chilling single-player body-horror game set inside an old motel. Abducted, at the mercy of a ruthless scientist, and stalked by a horrible creature, you must try to escape using common sense, just as you would in real life. Can you get out of Oxide?', 'oxide.png'),
(4, 'The Quarry', 'As the sun sets on the last day of summer camp, the counselors of Hackett’s Quarry throw a party to celebrate. Things quickly take a turn for the worse.\nHunted by blood-drenched locals and something far more sinister, the teens\' party plans unravel into an unpredictable night of horror.', 'thequarry.png'),
(5, 'Fobia', 'Treze Trilhas is home to the St. Dinfina Hotel, a decadent site that is the subject of numerous rumors including mysterious disappearances and paranormal activity. Hoping to break the story, amateur journalist Roberto Leite Lopes travels to Santa Catarina following a tip from his friend Stephanie.', 'fobia.png'),
(6, 'Happy\'s Humble', 'You’ll be grilling patties, operating deep fryers, and pouring drinks at our quiet restaurant on the edge of town. The customers sure do love the menu; they can’t get enough of the Happy’s Deluxe, Fantastic Fowl, and Poppin’ Pork sandwiches.', 'happyhumble.png'),
(7, 'Evil Inside', 'The whole argument of Evil Inside happens in a mysterious house ... or almost everything. Explore Mark\'s house that is constantly changing. Slowly the atmosphere will change. Nothing is what it seems. Beat your fears. Face terror and truth. But above all... enjoy a real horror experience.', 'evilinside.png'),
(8, 'An Evil Existence', 'When Unsolved mysteries social media page creators Lisa and her Boyfriend James decide to visit the Hartley household to capture footage for their social media page. They soon regret ever going there.\nWithin the first 5 minutes of game play you will be trapped into a interactive nightmare, a horrific exploration of pure and realistic survival horror.', 'anevilexistence.png'),
(9, 'The Childs Night', 'Slowly unraveling the story of what happened to you, while lying in the crib unaware and innocent. With every minute as you explore you will remember more. Horrors will become real and clear.\nWas it just fear of the unknown that haunts you or is it more?', 'thechildsnight.png'),
(10, 'VISAGE', 'Explore a mysterious ever-changing house in a slow-paced, atmospheric world that combines both uncannily comforting and horrifyingly realistic environments, and enjoy a genuinely terrifying experience.', 'visage.png'),
(11, 'DAYMARE: 1998', 'DAYMARE: 1998 is a third-person survival horror with hardcore survival mechanics and hard to kill enemies. It requires a strategical approach to combat and puzzles and offers a multi-character point of view on the story, revealing a deep and obscure lore.', 'daymare1998.png'),
(12, 'Those Who Remain', 'As the lights go out, the embers of darkness are stoked in the sleepy town of Dormont. Confront uncomfortable horrors, keep your sanity in check and survive the night in this story-driven first-person psychological-thriller.', 'thosewhoremain.png'),
(13, 'Resident Evil', 'In 1998 a special forces team is sent to investigate some bizarre murders on the outskirts of Raccoon City. Upon arriving they are attacked by a pack of blood-thirsty dogs and are forced to take cover in a nearby mansion. But the scent of death hangs heavy in the air. ', 're.png'),
(14, 'Five Nights at Freddy\'s', 'Welcome to your new summer job at Freddy Fazbear\'s Pizza, where kids and parents alike come for entertainment and food as far as the eye can see! The main attraction is Freddy Fazbear, of course and his two friends. They are animatronic robots, programmed to please the crowds! ', 'fnaf.png'),
(15, 'Five Nights at Freddy\'s 2', 'In Five Nights at Freddy\'s 2, the old and aging animatronics are joined by a new cast of characters. They are kid-friendly, updated with the latest in facial recognition technology, tied into local criminal databases, and promise to put on a safe and entertaining show for kids and grown-ups alike!', 'fnaf2.png'),
(16, 'Five Nights at Freddy\'s 3', 'Thirty years after Freddy Fazbear\'s Pizza closed it\'s doors, the events that took place there have become nothing more than a rumor and a childhood memory, but the owners of \'Fazbear\'s Fright: The Horror Attraction\' are determined to revive the legend and make the experience as authentic as possible for patrons, going to great lengths to find anything that might have survived decades of neglect and ruin.', 'fnaf3.png'),
(17, 'Five Nights at Freddy\'s 4', 'You have only a flashlight to protect yourself. It will scare away things that may be creeping at the far end of the hallways, but be careful, and listen. If something has crept too close, then shining lights in its eyes will be your end.', 'fnaf4.png'),
(18, 'Back in 1995', 'A throwback to the survival horror and mystery games of the mid-90\'s 32-bit generation, Back in 1995 faithfully re-creates everything from this all-but-forgotten era of games.', 'backin1995.png'),
(19, 'Layers of Fear 2 ', 'The cameras are all focused on you the center of the scene. Not just in character, you are the character. The part to play is singularly yours. Written just for you. You are met with silence. No barking orders from the director. No call to action that you need to become this version of yourself. The demand to act fills your mind, but the script pages hold no words.', 'layersoffear2.png'),
(20, 'Man of Medan', 'The Dark Pictures Anthology is a series of stand-alone, branching cinematic horror games featuring a multiplayer mode.\nIn Man of Medan, five friends set sail on a holiday diving trip that soon changes into something much more sinister...', 'manofmedan.png'),
(21, 'Paper Dolls Original', 'Paper Dolls Original is a first-person horror game with a hint of Asian culture. The story begins with a man driving his daughter to his estranged wife\'s house. On the road, this man, tortured by depression, was deeply immersed in his past memories. Suddenly, his car crashed and he lost consciousness. When the man woke up, he found himself, daughter-less, in a deserted ancient Chinese house.', 'paperdolls.png'),
(22, 'Days Gone', 'Days Gone is an open-world action-adventure game set in a harsh wilderness two years after a devastating global pandemic. Play as Deacon St. John, a drifter and bounty hunter who rides the broken road, fighting to survive while searching for a reason to live.', 'daysgone.png'),
(23, 'S.O.N', 'S.O.N takes place in the most well known forest in the world, Clarencaster. The 300,000 acre forest located in southern Pennsylvania is full of plant life, beauty and mystery. In the most southern base of the iconic Pennsylvania forest lays an area that has given Clarencaster the title of the most dangerous area in the world.', 'son.png'),
(24, 'Your Toy', 'Your Toy is a 3D first person horror room escape game that features an advanced non-repeat puzzle system with challenging riddles, heart-pounding escape sequences and a mysterious narrative that dives deep into your darkest subconsciousness. Players will experience a fully immersive 3D environment, where the realistic art style provides an eerie and engaging atmosphere.', 'yourtoy.png'),
(25, 'Outlast', 'In the remote mountains of Colorado, horrors wait inside Mount Massive Asylum. A long-abandoned home for the mentally ill, recently re-opened by the “research and charity” branch of the transnational Murkoff Corporation, the asylum has been operating in strict secrecy… until now.', 'outlast.png'),
(26, 'Hello Neighbor', 'Hello Neighbor: Hide and Seek follows the tragic story of the Neighbor’s family in this dramatic prequel to Hello Neighbor. Experience playing a game of hide-and-seek with your brother as you both deal with a loss of a family member. The game explains events that lead up to the original Stealth Horror hit Hello Neighbor.', 'helloneighbor.png'),
(27, 'THE FOREST', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants.\nBuild, explore, survive in this terrifying first person survival horror simulator.', 'theforest.png'),
(28, 'The DOOR', 'Dr. Jacob, an authority on genomic research holed up in a secret lab in the dark forest.\nHe devoted himself to research in the secret lab he created to treat his terminally ill daughter.', 'thedoor.png'),
(29, 'The Evil Within 2', 'From mastermind Shinji Mikami, The Evil Within 2 is the latest evolution of survival horror. Detective Sebastian Castellanos has lost it all. But when given a chance to save his daughter, he must descend once more into the nightmarish world of STEM. ', 'evilwithin2.png'),
(30, 'RESIDENT EVIL REVELATIONS', 'The story is set at a time before the Kijuju and Lanshiang bioterror incidents when the BSAA was still a young organization. Join Jill Valentine aboard a ghost ship in the Mediterranean Sea searching for her old partner, Chris Redfield.', 'rerevelations.png'),
(31, 'Friday the 13th', 'Friday the 13th: The Game will strive to give every single player the tools to survive, escape or even try to take down the man who cannot be killed. Each and every gameplay session will give you an entirely new chance to prove if you have what it takes not only to survive, but to best the most prolific killer in cinema history, a slasher with more kills than any of his rivals!', 'friday13.png'),
(32, 'Resident Evil™ Code: Veronica X', 'Raccoon City was just the beginning. Claire and Chris Redfield’s nightmare continues as the siblings fight to survive against zombies and other monstrosities within Umbrella’s deadly facilities. Scavenge for weapons and precious ammo to battle undead canines, a gigantic subterranean worm, and other terrors lurking in the shadows.', 'recodeveronicax.png'),
(33, 'Outlast 2', 'You are Blake Langermann, a cameraman working with your wife, Lynn. The two of you are investigative journalists willing to take risks and dig deep to uncover the stories no one else will dare touch.', 'outlast2.png'),
(34, 'Weeping Doll', 'An ordinary family. A beautiful home. But, who’s crying?\nSearch the home, scour every room and scrutinize over every detail to piece together the story that has been kept locked away all this time.', 'weepingdoll.png'),
(35, 'The Bunker\n', 'As the last remaining survivor in a nuclear bunker, John’s daily routine is the one thing that keeps him sane. But when an alarm goes off, his mind starts to self-destruct. Venture into long forgotten areas, recover repressed childhood memories and unlock the dark secrets of The Bunker.\n', 'thebunker.png'),
(36, 'resident evil 4', 'Resident Evil 4 arrives on PlayStation®4 in full 1080p HD with an increased frame rate. This revolutionary masterpiece represented a turning point for the series as it brought the gameplay to a third-person over-the-shoulder perspective for the first time. Featuring a thrilling storyline taking place after the destruction of Umbrella Corporation, Resident Evil 4 not only changed the course of Resident Evil, but influenced countless other titles as well.', 're4.png'),
(37, 'RESIDENT EVIL 5', 'One of the most popular Resident Evil titles comes to PlayStation®4 in full 1080p HD with an increased frame rate. Featuring single-player and co-op modes and a dramatic storyline, this fully-loaded release includes all previously released DLC (Lost in Nightmares and Desperate Escape story expansions, Versus mode, extra figures and 4 costumes)', 're5.png'),
(38, 'Emily Wants To Play', 'It’s 11pm, and you are at the last house on your route. The lights are on, and the front door is opened. But, the windows are all boarded up and the grass is overgrown. It seems like a strange place to deliver a pizza, but at least, it looks like someone is home.', 'emilywtp.png'),
(39, 'Among the Sleep', 'Among the Sleep is a psychological horror game where you get to play as a two year old child. You get to experience the world through the eyes of a toddler with a vivid imagination that could easily scare your pants off.', 'amongthesleep.png'),
(40, '7 Days to Die', 'Set in a brutally unforgiving post-apocalyptic world overrun by the undead, 7 Days to Die is an open-world game that is a unique combination of first person shooter, survival horror, tower defense, and role-playing games. ', '7days.png'),
(41, 'Blair Witch', 'It’s 1996. A young boy disappears in the Black Hills Forest near Burkittsville, Maryland. As Ellis, a former police officer with a troubled past, you join the search. What starts as an ordinary investigation soon turns into an endless nightmare as you confront your fears and the Blair Witch, a mysterious force that haunts the woods…', 'blairwitch.png'),
(42, 'Dead Island ', 'The Dead Island Experience\nSmash heads, crack skulls, and slice ‘em up with visceral astounding melee combat and true story-based 4 player co-op in a sprawling open world just waiting for exploration.', 'deadisland.png'),
(43, 'The Park', 'Set in a creepy amusement park hiding a dark and sinister secret, The Park is a one to two hour long first-person psychological horror experience focusing on intense storytelling and exploration instead of combat and action.', 'thepark.png'),
(44, 'Resident Evil 6', 'Blending action and survival horror, Resident Evil 6 is a dramatic horror experience that cannot be forgotten. Now in high definition, the game offers multiple characters, including fan favorites and new faces, along with solo and co-op modes and new challenges for players, different from any other in the Resident Evil franchise. ', 're6.png'),
(45, 'Layers of Fear', 'Delve deep into the mind of an insane painter and discover the secret of his madness, as you explore a vast and constantly changing Victorian-era mansion. Uncover the visions, fears and horrors that entwine the painter and finish the masterpiece he has strived so long to create.', 'layersoffear.png'),
(46, 'Resident Evil 0', 'Resident Evil 0 reveals the truth behind the Mansion Incident, the catalyst for the entire storyline of the Resident Evil series. This remastered version takes the story and gameplay of the original and adds stunning HD graphics, 5.1 channel surround sound, optional modernised controls and widescreen TV compatibility.', 're0.png'),
(47, 'Until Dawn', 'Eight friends are trapped together on a remote mountain retreat, and they aren’t alone. Gripped by dread, with tensions running high, they must fight through their fear if they all hope to make it through the night in one piece.', 'untildawn.png'),
(48, 'Resident Evil® Revelations 2', 'Kidnapped by a unknown group of assailants, Claire and Moira awake to find themselves trapped on an isolated island infested with horrifying creatures beyond imagination. Now they must desperately struggle to escape the horror.', 'rerevelations2.png'),
(49, 'The Evil Within', 'Developed by Shinji Mikami and the talented team at Tango Gameworks, The Evil Within embodies the meaning of pure survival horror. Highly-crafted environments, horrifying anxiety, and an intricate story are combined to create an immersive world that will bring you to the height of tension. ', 'evilwithin.png'),
(50, 'Resident Evil Village', 'Set a few years after the horrifying events in the critically acclaimed Resident Evil 7 biohazard, the all-new storyline begins with Ethan Winters and his wife Mia living peacefully in a new location, free from their past nightmares. Just as they are building their new life together, tragedy befalls them once again.\nSet a few years after the horrifying events in the critically acclaimed Resident Evil 7 biohazard, the all-new storyline begins with Ethan Winters and his wife Mia living peacefully ', 'village.png'),
(51, 'The Last of Us Part II', 'Ellie’s journey through the hostile world. Feel her desperate struggle for survival through improved features such as high-intensity melee combat, fluid movement, and dynamic stealth. A broad variety of weapons, crafting items, skills, and updates allows you to personalize Ellie’s capabilities to your play style.', 'tlou2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `horror`
--
ALTER TABLE `horror`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `horror`
--
ALTER TABLE `horror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
