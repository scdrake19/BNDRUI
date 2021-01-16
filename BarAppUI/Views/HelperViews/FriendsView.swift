//
//  FriendsView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct FriendsView: View {
    @EnvironmentObject var parse: UserParser
    
    
    var body: some View {

        VStack(alignment: .leading){

            Text("Friends: \(parse.numberOn) online")
                .font(.title)
                
                List
                {
                    ForEach(parse.users)
                    {
                        use in
                        NavigationLink(destination: UserView(fiend: use))
                        {
                            FriendRow(user: use)
                        }
                        
                        
                    }
                }

        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
            .environmentObject(UserParser())
    }
}

func friendsOn(list: UserParser) -> Int
{
    var ret: Int = 0
    for _ in list.users {
        ret += 1
    }
    return ret
}
