class Item {
  String? imgPath;
  String? title;
  double? price;

  String? type;
  String? year;
  String? description;

  String? duration;
  double? rate;

  Item(
      {this.imgPath,
      this.title,
      this.price,
      this.type,
      this.year,
      this.description,
      this.duration,
      this.rate});
}

List<Item> items = [
  Item(
      imgPath: "assets/images/black_adam.jpeg",
      title: "Black Adam",
      price: 17,
      type: "Action",
      year: "2022",
      duration: "1h 40m",
      rate: 3.1,
      description:
          "After being granted with the divine power of the Egyptian Gods and spending almost 5000 years in a guardhouse, Black Adam is freed and he decides to unloose his own style of justice to the world."),
  Item(
      imgPath: "assets/images/blonde.jpeg",
      title: "Blonde",
      price: 20,
      type: "Romance",
      year: "2022",
      duration: "2h 46m",
      description:
          "Blonde is a 2022 American biographical film written and directed by Andrew Dominik, and the second adaptation, with the same name, based on the 2000 novel of the same name by Joyce Carol Oates. The film is a fictionalized take on the life and career of American actress Marilyn Monroe, played by Ana de Armas. The cast also includes Adrien Brody, Bobby Cannavale, Xavier Samuel, and Julianne Nicholson..A look at the rise to fame and the epic demise of actress Marilyn Monroe, one of the biggest stars in the world.",
      rate: 4.5),
  Item(
      imgPath: "assets/images/deep_water.jpeg",
      title: "Deep Water",
      type: "Romance",
      duration: "1h 55m",
      price: 25,
      description:
          "Melinda and Vic Van Allen live with their young daughter Trixie in Little Wesley, Louisiana. Vic has retired early after developing guidance chips for combat drones, and his complicated relationship with Melinda is held together by a precarious arrangement: they sleep apart and Melinda takes lovers openly, even in their family home, while Vic finds solace in raising his large collection of snails. Their open marriage is no secret to their concerned friends, and Vic grows increasingly jealous, while Melinda laments his lack of passion.",
      year: "2021",
      rate: 3.5),
  Item(
      imgPath: "assets/images/dog.jpeg",
      title: "Dog",
      type: "Comedy",
      year: "2022",
      price: 7,
      duration: "1h 41m",
      rate: 3.6,
      description:
          "US Army Ranger Jackson Briggs travels with Lulu, a military dog, to the funeral of her handler. During their journey, the duo breaks laws and leaves no stone unturned in annoying each other."),
  Item(
      imgPath: "assets/images/encanto.jpeg",
      title: "Encanto",
      type: "Comedy",
      year: "2021",
      price: 12,
      duration: "1h 49m",
      rate: 3.7,
      description:
          "The Madrigals are an extraordinary family who live hidden in the mountains of Colombia in a charmed place called the Encanto. The magic of the Encanto has blessed every child in the family with a unique gift -- every child except Mirabel. However, she soon may be the Madrigals last hope when she discovers that the magic surrounding the Encanto is now in danger."),
  Item(
      imgPath: "assets/images/love_today.jpeg",
      title: "Love Today",
      type: "Romance",
      year: "2022",
      duration: "2h 32m",
      price: 20,
      description:
          "While a couple is deeply in love, the girl's father challenges the two to switch their phones with each other to test their relationship. Chaos ensues as the lovers' secrets are unearthed.",
      rate: 4.5),
  Item(
      imgPath: "assets/images/luck.jpeg",
      title: "Luck",
      type: "Comedy",
      year: "2022",
      price: 21,
      duration: "1h 45m",
      rate: 3.7,
      description:
          "The story of Sam Greenfield, the unluckiest person in the world. Suddenly finding herself in the never-before-seen Land of Luck, she must unite with the magical creatures there to turn her luck around."),
  Item(
      imgPath: "assets/images/morbius.jpeg",
      title: "Morbius",
      type: "Action",
      year: "2022",
      price: 11,
      duration: "1h 44m",
      rate: 3.1,
      description:
          "Determined to cure the disease that has plagued him his entire life, Morbius conducts a drastic experiment, which bears unforeseen consequences."),
  Item(
      imgPath: "assets/images/pathaan.jpeg",
      title: "Pathaan",
      type: "Action",
      year: "2022",
      price: 25,
      duration: "2h 46m",
      rate: 3.1,
      description:
          "An Indian spy battles against the leader of a gang of mercenaries who have a heinous plot for his homeland."),
  Item(
      imgPath: "assets/images/plane.jpeg",
      title: "Plane",
      type: "Action",
      year: "2022",
      price: 24,
      duration: "2h 46m",
      rate: 2.7,
      description:
          "Pilot Brodie Torrance saves passengers from a lightning strike by making a risky landing on a war-torn island -- only to find that surviving the landing was just the beginning. When dangerous rebels take most of the passengers hostage, the only person Torrance can count on for help is Louis Gaspare, an accused murderer who was being transported by the FBI."),
  Item(
      imgPath: "assets/images/purple_hearts.jpeg",
      title: "Purple Hearts",
      type: "Romance",
      year: "2022",
      price: 14,
      duration: "2h 4m",
      rate: 3.0,
      description:
          "Cassie, a struggling singer-songwriter agrees to marry a troubled Marine, Luke for military benefits. The line between real and pretend begins to blur."),
  Item(
      imgPath: "assets/images/queenpins.jpeg",
      title: "Queenpins",
      type: "Comedy",
      year: "2022",
      price: 17,
      duration: "1h 55m",
      rate: 3.4,
      description:
          "A frustrated suburban housewife and her best friend hatch an illegal coupon-club scheme that scams millions from corporations and delivers deals to legions of fellow coupon clippers. Hot on their trail is an unlikely duo -- a hapless loss-prevention officer and a determined U.S. postal inspector -- both looking to end their criminal enterprise."),
  Item(
      imgPath: "assets/images/radhe_shyam.jpeg",
      title: "Radhe Shyam",
      type: "Romance",
      year: "2022",
      price: 13,
      duration: "2h 18m",
      rate: 2.6,
      description:
          "In 1970s Europe, a world-renowned palmist named Vikramaditya finds love when he meets Prerana, a doctor. However, their relationship is threatened by his view of destiny and a terminal illness."),
  Item(
      imgPath: "assets/images/scream.jpeg",
      title: "Scream",
      type: "Horror",
      year: "2022",
      price: 23,
      duration: "2h 01m",
      rate: 2.7,
      description:
          "Four survivors of the Ghostface murders leave Woodsboro behind for a fresh start in New York City. However, they soon find themselves in a fight for their lives when a new killer embarks on a bloody rampage."),
  Item(
      imgPath: "assets/images/shotgun_wedding.jpeg",
      title: "Shotgun Wedding",
      type: "Comedy",
      year: "2022",
      price: 17,
      duration: "1h 40m",
      rate: 3.1,
      description:
          "Darcy and Tom gather their families for a destination wedding, but the ceremony gets put on hold when gunmen take everyone hostage. Now, they must do everything they can to save their loved ones -- if they don't wind up killing each other first."),
  Item(
      imgPath: "assets/images/smile.jpeg",
      title: "Smile",
      type: "Horror",
      year: "2022",
      price: 21,
      duration: "1h 46m",
      rate: 3.7,
      description:
          "After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can't explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.."),
  Item(
      imgPath: "assets/images/the_invitation.jpeg",
      title: "The Invitation",
      type: "Horror",
      year: "2022",
      price: 27,
      duration: "1h 55m",
      rate: 3.9,
      description:
          "After the death of her mother and having no other known relatives, Evie takes a DNA test and discovers a long-lost cousin she never knew she had. Invited by her newfound family to a lavish wedding in the English countryside, Evie's at first seduced by the sexy aristocratic host. However, she's soon thrust into a nightmare of survival as she uncovers twisted secrets about her family history and the unsettling intentions behind their sinful generosity."),
  Item(
      imgPath: "assets/images/the_northman.jpeg",
      title: "The Northman",
      type: "Action",
      year: "2022",
      price: 24,
      duration: "2h 46m",
      rate: 3.1,
      description:
          "Prince Amleth is on the verge of becoming a man when his father is brutally murdered by his uncle, who kidnaps the boy's mother. Two decades later, Amleth is now a Viking who raids Slavic villages. He soon meets a seeress who reminds him of his vow -- save his mother, kill his uncle, avenge his father."),
  Item(
      imgPath: "assets/images/the_offering.jpeg",
      title: "The Offering",
      type: "Horror",
      year: "2022",
      price: 26,
      duration: "1h 56m",
      rate: 3.2,
      description:
          "The son of a Hasidic funeral director returns home with his pregnant wife in hopes of reconciling with his father. Little do they know that an ancient evil lurking inside a mysterious corpse has sinister plans for their unborn child."),
  Item(
      imgPath: "assets/images/viking_wolf.jpeg",
      title: "Viking Wolf",
      type: "Horror",
      year: "2022",
      price: 19,
      duration: "2h 14m",
      rate: 3.6,
      description:
          "After witnessing a grotesque murder at a party in her new town, a teenager starts having strange visions and bizarre desires."),
];

