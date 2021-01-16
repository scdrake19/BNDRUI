//
//  ContentView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI



struct ContentView: View {

    var topRight = HeaderButton(number: 1)
    var topLeft = HeaderButton(number: 2)
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AnyView(BarTabView()))
                {
                    Text("Going Out?")
                      
                }
                .offset(y: -100)
                Text("Planning Ahead?")
                 .offset(y: 50)
                
                
            }
            
            .navigationBarItems(
                trailing: NavigationLink(destination: topRight.destination)
            {
                Image(systemName: topRight.icon)
                    .resizable()
                    .scaledToFit()
                
            }
            )
           .navigationBarTitle("BNDR", displayMode: .inline)
                    
                    
                

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserParser())
            .environmentObject(HomeParser())
            .environmentObject(Parser())
    }
}
