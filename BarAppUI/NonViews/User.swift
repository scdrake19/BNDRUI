//
//  User.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/7/21.
//

import Foundation

struct User: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var status: Bool
    var location: Bar
    
    
    var dms: [MessageInfo]
    
    mutating func newMessageInfo(i1: Int, i2: Int) -> MessageInfo {
        let newM: MessageInfo = MessageInfo(id1: i1, id2: i2)
        dms.append(newM)
        return newM
    }
    
}