List<Item> HorrorItems = [
  Item(
      imgPath: "assets/images/scream.jpeg",
      title: "Scream",
      type: "Horror",
      year: "2022",
      price: 23,
      duration: "2h 01m",
      rate: 2.7,
      description:
          "Four survivors of the Ghostface murders leave Woodsboro behind for a fresh start in New York City. However, they soon find themselves in a fight for their lives when a new killer embarks on a bloody rampage."),
  Item(
      imgPath: "assets/images/smile.jpeg",
      title: "Smile",
      type: "Horror",
      year: "2022",
      price: 21,
      duration: "1h 46m",
      rate: 3.7,
      description:
          "After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can't explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.."),
  Item(
      imgPath: "assets/images/the_invitation.jpeg",
      title: "The Invitation",
      type: "Horror",
      year: "2022",
      price: 27,
      duration: "1h 55m",
      rate: 3.9,
      description:
          "After the death of her mother and having no other known relatives, Evie takes a DNA test and discovers a long-lost cousin she never knew she had. Invited by her newfound family to a lavish wedding in the English countryside, Evie's at first seduced by the sexy aristocratic host. However, she's soon thrust into a nightmare of survival as she uncovers twisted secrets about her family history and the unsettling intentions behind their sinful generosity."),
  Item(
      imgPath: "assets/images/the_offering.jpeg",
      title: "The Offering",
      type: "Horror",
      year: "2022",
      price: 26,
      duration: "1h 56m",
      rate: 3.2,
      description:
          "The son of a Hasidic funeral director returns home with his pregnant wife in hopes of reconciling with his father. Little do they know that an ancient evil lurking inside a mysterious corpse has sinister plans for their unborn child."),
  Item(
      imgPath: "assets/images/viking_wolf.jpeg",
      title: "Viking Wolf",
      type: "Horror",
      year: "2022",
      price: 19,
      duration: "2h 14m",
      rate: 3.6,
      description:
          "After witnessing a grotesque murder at a party in her new town, a teenager starts having strange visions and bizarre desires."),
];

