//
//  FriendRow.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/7/21.
//

import SwiftUI

struct FriendRow: View {
    var user: User
    var body: some View {
        HStack
        {
            if user.status {
                Circle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
            }
            else {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
            }
            
            Text(user.name + " is at " + user.location.name)
                .foregroundColor(.black)


            
            Spacer()
            
            
            
        }
        
    }
}



struct FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        FriendRow(user: users[0])
        
    }
}
