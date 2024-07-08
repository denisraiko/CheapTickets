//
//  CustomTextField.swift
//  CheapTickets
//
//  Created by Denis Raiko on 23.06.24.
//


import SwiftUI

struct CommonView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                .frame(height: 122)
                .cornerRadius(16)
                
        }
    }
}

struct PlaceholderTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .font(.custom("SF Pro Display", size: 16))
                    .padding(.leading, 10)
            }
            TextField("", text: $text)
                .foregroundColor(.white)
                .font(.custom("SF Pro Display", size: 16))
                .padding(.leading, 10)
        }
    }
}

struct OverlayView: View {
    @ObservedObject var viewModel = RecomendationOffersViewModel()
    @State private var departure: String = ""
    @State private var destination: String = ""
    @Binding var showModal: Bool

    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image("search")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.leading, 8)
                VStack {
                    PlaceholderTextField(placeholder: "Откуда - Москва", text: $departure)
                    
                    Divider()
                        .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    PlaceholderTextField(placeholder: "Куда - Турция", text: $destination)
                        .onTapGesture {
                            showModal.toggle()
                        }
                }
            }
        }
        .frame(height: 90)
        .background(Color(red: 62/255, green: 63/255, blue: 67/255))
        .cornerRadius(16)
        .shadow(color: Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.25), radius: 4, x: 0, y: 4)
    }
}

struct CustomTextFieldView: View {
    @Binding var showModal: Bool

    var body: some View {
        ZStack {
            CommonView()
                .padding(.horizontal, 16)
            OverlayView(showModal: $showModal)
                .padding(.horizontal, 32)
        }
    }
}


#Preview {
    CustomTextFieldView(showModal: .constant(true))
}
