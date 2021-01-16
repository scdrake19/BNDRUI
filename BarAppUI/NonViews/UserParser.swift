//
//  UserParser.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/7/21.
//

import Foundation

//
//  Parser.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//


import Foundation
import Combine

final class UserParser: ObservableObject
{
    @Published var users: [User] = loadUser("userdata.json")
    var numberOn: Int {
        var ret: Int = 0
        for use in users
        {
            
            if use.status
            {
                ret += 1
            }
        }
        return ret
    }
}

var users: [User] = loadUser("userdata.json")
var numberOn: Int {
    var ret: Int = 0
    for use in users
    {
        
        if use.status
        {
            ret += 1
        }
    }
    return ret
}

func loadUser<T: Decodable>(_ fileName: String) -> T
{
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else
    {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do
    {
        data = try Data(contentsOf: file)
    }
    catch
    {
        fatalError("Couldn't find \(fileName) in main bundle.:\n\(error)")
    }
    
    do
    {
        let decoder = JSONDecoder()
        
        return try decoder.decode(T.self, from: data)
    }
    catch
    {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}
