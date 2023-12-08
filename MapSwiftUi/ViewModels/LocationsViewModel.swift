//
//  LocationsViewModel.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import Foundation
import MapKit
import SwiftUI


class LocationsViewModel : ObservableObject {
    
    @Published var locations : [LocationModel]
    @Published var mapLocation : LocationModel {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
    @Published var showLocationsList : Bool = false
    
    @Published var sheetLocation : LocationModel? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.mapLocation = locations.first!
        self.locations = locations
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location : LocationModel){
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: location.coordinates,span : mapSpan)
        }
    }
    
     func toggleLocationsList (){
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
            print("showLocationsList", showLocationsList)
        }
    }
    
    func showNextLocation(location: LocationModel) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed(){
        
        guard let currentIndex = locations.firstIndex (where: {$0 == mapLocation}) else {
            print("can't find location index")
            return
            
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            
    
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        showNextLocation(location: locations[nextIndex])
    }
}
