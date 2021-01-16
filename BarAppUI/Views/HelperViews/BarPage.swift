//
//  BarPage.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct BarPage: View {
    //@EnvironmentObject var parser: Parser
    var bar: Bar
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                bar.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                VStack {
                    Text(bar.name)
                        .font(.title)
                    Text(String(bar.distance) + " Units Away")
                        .font(.title)
                }
                
                
            }
            
            Text("Estimated wait time:\txx min\nFriends:  xx \nDrink deals: none today :(")
                .multilineTextAlignment(.leading)
            VStack{
                HStack{
                    Text("Whats poppin?\t")
                    Text("Replace with button")
                }
                
                
            }
            
            
            
        }
    }
}

struct BarPage_Previews: PreviewProvider {
    static var previews: some View {
        BarPage(bar: bars[3])
          //  .environmentObject(Parser())
    }
}
