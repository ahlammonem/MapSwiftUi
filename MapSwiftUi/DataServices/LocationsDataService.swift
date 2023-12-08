//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

//This file to set static data for the locations list
class LocationsDataService {
    
    static let locations: [LocationModel] = [
        LocationModel(
            name: "القدس",
            cityName: "فلسطين",
            coordinates: CLLocationCoordinate2D(latitude: 31.767691326251033,  longitude: 35.21106843621162),
            description: "المسجد الأقصى هو اسم لسور يضمّ في داخله مسجد قبة الصخرة ذا القبّة الذهبيّةالقُدْس، هي أكبر مدن فلسطين التاريخية المحتلّة مساحةً وسكانًا وأكثرها أهمية دينيًا واقتصاديًا. تُعرف بأسماء أخرى في اللغة العربية مثل: بيت المقدس، القدس الشريف، أولى القبلتين",
            imageNames: [
                "quads-1",
                "quads-2",
                "quads-3",
                "quads-4"
            ],
            link: "https://ar.wikipedia.org/wiki/%D8%A7%D9%84%D9%82%D8%AF%D8%B3"),
        
        LocationModel(
            name: "غزة",
            cityName: "فلسطين",
            coordinates: CLLocationCoordinate2D(latitude: 31.512091882176964, longitude: 34.469405663686324),
            description: "أكبر مدن جنوب فلسطين وأهمها منذ آلاف السنين حتى اليوم، وكانت على الدوام مركزاً هاماً على طرق الانتقال والتجارة بين فلسطين ومصر، وبين البحر المتوسط والبحر الأحمر والجزيرة العربية. وهي كذلك المركز الثقافي والإداري لمنطقة جنوب فلسطين. وتشتهر غزة بزراعة الخضروات والحمضيات والزهور، وفيها وُلد الإمام الشافعي، وفيها قبر هاشم بن عبد مناف ولذلك سميت بغزة هاشم.",
            imageNames: [
                "gaza-1",
                "gaza-2",
                "gaza-3"
            ],
            link: "https://ar.wikipedia.org/wiki/%D8%BA%D8%B2%D8%A9"),
        
        LocationModel(
            name: "بئر السبع",
            cityName: "فلسطين",
            coordinates: CLLocationCoordinate2D(latitude: 31.25212300498351, longitude: 34.78556549723661),
            description: "تقع في جنوب فلسطين وتعد مفتاح النقب ومركزه الرئيس، وظلت آلافًا من السنين محطة هامة على الطرق بين فلسطين ومصر من جهة، وفلسطين والجزيرة العربية من جهة أخرى. وبحكم موقعها المتوسط في شمال النقب؛ أحاطتها عشرات القرى البدوية؛ فشكلت مركزاً ناشطاً لتجارة المنتجات الحيوانية والحبوب والأعلاف.",
            imageNames: [
                "beersheba-1",
                "beersheba-2",
                "beersheba-3"
            ],
            link:"https://ar.wikipedia.org/wiki/%D8%A8%D8%A6%D8%B1_%D8%A7%D9%84%D8%B3%D8%A8%D8%B9"),
        
        LocationModel(
            name : "حيفا",
            cityName: "فلسطين",
            coordinates: CLLocationCoordinate2D(latitude: 32.79461973637649, longitude: 34.988992144835244),
            description: "يُطلق عليها عروس الكرمل، وهي تقع على البحر المتوسط وتعد أهم موانئ فلسطين، وتقع على الطرف الجنوبي لخليج عكا – حيفا. وقد بني قسم كبير منها على جبل الكرمل، وفيها منطقة صناعية كبيرة.",
            imageNames: [
                "hifa-1",
                "hifa-2",
                "hifa-3",
                "hifa-4"
            ],
            link:"https://ar.wikipedia.org/wiki/%D8%AD%D9%8A%D9%81%D8%A7")
        
    ]
     
 }

//        LocationModel(
//            name: "Pantheon",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
//            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
//            imageNames: [
//                "rome-pantheon-1",
//                "rome-pantheon-2",
//                "rome-pantheon-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
//        LocationModel(
//            name: "Colosseum",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
//            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
//            imageNames: [
//                "rome-colosseum-1",
//                "rome-colosseum-2",
//                "rome-colosseum-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Colosseum"),
//        LocationModel(
//            name: "Pantheon",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
//            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
//            imageNames: [
//                "rome-pantheon-1",
//                "rome-pantheon-2",
//                "rome-pantheon-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
//        LocationModel(
//            name: "Trevi Fountain",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
//            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
//            imageNames: [
//                "rome-trevifountain-1",
//                "rome-trevifountain-2",
//                "rome-trevifountain-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
//        LocationModel(
//            name: "Eiffel Tower",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
//            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
//            imageNames: [
//                "paris-eiffeltower-1",
//                "paris-eiffeltower-2",
//            ],
//            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
//        LocationModel(
//            name: "Louvre Museum",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
//            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
//            imageNames: [
//                "paris-louvre-1",
//                "paris-louvre-2",
//                "paris-louvre-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Louvre"),
