//
//  CustomSearchTextField.swift
//  CheapTickets
//
//  Created by Denis Raiko on 28.06.24.
//

import SwiftUI

struct CustomSearchTextField: View {
    @ObservedObject var viewModel = RecomendationOffersViewModel()
    @State private var departure: String = ""
    @State private var destination: String = ""
    @Binding var showModal: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0) {
            ZStack {
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(height: 96)
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("Back")
                            .resizable()
                            .frame(width: 14, height: 12)
                            .padding(.leading, 8)
                    }
                    VStack {
                        HStack(alignment: .center) {
                            PlaceholderSearchTextField(placeholder: "", text: $departure)
                            Button(action: {
                                let temp = departure
                                departure = destination
                                destination = temp
                            }) {
                                Image("Arrow")
                                    .frame(width: 24, height: 24)
                                    .padding(.trailing, 18)
                            }
                            
                            
                        }
                        Divider()
                            .background(Color(red: 62/255, green: 63/255, blue: 67/255))
                            .padding(.horizontal, 18)
                        HStack {
                            PlaceholderSearchTextField(placeholder: "", text: $destination)
                            Button(action: {
                                departure = ""
                                destination = ""
                            }) {
                                Image("Cancel")
                                    .frame(width: 24, height: 24)
                                    .padding(.trailing, 18)
                            }
                        }
                    }
                }
            }
        }
        .cornerRadius(16)
        .padding(.horizontal, 16)
        
    }
}

struct PlaceholderSearchTextField: View {
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
            TextField(placeholder, text: $text)
                .frame(height: 35)
                .foregroundColor(.white)
                .font(.custom("SF Pro Display", size: 16))
                .padding(.leading, 10)
            
        }
    }
}



#Preview {
    CustomSearchTextField(showModal: .constant(true))
}
