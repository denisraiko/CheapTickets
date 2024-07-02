//
//  Offer.swift
//  CheapTickets
//
//  Created by Denis Raiko on 20.06.24.
//

import Foundation

struct Offer: Identifiable, Codable {
    let id: Int
    let title: String
    let town: String
    let price: Price

    struct Price: Codable {
        let value: Int
    }
}

