//
//  MessageInfo.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/10/21.
//

import Foundation

let empty: Message = Message(contents: "", id: -1, index: -1)

public class MessageInfo: Hashable, Codable, Identifiable {
    var numMessages: Int = 0
    var size: Int = 256

    var mess: [Message]
    
    var id1: Int
    var id2: Int
   
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(id1)
        hasher.combine(id2)
    }
    
    // base initializer
    init(id1: Int, id2: Int)
    {
        self.id1 = id1
        self.id2 = id2
        mess  = Array(repeating: empty, count: size)
    }
    
    //returns true if successfully adds message
    public func addMessage(mess: String, idM: Int) -> Bool
    {
        var newJaunt: [Message]
        if numMessages == size {
            newJaunt = Array(repeating: empty,count: size * 2)
            var count: Int = 0
            while count < numMessages
            {
                newJaunt[count] = self.mess[count]
                count += 1
            }
            self.mess = newJaunt
            size *= 2
        }
        self.mess[numMessages] = Message(contents: mess, id: idM, index: numMessages)
        numMessages += 1
        return true
        
    }
    
    // if message num is valid, deletes message at that point and returns false, else return
    public func deleteMessage(num: Int) -> Bool
    {
        
        mess[num] = empty
        return true
    }
    
    // checks if the two ids match the two ids in this, remember that the order of the cid shouldn't matter only the numbers, this way they can be accessed by either user
    public func compare(cid1: Int, cid2: Int) -> Bool
    {
        if (cid1 == id1 && cid2 == id2 || cid1 == id2 && cid2 == id1)
        {
            return true
        }
        return false
    }
    
    public static func ==(lhs: MessageInfo, rhs: MessageInfo) -> Bool
    {
        if lhs.id1 == rhs.id1 && lhs.id2 == rhs.id2 || lhs.id2 == rhs.id1 && lhs.id1 == rhs.id2
        {
            return true
        }
        return false
        
    }
    
    //returns copy of array of messages
    public func getMessages() -> [Message]
    {
        return mess
    }
    
    // json initializer
    init?(json: [String: Any])
    {
        guard let id1 = json["id1"] as? Int,
            let id2 = json["id2"] as? Int
        else
        {
            return nil
        }
        self.id1 = id1
        self.id2 = id2
        mess  = Array(repeating: empty, count: size)
    }
    
    
    
}


