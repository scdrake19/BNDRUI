//
//  UserView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/7/21.
//

import SwiftUI

struct UserView: View {
    @EnvironmentObject var hPar: HomeParser
    
    var fiend: User
    var currUser: User {
        hPar.homeUser
    }
    var mI: MessageInfo  {
        for mis in currUser.dms {
        if mis.compare(cid1: currUser.id, cid2: fiend.id)
        {
            return mis
        }
            
        }
        return hPar.homeUser.newMessageInfo(i1: currUser.id, i2: fiend.id)
    }
    
    @State private var add: String = ""
    var body: some View {
        VStack {
            ForEach(mI.mess)
            {
                mes in
                if mes.id == currUser.id && mes != empty
                {
                    Text(mes.contents)
                        .offset(x: 100)
                }
                else if mes != empty
                {
                    Text(mes.contents)
                        .offset(x: -100)
                }
                
            }
            TextField("", text: $add, onCommit: { newMessage(newM: add) })
            
            
            
            
        }
    }
}


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(fiend: users[0])
            .environmentObject(HomeParser())
    }
}

func newMessage(newM: String) -> some View{
    Text(newM)
        
}
