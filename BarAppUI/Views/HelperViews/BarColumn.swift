//
//  BarColumn.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct BarColumn: View {
    @EnvironmentObject var parsed: Parser
    
    var body: some View {
        VStack{
                List
                {
                    ForEach(parsed.bars)
                    {
                        bars in
                        NavigationLink(destination: BarPage(bar: bars))
                        {
                            BarRow(bar: bars)
                                
                        }
                    }
                }

        }
        .navigationBarTitle("Bar App")
        .navigationBarItems(
        trailing: NavigationLink(destination: MessagesView())
        {
            Image(systemName: "paperplane.fill")
                .resizable()
                .scaledToFit()
            
        }
        )
    }
}

struct BarColumn_Previews: PreviewProvider {
    static var previews: some View {
        BarColumn()
            .environmentObject(Parser())
    }
}
