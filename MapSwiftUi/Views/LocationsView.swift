//
//  LocationsView.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
 //   @StateObject private var viewModel = LocationsViewModel()

    @EnvironmentObject private var viewModel : LocationsViewModel
      var maxWidthForIpad  : CGFloat = 700
    @State var buttonIsClicked = false

    var body: some View {
        
        
        ZStack {
             mapLayer
                .ignoresSafeArea()

            VStack (spacing: 0.0) {
                header
                    .frame(maxWidth:maxWidthForIpad )
                    .padding()
                Spacer()
                locationsPreviewStack
                
               
            }
            
        }
        .sheet(item: $viewModel.sheetLocation) { location in
            LocationDetailsView(location: location)
        }
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            // Handle the return from an external link here...
            print("welcome back")
            
            
        }
    }
    
       
    
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    private var header: some View {
     
        VStack {
            Button {
              
                viewModel.toggleLocationsList()
                 print("button is clicked")
            } label: {
                
                Text(viewModel.mapLocation.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .frame(height: 56)
                    .frame(maxWidth: maxWidthForIpad)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: viewModel.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: viewModel.showLocationsList ? 180 :0))
                    }
    }
                if (viewModel.showLocationsList){
                    LocationsListView()
                }
        }
        
        .background(.thickMaterial)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer : some View {
        
        Map(coordinateRegion: $viewModel.mapRegion,    annotationItems: viewModel.locations, annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                
                LocationMapAnnotaionView()
                    .scaleEffect(viewModel.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                
                    .onTapGesture {
                        viewModel.showNextLocation(location: location)
                    }
            
            }
       
        })
    
    }
    
    private var locationsPreviewStack : some View {
        ZStack {
            
            ForEach(viewModel.locations) { location in
                
                if viewModel.mapLocation == location {
                    LocationsPreviewView(location: location)
                        .shadow(color : Color.black.opacity(0.3),radius: 20)
                        .frame(maxWidth: maxWidthForIpad)
                        .padding()
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
            }
    }
}
