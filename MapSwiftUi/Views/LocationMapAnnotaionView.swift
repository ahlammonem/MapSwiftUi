//
//  LocationMapAnnotaionView.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI

struct LocationMapAnnotaionView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 30, height: 30)
                 .font(.headline)
                 .foregroundColor(.white)
                 .padding(6)
                 .background(Color("AccentColor"))
                 .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 10,height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y:-3)
                .padding(.bottom , 40)
        }
    
           // .cornerRadius(12)
    }
}

struct LocationMapAnnotaionView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotaionView()
    }
}
