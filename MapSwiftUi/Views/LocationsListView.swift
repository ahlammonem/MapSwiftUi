//
//  LocationsListView.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var viewModel : LocationsViewModel
    var body: some View {
        List {
            ForEach(viewModel.locations) { location in
                Button {
                    viewModel.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .listRowBackground(Color.clear)
            
            }
           
        }
        .listStyle(PlainListStyle())
        .padding(.vertical , 4)
      //  .background(Color.clear)
      //  .listRowBackground(Color.clear)
      
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    
    private func listRowView(location: LocationModel)-> some View {
        HStack {
         
            VStack(alignment: .trailing) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(12)
            }
        }
    }
}
