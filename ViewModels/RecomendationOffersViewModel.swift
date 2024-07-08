//
//  MainViewModel.swift
//  CheapTickets
//
//  Created by Denis Raiko on 20.06.24.
//

import Combine
import SwiftUI

//class MainViewModel: ObservableObject {
//    @Published var fromLocation: String = UserDefaults.standard.string(forKey: "fromLocation") ?? "Москва"
//    @Published var toLocation: String = UserDefaults.standard.string(forKey: "toLocation") ?? "Турция"
//    @Published var offers: [Offer] = []
//
//    private var cancellables = Set<AnyCancellable>()
//
//    init() {
//        loadOffers()
//    }
//
//    func saveFromLocation() {
//        UserDefaults.standard.set(self.fromLocation, forKey: "fromLocation")
//    }
//
//    func loadOffers() {
//        guard let url = URL(string: "https://run.mocky.io/v3/ad9a46ba-276c-4a81-88a6-c068e51cce3a") else {
//            print("Invalid URL")
//            return
//        }
//
//        URLSession.shared.dataTaskPublisher(for: url)
//            .map { $0.data }
//            .decode(type: OffersResponse.self, decoder: JSONDecoder())
//            .receive(on: DispatchQueue.main)
//            .replaceError(with: OffersResponse(offers: []))
//            .sink { [weak self] response in
//                self?.offers = response.offers
//            }
//            .store(in: &cancellables)
//    }
//}

//private var cancellables = Set<AnyCancellable>()
//
//init() {
//    loadOffers()
//}
//
//func saveFromLocation() {
//    UserDefaults.standard.set(self.fromLocation, forKey: "fromLocation")
//}
//
//func loadOffers() {
//    // Данные уже загружены из встроенного массива offers
//}
//}

//struct OffersResponse: Codable {
//    let offers: [Offer]
//}


class RecomendationOffersViewModel: ObservableObject {
    @Published var fromLocation: String = UserDefaults.standard.string(forKey: "fromLocation") ?? "Москва"
    @Published var toLocation: String = UserDefaults.standard.string(forKey: "toLocation") ?? "Турция"
    @Published var offers: [Offer] = [
        Offer(id: 1, title: "Die Antwoord", town: "Будапешт", price: Offer.Price(value: 22264)),
        Offer(id: 2, title: "Socrat&Lera", town: "Санкт-Петербург", price: Offer.Price(value: 2390)),
        Offer(id: 3, title: "Лампабикт", town: "Москва", price: Offer.Price(value: 2390))
    ]

}



