//
//  BarTabView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI
import MapKit

struct BarTabView: View {
    
    @State private var selection: Tab = .map
    enum Tab{
        case map
        case martini
    }
    var body: some View {
        
        TabView(selection: $selection) {
            
            MapHelperView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .tabItem {

                    Label("", systemImage: "map.fill")
                        
                    
                }
                .tag(Tab.map)
            // replace with martini if possible
            BarColumn()
                .tabItem {
                    Label("", systemImage: "star.fill")
                }
                .tag(Tab.martini)
        }
        
        .navigationBarItems(leading: NavigationLink(destination: FriendsView()) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                .scaledToFit()
        },
        trailing: NavigationLink(destination: MessagesView())
        {
            Image(systemName: "paperplane.fill")
                .resizable()
                .scaledToFit()
            
        }
        )
    }
}

struct BarTabView_Previews: PreviewProvider {
    static var previews: some View {
        BarTabView()
            .environmentObject(Parser())
    }
}
