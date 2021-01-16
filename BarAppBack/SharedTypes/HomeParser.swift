//
//  HomeParser.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/10/21.
//

import Foundation
import Combine

final class HomeParser: ObservableObject
{
    @Published var homeUser: User = loadHomeUser("mainuser.json")
}

var homeUser: User = loadHomeUser("mainuser.json")

func loadHomeUser<T: Decodable>(_ fileName: String) -> T
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

