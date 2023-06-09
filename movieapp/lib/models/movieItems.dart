class Movies {
  String title;
  String movieUrl;
  List<String> genre;
  int year;
  double ratings;
  int playback;
  String pgRating;

  Movies(
      {required this.title,
      required this.movieUrl,
      required this.year,
      required this.genre,
      required this.ratings,
      required this.playback,
      required this.pgRating});

  static List<dynamic> movieList = [
    //00
    Movies(
        title: "Guardians of the Galaxy Vol.3",
        movieUrl:
            "https://cdn.marvel.com/content/1x/guardiansofthegalaxyvolume3_lob_crd_03.jpg",
        year: 2023,
        genre: ["Action", "Adventure", "Comedy", "Sci-Fi"],
        ratings: 8.2,
        playback: 149,
        pgRating: "PG-13"),

    //01
    Movies(
        title: "Ant-Man and The Wasp: Quantumania",
        movieUrl:
            "https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg",
        year: 2023,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 6.2,
        playback: 125,
        pgRating: "PG-13"),

    //02
    Movies(
        title: "Black Panther: Wakanda Forever",
        movieUrl:
            "https://cdn.marvel.com/content/1x/blackpantherwakandaforever_lob_crd_06.jpg",
        year: 2022,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 6.7,
        playback: 161,
        pgRating: "PG-13"),

    //03
    Movies(
        title: "Thor: Love and Thunder",
        movieUrl:
            "https://cdn.marvel.com/content/1x/thorloveandthunder_lob_crd_04.jpg",
        year: 2022,
        genre: ["Action", "Adventure", "Fantasy", "Sci-Fi"],
        ratings: 6.2,
        playback: 119,
        pgRating: "PG-13"),

    //04
    Movies(
        title: "Doctor Strange in the Multiverse of Madness",
        movieUrl:
            "https://cdn.marvel.com/content/1x/doctorstrangeinthemultiverseofmadness_lob_crd_02_3.jpg",
        year: 2022,
        genre: ["Action", "Adventure"],
        ratings: 6.9,
        playback: 126,
        pgRating: "PG-13"),

    //05
    Movies(
        title: "Spider-Man: No Way Home",
        movieUrl:
            "https://cdn.marvel.com/content/1x/spider-mannowayhome_lob_crd_03.jpg",
        year: 2021,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 8.2,
        playback: 148,
        pgRating: "PG-13"),

    //06
    Movies(
        title: "Iron Man",
        movieUrl: "https://cdn.marvel.com/content/1x/ironman_lob_crd_01_4.jpg",
        year: 2008,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.9,
        playback: 126,
        pgRating: "PG-13"),
    //07
    Movies(
        title: "Iron Man 2",
        movieUrl: "https://cdn.marvel.com/content/1x/ironman2_lob_crd_01_3.jpg",
        year: 2010,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 6.9,
        playback: 124,
        pgRating: "PG-13"),
    //08
    Movies(
        title: "Iron Man 3",
        movieUrl:
            "https://cdn.marvel.com/content/1x/ironman3_lob_crd_01_10.jpg",
        year: 2013,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.1,
        playback: 130,
        pgRating: "PG-13"),
    //09
    Movies(
        title: "The Avengers",
        movieUrl:
            "https://cdn.marvel.com/content/1x/theavengers_lob_crd_03.jpg",
        year: 2012,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 8.0,
        playback: 143,
        pgRating: "PG-13"),
    //10
    Movies(
        title: "Avengers: Age of Ultron",
        movieUrl:
            "https://cdn.marvel.com/content/1x/avengersageofultron_lob_crd_03.jpg",
        year: 2015,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.3,
        playback: 141,
        pgRating: "PG-13"),
    //11
    Movies(
        title: "Avengers: Infinity War",
        movieUrl:
            "https://cdn.marvel.com/content/1x/avengersinfinitywar_lob_crd_02_1.jpg",
        year: 2018,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 8.4,
        playback: 149,
        pgRating: "PG-13"),
    //12
    Movies(
        title: "Avengers: Endgame",
        movieUrl:
            "https://cdn.marvel.com/content/1x/avengersendgame_lob_crd_05_2.jpg",
        year: 2019,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 8.4,
        playback: 182,
        pgRating: "PG-13"),
    //13
    Movies(
        title: "Guardians of the Galaxy",
        movieUrl:
            "https://cdn.marvel.com/content/1x/guardiansofthegalaxy_lob_crd_03_0.jpg",
        year: 2014,
        genre: ["Action", "Adventure", "Comedy", "Sci-Fi"],
        ratings: 8.0,
        playback: 121,
        pgRating: "PG-13"),
    //14
    Movies(
        title: "Guardians of the Galaxy Vol.2",
        movieUrl:
            "https://cdn.marvel.com/content/1x/guardiansofthegalaxyvol.2_lob_crd_01.jpg",
        year: 2017,
        genre: ["Action", "Adventure", "Comedy", "Sci-Fi"],
        ratings: 7.6,
        playback: 137,
        pgRating: "PG-13"),
    //15
    Movies(
        title: "Captain America: The First Avenger",
        movieUrl:
            "https://cdn.marvel.com/content/1x/captainamerica_lob_crd_01.jpg",
        year: 2011,
        genre: ["Action", "Adventure"],
        ratings: 6.9,
        playback: 124,
        pgRating: "PG-13"),
    //16
    Movies(
        title: "Thor",
        movieUrl: "https://cdn.marvel.com/content/1x/thor_lob_crd_01.jpg",
        year: 2011,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 7.0,
        playback: 114,
        pgRating: "PG-13"),
    //17
    Movies(
        title: "Thor: The Dark World",
        movieUrl:
            "https://cdn.marvel.com/content/1x/thorthedarkworld_lob_crd_02_1.jpg",
        year: 2013,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 6.8,
        playback: 112,
        pgRating: "PG-13"),
    //18
    Movies(
        title: "Thor: Ragnarok",
        movieUrl:
            "https://cdn.marvel.com/content/1x/thorragnarok_lob_crd_03.jpg",
        year: 2017,
        genre: ["Action", "Adventure", "Fantasy", "Sci-Fi"],
        ratings: 7.9,
        playback: 130,
        pgRating: "PG-13"),
    //19
    Movies(
        title: "Spider-Man: Homecoming",
        movieUrl:
            "https://m.media-amazon.com/images/M/MV5BOGQ5YTM3YzctOTVmMC00OGIyLWFkZTYtMWYwOWZhMjA2MWMwXkEyXkFqcGdeQXVyMjUyMTE5MA@@._V1_FMjpg_UX1000_.jpg",
        year: 2017,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 7.4,
        playback: 133,
        pgRating: "PG-13"),

    //20
    Movies(
        title: "Ant-Man",
        movieUrl: "https://cdn.marvel.com/content/1x/ant-man_lob_crd_01_8.jpg",
        year: 2015,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.3,
        playback: 118,
        pgRating: "PG-13"),
    //21
    Movies(
        title: "Ant-Man and The Wasp",
        movieUrl:
            "https://cdn.marvel.com/content/1x/ant-manthewasp_lob_crd_01.jpg",
        year: 2018,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.0,
        playback: 118,
        pgRating: "PG-13"),
    //22
    Movies(
        title: "Captain America: The Winter Soilder",
        movieUrl:
            "https://cdn.marvel.com/content/1x/captainamericathewintersoldier_lob_crd_01_1.jpg",
        year: 2014,
        genre: ["Action", "Adventure"],
        ratings: 7.8,
        playback: 136,
        pgRating: "PG-13"),
    //23
    Movies(
        title: "Black Panther",
        movieUrl:
            "https://cdn.marvel.com/content/1x/blackpanther_lob_crd_01_4.jpg",
        year: 2018,
        genre: ["Action", "Adventure", "Sci-Fi"],
        ratings: 7.3,
        playback: 135,
        pgRating: "PG-13"),
    //24
    Movies(
        title: "Captain America: Civil War",
        movieUrl:
            "https://cdn.marvel.com/content/1x/captainamericacivilwar_lob_crd_01_9.jpg",
        year: 2016,
        genre: ["Action", "Adventure"],
        ratings: 7.8,
        playback: 148,
        pgRating: "PG-13"),
    //25
    Movies(
        title: "Doctor Strange",
        movieUrl:
            "https://cdn.marvel.com/content/1x/doctorstrange_lob_crd_01_6.jpg",
        year: 2016,
        genre: ["Action", "Adventure"],
        ratings: 7.5,
        playback: 115,
        pgRating: "PG-13"),
    //26
    Movies(
        title: "Spider-Man: Far From Home",
        movieUrl:
            "https://cdn.marvel.com/content/1x/spider-manfarfromhome_lob_crd_04_3.jpg",
        year: 2019,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 7.4,
        playback: 129,
        pgRating: "PG-13"),

    //27
    Movies(
        title: "The Incredible Hulk",
        movieUrl:
            "https://cdn.marvel.com/content/1x/theincrediblehulk_lob_crd_01_2.jpg",
        year: 2008,
        genre: ["Action", "Sci-Fi"],
        ratings: 6.6,
        playback: 112,
        pgRating: "PG-13"),
    //28
    Movies(
        title: "Captain Marvel",
        movieUrl:
            "https://cdn.marvel.com/content/1x/captainmarvel_lob_crd_06.jpg",
        year: 2019,
        genre: ["Action", "Sci-Fi"],
        ratings: 6.8,
        playback: 124,
        pgRating: "PG-13"),
    //29
    Movies(
        title: "Black Widow",
        movieUrl: "https://cdn.marvel.com/content/1x/blackwidow_lob_crd_06.jpg",
        year: 2021,
        genre: ["Action", "Sci-Fi"],
        ratings: 6.7,
        playback: 133,
        pgRating: "PG-13"),
    //30
    Movies(
        title: "Shang-Chi and The Legend of The Ten Rings",
        movieUrl: "https://cdn.marvel.com/content/1x/shangchi_lob_crd_07.jpg",
        year: 2021,
        genre: ["Action", "Adventure"],
        ratings: 7.4,
        playback: 132,
        pgRating: "PG-13"),
    //31
    Movies(
        title: "Eternals",
        movieUrl: "https://cdn.marvel.com/content/1x/eternals_lob_crd_06.jpg",
        year: 2021,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 6.3,
        playback: 157,
        pgRating: "PG-13"),
    //32
    Movies(
        title: "The Marvels",
        movieUrl: "https://cdn.marvel.com/content/1x/themarvels_lob_crd_03.jpg",
        year: 2023,
        genre: ["Action", "Adventure", "Fantasy"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //33
    Movies(
        title: "Captain America: Brave New World",
        movieUrl:
            "https://cdn.marvel.com/content/1x/captainamericabravenewworld_lob_crd_01.jpg",
        year: 2024,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //34
    Movies(
        title: "Thunderbolts",
        movieUrl:
            "https://cdn.marvel.com/content/1x/thunderbolts_lob_crd_01.jpg",
        year: 2024,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //35
    Movies(
        title: "Blade",
        movieUrl: "https://cdn.marvel.com/content/1x/blade_lob_crd_01.jpg",
        year: 2024,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //36
    Movies(
        title: "Deadpool 3",
        movieUrl: "https://cdn.marvel.com/content/1x/deadpool3_lob_crd_01.jpg",
        year: 2024,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "R"), //37
    Movies(
        title: "Fantastic Four",
        movieUrl:
            "https://cdn.marvel.com/content/1x/fantasticfour_lob_crd_01.jpg",
        year: 2025,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //38
    Movies(
        title: "Avengers: The Kang Dynasty",
        movieUrl:
            "https://cdn.marvel.com/content/1x/avengersthekangdynasty_lob_crd_01.jpg",
        year: 2025,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //39
    Movies(
        title: "Avengers: Secret Wars",
        movieUrl:
            "https://cdn.marvel.com/content/1x/avengerssecretwars_lob_crd_01.jpg",
        year: 2026,
        genre: ["Action", "Adventure"],
        ratings: 00,
        playback: 000,
        pgRating: "PG-13"), //40
  ];

  getPlayBackTime() {
    return '${playback ~/ 60}h ${playback % 60}m';
  }
}
