//
//  PopularDestinations.swift
//  CheapTickets
//
//  Created by Denis Raiko on 2.07.24.
//

import SwiftUI

struct PopularDestinations: View {
    var body: some View {
        ZStack(alignment: .leading) {
            MainPopularDestinationsView()
            StacksPopularDestinationsView()
        }
        .padding(.horizontal, 16)
    }
}

struct MainPopularDestinationsView: View {
    var body: some View {
        Rectangle()
            .fill(Color(red: 29/255, green: 30/255, blue: 32/255))
            .frame(height: 288)
            .cornerRadius(16)
    }
}

struct StacksPopularDestinationsView: View {
    @ObservedObject var popularDestinationsViewModel = PopularDestinationsViewModels()
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Прямые рейсы")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.white)
            
            ForEach(popularDestinationsViewModel.ticketOffers) { offers in
                VStack {
                    HStack {
                        Image(offers.title)
                            .resizable()
                            .frame(width: 24, height: 24)
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text(offers.title)
                                    .font(.system(size: 14))
                                    .foregroundColor(.white)
                                    .italic()
                                Spacer()
                                Text("\(offers.price.value) ₽")
                                    .font(.system(size: 14))
                                    .foregroundColor(.blue)
                                    .italic()
                            }
                            Text(offers.time.joined(separator: " "))
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                        }
                    }
                    Divider()
                        .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                }
            }
                Text("Показать все")
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
        }
        .padding()
    }
}

#Preview {
    PopularDestinations()
}







