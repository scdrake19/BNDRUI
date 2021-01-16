//
//  BarRow.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct BarRow: View {
    var bar: Bar
    var body: some View {
        HStack
        {
            bar.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack {
                Text(bar.name)
                    .foregroundColor(.black)
                Text("Population: " + String(bar.population))
                    .foregroundColor(.black)
            }

            VStack {
                Text("Friends: " + String(bar.fpop))
                    .foregroundColor(.black)
                Text("Distance: " + String(bar.distance))
                    .foregroundColor(.black)
                
            }
            
            Spacer()
            
            
            
        }
        
    }
}

struct BarRow_Previews: PreviewProvider {
    static var previews: some View {
        BarRow(bar: bars[0])
    }
}
