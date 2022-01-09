//
//  ChatModel.swift
//  Chat Bout
//
//  Created by SEAN BLAKE on 1/9/22.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    
    static let sampleChat = [
        Chat(person: Person(name: "Sean", image: "image1"), messages: [
            Message("Hey Daddy", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Hey RiRi, how are you", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am Good, what are you up to", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am doing good, Here thinking about you.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Cool, what are you thinking about", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("When I am coming to Japan to see you guys.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("I was thinking of a morning flight", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("ok, I was thinking the same thing too.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Cool, 🥰", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1))
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Auriah", image: "image4"), messages: [
            Message("Hey RiRi", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Hi Mika, what you up to sis", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Packing for the trip", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("You talk to daddy yet", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Yes", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Told him a want a morning flight", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Ok cool, what stuff are you taking with you", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Laptop, iPad and phone, what about you", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("samething", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3))
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Mika", image: "image3"), messages: [
            Message("Hey Daddy, Hi RiRi", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("How are you guys doing", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Toi Khoe, Em khoe", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Hi Daddy, hi Mika", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("ok ladies, I booked the tickets, so check your emails, I tried to get both your flights to sync up with each other.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("plus we a go a Jamaica to.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Daddy, is this for work or chill 😅", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("yea, you know already, him going to say both. Well one good thing, at least the house is by the beach.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("yea, unu can stop the bawling now 😂 you know we going to have fun out there, pack light, I am going to taking unu shopping too", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3))
        ], hasUnreadMessage: true)
    ]
}
