class Planet {
  final String id;
  final String name;
  final String title;
  final String distance;
  final String gravity;
  final String description;
  final String image;
  final String picture;

  const Planet({this.id, this.name, this.title, this.distance, this.gravity, this.description,
    this.image, this.picture});
}

List<Planet> planets = [
  const Planet(
      id: "1",
      name: "Mars",
      title: "The Red Planet",
      distance: "227.9m Km",
      gravity: "3.711 m/s ",
      description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet' because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
      image: "assets/images/mars.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg"
  ),
  const Planet(
      id: "2",
      name: "Neptune",
      title: "The Windiest",
      distance: "4.4b Km",
      gravity: "11.15 m/s ",
      description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune. Neptune orbits the Sun once every 164.8 years at an average distance of 30.1 astronomical units (4.50×109 km). It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident",
      image: "assets/images/neptune.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg"
  ),
  const Planet(
      id: "3",
      name: "Moon",
      title: "The Companion",
      distance: "150m Km",
      gravity: "1.62 m/s ",
      description: "The Moon is an astronomical body that orbits planet Earth, being Earth's only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). Following Jupiter's satellite Io, the Moon is second-densest satellite among those whose densities are known.",
      image: "assets/images/moon.png",
      picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg"
  ),
  const Planet(
      id: "4",
      name: "Earth",
      title: "Home",
      distance: "149.6m Km",
      gravity: "9.8 m/s ",
      description: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.",
      image: "assets/images/earth.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg"
  ),
  const Planet(
      id: "5",
      name: "Mercury",
      title: "The Swiftest",
      distance: "57.9m Km",
      gravity: "3.711 m/s ",
      description: "Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 88 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger to the gods.",
      image: "assets/images/mercury.png",
      picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"
  ),
  const Planet(
      id: "6",
      name: "Jupiter",
      title: "The Biggest",
      distance: "778.5m Km",
      gravity: "24.79 m/s ",
      description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter has been known to astronomers since antiquity. The Romans named it after their god Jupiter.",
      image: "assets/images/jupiter.png",
      picture: "https://pbs.twimg.com/media/BsbNTDLIAAAZxYp.jpg"
  ),
  const Planet(
      id: "7",
      name: "Saturn",
      title: "Ringed Jewel",
      distance: "1.4b Km",
      gravity: "10.44 m/s ",
      description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth. It has only one-eighth the average density of Earth, but with its larger volume Saturn is over 95 times more massive. It is named after the Roman god Saturnus and was known to the Greeks as Cronus.",
      image: "assets/images/saturn.png",
      picture: "https://cdn-images-1.medium.com/max/1600/1*0w3THvbXm19AEGWwC-wNDA.jpeg"
  ),
  const Planet(
      id: "8",
      name: "Uranus",
      title: "The Sideways Planet",
      distance: "2.87b Km",
      gravity: "8.87 m/s ",
      description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. It has two sets of dark-colored rings that includes eleven inner rings and two outer rings. Uranus' unique sideways rotation makes for weird seasons. The planet's north pole experiences 21 years of nighttime in winter, 21 years of daytime in summer and 42 years of day and night in the spring and fall.",
      image: "assets/images/uranus.png",
      picture: "http://blogs.discovermagazine.com/d-brief/files/2016/03/neptune1.jpg"
  ),
  const Planet(
      id: "9",
      name: "Venus",
      title: "Planetary Hot Spot",
      distance: "108.2m Km",
      gravity: "8.87 m/s ",
      description: "Venus is the second planet from the Sun, orbiting it every 224.7 Earth days. It has the longest rotation period of any planet in the Solar System and rotates in the opposite direction to most other planets. It does not have any natural satellites. It is named after the Roman goddess of love and beauty. Venus’ extreme temperatures and acidic clouds make it an unlikely place for life as we know it.",
      image: "assets/images/venus.png",
      picture: "http://www.astronoo.com/images/planetes/venus/venus-magellan.jpg"
  ),
];