List<Item> ComedyItems = [
  Item(
      imgPath: "assets/images/dog.jpeg",
      title: "Dog",
      type: "Comedy",
      year: "2022",
      price: 7,
      duration: "1h 41m",
      rate: 3.6,
      description:
          "US Army Ranger Jackson Briggs travels with Lulu, a military dog, to the funeral of her handler. During their journey, the duo breaks laws and leaves no stone unturned in annoying each other."),
  Item(
      imgPath: "assets/images/encanto.jpeg",
      title: "Encanto",
      type: "Comedy",
      year: "2021",
      price: 12,
      duration: "1h 49m",
      rate: 3.7,
      description:
          "The Madrigals are an extraordinary family who live hidden in the mountains of Colombia in a charmed place called the Encanto. The magic of the Encanto has blessed every child in the family with a unique gift -- every child except Mirabel. However, she soon may be the Madrigals last hope when she discovers that the magic surrounding the Encanto is now in danger."),
  Item(
      imgPath: "assets/images/luck.jpeg",
      title: "Luck",
      type: "Comedy",
      year: "2022",
      price: 21,
      duration: "1h 45m",
      rate: 3.7,
      description:
          "The story of Sam Greenfield, the unluckiest person in the world. Suddenly finding herself in the never-before-seen Land of Luck, she must unite with the magical creatures there to turn her luck around."),
  Item(
      imgPath: "assets/images/queenpins.jpeg",
      title: "Queenpins",
      type: "Comedy",
      year: "2022",
      price: 17,
      duration: "1h 55m",
      rate: 3.4,
      description:
          "A frustrated suburban housewife and her best friend hatch an illegal coupon-club scheme that scams millions from corporations and delivers deals to legions of fellow coupon clippers. Hot on their trail is an unlikely duo -- a hapless loss-prevention officer and a determined U.S. postal inspector -- both looking to end their criminal enterprise."),
  Item(
      imgPath: "assets/images/shotgun_wedding.jpeg",
      title: "Shotgun Wedding",
      type: "Comedy",
      year: "2022",
      price: 17,
      duration: "1h 40m",
      rate: 3.1,
      description:
          "Darcy and Tom gather their families for a destination wedding, but the ceremony gets put on hold when gunmen take everyone hostage. Now, they must do everything they can to save their loved ones -- if they don't wind up killing each other first."),
];

