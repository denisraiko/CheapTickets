//
//  ModalTextField.swift
//  CheapTickets
//
//  Created by Denis Raiko on 23.06.24.
//

import SwiftUI


struct CustomModalTextFieldView: View {
    @Binding var showModal: Bool
    @Binding var destinationText: String
    @Binding var showTicketSearchView: Bool


    var body: some View {
        OverlayModalTextField(destination: $destinationText, showModal: $showModal, showTicketSearchView: $showTicketSearchView)
            .padding(.horizontal, 16)
    }
}

struct PlaceholderModalTextField: View {
    var placeholder: String
    @Binding var text: String
    @Binding var destinationText: String

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .frame(height: 30)
                    .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .font(.custom("SF Pro Display", size: 16))
                    .padding(.leading, 10)
            }
            TextField(placeholder, text: $text)
                .frame(height: 35)
                .foregroundColor(.white)
                .font(.custom("SF Pro Display", size: 16))
                .padding(.leading, 10)

        }
    }
}

struct OverlayModalTextField: View {
    @ObservedObject var viewModel = RecomendationOffersViewModel()
    @State private var departure: String = ""
    @Binding var destination: String
    @Binding var showModal: Bool
    @Binding var showTicketSearchView: Bool


    var body: some View {
        VStack(spacing: 20) {
            VStack {
                HStack {
                    Image("modalTextFieldPlane")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(.leading, 16)
                    PlaceholderModalTextField(placeholder: "Откуда - Москва", text: $departure, destinationText: .constant(""))
                        .onTapGesture {
                            showTicketSearchView = true
                        }
                }
                Divider()
                    .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .padding(.horizontal, 16)
                HStack {
                    Image("search")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(.leading, 16)
                    PlaceholderModalTextField(placeholder: "Куда - Турция", text: $destination, destinationText: $destination)
                        .onTapGesture {
                            showTicketSearchView = true
                        }

                }
            }
        }
        .frame(height: 96)
        .background(Color(red: 62/255, green: 63/255, blue: 67/255))
        .cornerRadius(16)
        .shadow(color: Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.25), radius: 4, x: 0, y: 4)
    }
}

#Preview {
    CustomModalTextFieldView(showModal: .constant(true), destinationText: .constant(""), showTicketSearchView: .constant(true))
}







