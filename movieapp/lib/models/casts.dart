class Cast {
  String casturl;
  String role;
  String name;

  Cast({required this.casturl, required this.role, required this.name});

  static List<dynamic> castList = [
    Cast(
        casturl:
            "https://cdn.marvel.com/content/2x/online_char_avengehonor_series_ironman_v1_lg_0.jpg",
        role: "Tony Stark/ Iron Man",
        name: "Robert Downey Jr."),
    Cast(
        casturl:
            "https://cdn.marvel.com/content/1x/003cap_ons_crd_03.jpg",
        role: "Steve Jobs/ Captain America",
        name: "Chris Evans"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/004tho_ons_crd_04.jpg",
        role: "Thor",
        name: "Chris Hemsworth"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/042wmr_ons_crd_03.jpg",
        role: "Jammes Rhodes",
        name: "Don Cheadle"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/005smp_ons_crd_02.jpg",
        role: "Spider-Man",
        name: "Tom Holland"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/011blw_ons_crd_04.jpg",
        role: "Black Widow",
        name: "Scarlett Johanson"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/021slq_ons_crd_03.jpg",
        role: "Star Lord",
        name: "Chris Pratt"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/006hbb_ons_crd_03.jpg",
        role: "Hulk/Bruce Banner",
        name: "Mark Ruffalo"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/009drs_ons_crd_03.jpg",
        role: "Doctor Strange",
        name: "Benedict Cumberbatch"),
    Cast(
        casturl: "https://cdn.marvel.com/content/1x/007blp_ons_crd_02.jpg",
        role: "Black Panther/ T'Challa",
        name: "Chadwick Boseman")
  ];
}