List<Item> RomanceItems = [
  Item(
      imgPath: "assets/images/deep_water.jpeg",
      title: "Deep Water",
      type: "Romance",
      duration: "1h 55m",
      price: 25,
      description:
          "Melinda and Vic Van Allen live with their young daughter Trixie in Little Wesley, Louisiana. Vic has retired early after developing guidance chips for combat drones, and his complicated relationship with Melinda is held together by a precarious arrangement: they sleep apart and Melinda takes lovers openly, even in their family home, while Vic finds solace in raising his large collection of snails. Their open marriage is no secret to their concerned friends, and Vic grows increasingly jealous, while Melinda laments his lack of passion.",
      year: "2021",
      rate: 3.5),
  Item(
      imgPath: "assets/images/blonde.jpeg",
      title: "Blonde",
      price: 20,
      type: "Romance",
      year: "2022",
      duration: "2h 46m",
      description:
          "Blonde is a 2022 American biographical film written and directed by Andrew Dominik, and the second adaptation, with the same name, based on the 2000 novel of the same name by Joyce Carol Oates. The film is a fictionalized take on the life and career of American actress Marilyn Monroe, played by Ana de Armas. The cast also includes Adrien Brody, Bobby Cannavale, Xavier Samuel, and Julianne Nicholson..A look at the rise to fame and the epic demise of actress Marilyn Monroe, one of the biggest stars in the world.",
      rate: 4.5),
  Item(
      imgPath: "assets/images/purple_hearts.jpeg",
      title: "Purple Hearts",
      type: "Romance",
      year: "2022",
      price: 14,
      duration: "2h 4m",
      rate: 3.0,
      description:
          "Cassie, a struggling singer-songwriter agrees to marry a troubled Marine, Luke for military benefits. The line between real and pretend begins to blur."),
  Item(
      imgPath: "assets/images/love_today.jpeg",
      title: "Love Today",
      type: "Romance",
      year: "2022",
      duration: "2h 32m",
      price: 20,
      description:
          "While a couple is deeply in love, the girl's father challenges the two to switch their phones with each other to test their relationship. Chaos ensues as the lovers' secrets are unearthed.",
      rate: 4.5),
  Item(
      imgPath: "assets/images/radhe_shyam.jpeg",
      title: "Radhe Shyam",
      type: "Romance",
      year: "2022",
      price: 13,
      duration: "2h 18m",
      rate: 2.6,
      description:
          "In 1970s Europe, a world-renowned palmist named Vikramaditya finds love when he meets Prerana, a doctor. However, their relationship is threatened by his view of destiny and a terminal illness."),
];

List<Item> ActionItems = [
  Item(
      imgPath: "assets/images/black_adam.jpeg",
      title: "Black Adam",
      price: 17,
      type: "Action",
      year: "2022",
      duration: "1h 40m",
      rate: 3.1,
      description:
          "After being granted with the divine power of the Egyptian Gods and spending almost 5000 years in a guardhouse, Black Adam is freed and he decides to unloose his own style of justice to the world."),
  Item(
      imgPath: "assets/images/morbius.jpeg",
      title: "Morbius",
      type: "Action",
      year: "2022",
      price: 11,
      duration: "1h 44m",
      rate: 3.1,
      description:
          "Determined to cure the disease that has plagued him his entire life, Morbius conducts a drastic experiment, which bears unforeseen consequences."),
  Item(
      imgPath: "assets/images/pathaan.jpeg",
      title: "Pathaan",
      type: "Action",
      year: "2022",
      price: 25,
      duration: "2h 46m",
      rate: 3.1,
      description:
          "An Indian spy battles against the leader of a gang of mercenaries who have a heinous plot for his homeland."),
  Item(
      imgPath: "assets/images/plane.jpeg",
      title: "Plane",
      type: "Action",
      year: "2022",
      price: 24,
      duration: "2h 46m",
      rate: 2.7,
      description:
          "Pilot Brodie Torrance saves passengers from a lightning strike by making a risky landing on a war-torn island -- only to find that surviving the landing was just the beginning. When dangerous rebels take most of the passengers hostage, the only person Torrance can count on for help is Louis Gaspare, an accused murderer who was being transported by the FBI."),
  Item(
      imgPath: "assets/images/the_northman.jpeg",
      title: "The Northman",
      type: "Action",
      year: "2022",
      price: 24,
      duration: "2h 46m",
      rate: 3.1,
      description:
          "Prince Amleth is on the verge of becoming a man when his father is brutally murdered by his uncle, who kidnaps the boy's mother. Two decades later, Amleth is now a Viking who raids Slavic villages. He soon meets a seeress who reminds him of his vow -- save his mother, kill his uncle, avenge his father."),
];
