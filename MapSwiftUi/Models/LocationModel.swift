//
//  LocationModel.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import Foundation
import MapKit



struct LocationModel : Identifiable , Equatable  {
    

 //   let id = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates :CLLocationCoordinate2D
    let description : String
    let imageNames : [String]
    let link : String
    
    var id : String {
        name + cityName
    }
    
    static func == (lhs: LocationModel, rhs: LocationModel) -> Bool {
        return  lhs.id == rhs.id
    }
    
}

