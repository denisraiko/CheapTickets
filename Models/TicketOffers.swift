//
//  TicketOffers.swift
//  CheapTickets
//
//  Created by Denis Raiko on 2.07.24.
//

import Foundation

struct TicketOffers: Identifiable, Codable {
    let id: Int
    let title: String
    let price: Price
    var time = [String]()
    
    struct Price: Codable {
        let value: Int
    }
}
