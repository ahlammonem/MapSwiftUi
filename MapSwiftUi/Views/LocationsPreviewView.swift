//
//  LocationsPreviewView.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI

struct LocationsPreviewView: View {
    
    let location : LocationModel
    @EnvironmentObject private var viewModel : LocationsViewModel
    
    var body: some View {
        
        VStack(spacing: 16.0) {
      
            HStack(alignment: .bottom , spacing: 0) {
               
            
                VStack (spacing: 8){
            
                    learnMoreButton
                    nextButton
                }
                VStack(alignment: .trailing) {
                    imageSection
                    titleSection
                }
       
            }
          .padding(20)
          .background(
           RoundedRectangle(cornerRadius: 12)
            .fill(.ultraThinMaterial)
            .offset(y:65)
          )
          .clipped()
          //.padding()
          .cornerRadius(12)
         // .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        }
       
    }
}

struct LocationsPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            LocationsPreviewView(location: LocationsDataService.locations.first!)
                .padding()
                .environmentObject(LocationsViewModel())
        }
      
    }
}

extension LocationsPreviewView {
    private var imageSection : some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(12)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(12)
    }
    
    
    private var titleSection : some View {
        
        VStack(alignment: .trailing, spacing: 4.0) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.headline)
            
        }
        .frame(maxWidth: .infinity , alignment: .trailing)
    }
    
    private var learnMoreButton : some View {
        Button {
            viewModel.sheetLocation = location
        } label: {
            Text("اعرف المزيد")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton : some View {
        Button {
           viewModel.nextButtonPressed()
        } label: {
            Text("التالي")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.bordered)
    }
}
