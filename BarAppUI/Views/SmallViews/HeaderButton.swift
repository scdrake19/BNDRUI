//
//  HeaderButton.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import Foundation
import SwiftUI

struct HeaderButton  {
    var num: Int
    var icon: String
    var destination: AnyView
    
    init(number: Int) {
        self.num = number
        self.icon = valSetStr(num: number)
        self.destination = valSetView(num: number)
    }
}

// sets value of string for picture
func valSetStr(num: Int) -> String {
    if (num == 1)
    {
            return "gearshape.fill"
    }
    else if (num == 2)
    {
        return "person.fill.badge.plus"
    }
    else if (num == 3)
    {
        return "paperplane.fill"
    }
    else if (num == 4)
    {
        return "arrow.backward"
    }
    else
    {
        return ""
        
    }
    
}

// sets value of view
func valSetView(num: Int) ->  AnyView{
    if (num == 1)
    {
            return AnyView (OptionsView())
    }
    else if (num == 2)
    {
        return AnyView (FriendsView())
    }
    else if (num == 3)
    {
        return AnyView (MessagesView())
    }
   // else if (num == 4)
  //  {
  //      return
  // }
    else
    {
        return AnyView (Testview())
        
    }
    
}
