//
//  LocationDetailsView.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    
    let location : LocationModel
    @EnvironmentObject private var viewModel : LocationsViewModel

    
    var body: some View {
        
        ScrollView {
            VStack {
              imagesSection
                    .shadow(color : Color.black.opacity(0.3) ,radius: 10 , y: 10)
                
                VStack(alignment: .trailing, spacing: 16) {
                 titleSection
                 Divider()
                descriptionSection
                Divider()
                mapLayer
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
               
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            backButton
        }
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationDetailsView {
    
    private var imagesSection : some View {
        TabView {
            ForEach(location.imageNames , id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    
    
    private var titleSection : some View {
        VStack(alignment: .trailing, spacing: 8){
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
            
        }
    }
    
    private var descriptionSection : some View {
        VStack(alignment: .trailing, spacing: 16){
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.trailing)
            
            if let loactionUrl = URL(string: location.link) {
                Link("اقرا المزيد على ويكيبيديا", destination: loactionUrl)
                    .tint(.blue)
            }
        }
    }
    
    
    private var mapLayer : some View {
        
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates, span: viewModel.mapSpan)),    annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                
                LocationMapAnnotaionView()
        
                .shadow(radius: 10)
                
            }
       
        }
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode:.fit)
        .cornerRadius(30)
    
    }
    
    private var backButton : some View {
        Button {
            viewModel.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .foregroundColor(.primary)
                .padding(16)
                .background(.thickMaterial)
                .font(.headline)
                .clipShape(Circle())
                .padding()
                
        }

    }
    
    
}
