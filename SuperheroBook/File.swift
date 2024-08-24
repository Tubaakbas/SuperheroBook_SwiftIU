//
//  File.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 20.08.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superhero : Identifiable {
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.lat, longitude: coordinate.long)
    }

}

//Kordinatların tutulması için iki değişken tutulabilir ya da direkt bi struct belirlenebilir.

struct Coordinate {
    var lat : Double
    var long : Double
}

let batman = Superhero(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gotham", job: "İş Adamı", coordinate: Coordinate(lat: 41.8713679, long: -87.7669902))

let superman = Superhero(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Gazeteci", coordinate: Coordinate(lat: 39.0865207, long: -94.7089592))

let spiderman = Superhero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Fotoğrafçı", coordinate: Coordinate(lat: 40.7160119, long: -74.0524729))


let superheroArray = [batman, superman, spiderman]
