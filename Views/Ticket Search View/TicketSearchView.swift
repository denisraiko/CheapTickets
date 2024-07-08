//
//  TicketSearchView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 26.06.24.
//

import SwiftUI

struct TicketSearchView: View {
    @Binding var showModal: Bool
    
    
    var body: some View {
        VStack {
            CustomSearchTextField(showModal: $showModal)
                .padding(.top)
            FilterScrollView()
                .padding(.top)
                .padding(.horizontal)
            PopularDestinations()
                .padding(.top)
            AllTicketsButton()
                .padding(.top)
            PriceSubsriptionView()
                .padding(.top)
            Spacer()
        }
        .background(Color.black)
    }
    
}

#Preview {
    TicketSearchView(showModal: .constant(true))
}
