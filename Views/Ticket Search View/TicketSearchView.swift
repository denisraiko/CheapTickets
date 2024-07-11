//
//  TicketSearchView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 26.06.24.
//

import SwiftUI

struct TicketSearchView: View {
    @Binding var showModal: Bool
    @State private var showDatePicker = false
    @State private var selectedDate: Date? = nil

    var body: some View {
        ZStack {
            VStack {
                CustomSearchTextField(showModal: $showModal)
                    .padding(.top)
                FilterScrollView(showDatePicker: $showDatePicker, selectedDate: $selectedDate)
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
            
            if showDatePicker {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            showDatePicker = false
                        }
                    }
                
                VStack {
                    CustomCalendarView(date: $selectedDate)
                        .frame(width: 350)
                        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
                        .cornerRadius(16)
                        .transition(.scale)
                    
                    Button(action: {
                        withAnimation {
                            showDatePicker = false
                        }
                    }) {
                        Text("Готово")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(16)
                    }
                }
            }
        }
    }
}

#Preview {
    TicketSearchView(showModal: .constant(true))
}
