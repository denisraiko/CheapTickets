//
//  PopularDestionationsViewModels.swift
//  CheapTickets
//
//  Created by Denis Raiko on 2.07.24.
//

import Foundation
import Combine


class PopularDestinationsViewModels: ObservableObject {
    @Published var ticketOffers: [TicketOffers] = [
        TicketOffers(id: 1, title: "Уральские авиалинии", price: TicketOffers.Price(value: 2390), time: ["7:00", "9:10", "10:00", "11:00", "12:00", "13:00"]),
        TicketOffers(id: 2, title: "Победа", price: TicketOffers.Price(value: 2390), time: ["8:05", "9:55", "16:35", "18:55"]),
        TicketOffers(id: 3, title: "NordStar", price: TicketOffers.Price(value: 2390), time: ["13:10"])
    ]

}
