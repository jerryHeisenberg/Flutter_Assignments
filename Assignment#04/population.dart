//Create a map that associates the names of countries with their population and area. Find the top 5 largest countries by population density (population / area).

void main() {
  Map<String, List<double>> population = {
    "India": [1366417754, 3287263],
    "Pakistan": [216565318, 796095],
    "China": [1397715000, 9596960],
    "USA": [328239523, 9833517],
    "Russia": [144373535, 17098242],
    "Singapore": [5703569, 719]
  };

  List<MapEntry<String, double>> densityList = [];

  for (String country in population.keys) {
    double density = population[country]![0] / population[country]![1];
    densityList.add(MapEntry(country, density));
  }
  densityList.sort((a, b) => b.value.compareTo(a.value));
  print("Top 5 Largest countries by population density");
  for (int i = 0; i < 5; i++) {
    String country = densityList[i].key;
    double density = densityList[i].value;
    print("=====================");
    print("Country: $country ");
    print("Density: ${density.toStringAsFixed(3)}/Km²");
  }
}
