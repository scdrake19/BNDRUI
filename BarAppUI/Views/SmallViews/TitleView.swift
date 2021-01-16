//
//  TitleView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI


struct TitleView: View {
    var topRight: HeaderButton
    var topLeft: HeaderButton
    init(left: Int, right: Int)
    {
        topRight = HeaderButton(number: right)
        topLeft = HeaderButton(number: left)
    }
    
    var body: some View {

            NavigationView {
                VStack{
                    HStack
                    {
                        NavigationLink(destination: topLeft.destination)
                        {
                            Image(systemName: topLeft.icon)
                            .resizable()
                            .scaledToFit()
                        }
                        .offset(x: -65)
                        Text("Bar App")
                            .font(.title2)
                        NavigationLink(destination: topRight.destination)
                        {
                            Image(systemName: topRight.icon)
                            .resizable()
                            .scaledToFit()
                        }
                        .offset(x: 65)
                    }
                    .frame(width: 300, height: 30)
                    Divider()
                        
                }
                    
            }
            
        }
    
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(left: 1, right: 2)
    }
}
    // 1 for options, 2 for friends, 3 for dm, 4 for back, else blank



