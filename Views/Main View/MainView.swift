//
//  MainView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 20.06.24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewModel()
    @State private var showModal = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Поиск дешевых авиабилетов")
                    .fontWeight(.regular)
                    .frame(width: 172, height: 52)
                    .font(.custom("SF Pro Display", size: 22))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)))
                
            }
            //            .padding(.top, 58)
            CustomTextFieldView(showModal: $showModal)
                .padding(.top, 20)
            
            HStack {
                Text("Музыкально отлететь")
                //                  .frame(width: 223, height: 26)
                    .font(.custom("SF Pro Display", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.top, 20)
            .padding(.leading, 16)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 67) {
                    ForEach(viewModel.offers) { offer in
                        VStack(alignment: .leading, spacing: 8) {
                            Image(offer.title)
                                .resizable()
                                .frame(width: 132, height: 133.16)
                                .cornerRadius(16)
                            Text(offer.title)
                                .font(.custom("SF Pro Display", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text(offer.town)
                                .font(.custom("SF Pro Display", size: 14))
                                .foregroundColor(.white)
                            HStack(spacing: 4) {
                                Image("grayPlane")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("от \(offer.price.value.formattedWithSeparator) ₽")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .padding()
                        .background(Color.black)
                    }
                    
                }
                .padding(.horizontal)
            }
            .padding(.leading, 16.0)
            Spacer()
        }
        .background(Color.black)
        .sheet(isPresented: $showModal) {
            CustomModalView(showModal: $showModal)
                .background(Color(red: 36/255, green: 37/255, blue: 41/255))
        }
    }
}

extension Int {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(from: NSNumber(value: self)) ?? ""
    }
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter
    }()
}

#Preview {
    MainView()
}
