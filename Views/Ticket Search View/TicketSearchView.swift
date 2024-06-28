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
        
        CustomSearchTextField(showModal: $showModal)
    
    }
}



#Preview {
    TicketSearchView(showModal: .constant(true))
}
