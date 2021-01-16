//
//  Message.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/10/21.
//

import Foundation


// message struct to hold a singular message, ID is used to help identify user who message is credited to, node style
public struct Message: Hashable, Codable, Identifiable {
    var contents: String
    public var id: Int
    var index: Int
    
    init(contents: String, id: Int, index: Int)
    {
        self.contents = contents
        self.id = id
        self.index = index
    }
}
