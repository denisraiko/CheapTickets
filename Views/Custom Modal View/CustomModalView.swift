//
//  ModalView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 23.06.24.
//

import SwiftUI


struct CustomModalView: View {
    @Binding var showModal: Bool
    @State private var isPlugger = false
    @State private var destinationText = ""
    @State private var showTicketSearchView: Bool = false

    var body: some View {
        VStack {
            SwipeRectangle()
            
            if isPlugger {
                PlaceHolderView(isPlugger: $isPlugger)
            } else {
                CustomModalTextFieldView(showModal: $showModal, destinationText: $destinationText, showTicketSearchView: $showTicketSearchView)
                    .padding(.top, 30)
                HorizontalElements(isPlugger: $isPlugger, destinationText: $destinationText)
                    .padding(.top, 26)
                TopDestinations(isPlugger: $isPlugger, destinationCity: $destinationText)
                    .padding(.top, 26)
                    .padding(.horizontal, 16)
            }

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 36/255, green: 37/255, blue: 41/255))
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showTicketSearchView) {
            TicketSearchView(showModal: $showTicketSearchView)
        }
    }
}

struct SwipeRectangle: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color(red: 94/255, green: 95/255, blue: 97/255))
                .frame(width: 38,height: 5)
                .cornerRadius(10)
        }
        .padding(.top, 16)
        
    }
}

struct HorizontalElements: View {
    @Binding var isPlugger: Bool
    @Binding var destinationText: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 26) {
            VStack(alignment: .center) {
                Image("difficultRoute")
                    .frame(width: 48, height: 48)
                    .onTapGesture {
                        isPlugger.toggle()
                        destinationText = ""
                    }
                Text("Сложный маршрут")
                    .font(.custom("SF Pro Display", size: 14))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 70, height: 90)
            
            VStack(alignment: .center) {
                Image("globe")
                    .frame(width: 48, height: 48)
                    
                Text("Куда угодно")
                    .font(.custom("SF Pro Display", size: 14))
                    .multilineTextAlignment(.center)
            }
            .onTapGesture {
                destinationText = "Куда угодно"
            }
            .frame(width: 70, height: 90)
            
            VStack(alignment: .center) {
                Image("calendar")
                    .frame(width: 48, height: 48)
                    .onTapGesture {
                        isPlugger.toggle()
                        destinationText = ""
                    }
                Text("Выходные")
                    .font(.custom("SF Pro Display", size: 14))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 70, height: 90)
            
            VStack(alignment: .center) {
                Image("fire")
                    .frame(width: 48, height: 48)
                    .onTapGesture {
                        isPlugger.toggle()
                        destinationText = ""
                    }
                Text("Горячие билеты")
                    .font(.custom("SF Pro Display", size: 14))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 70, height: 90)
        }
    }
}

struct PlaceHolderView: View {
    @Binding var isPlugger: Bool
    
    var body: some View {
        VStack {
            Text("Заглушка")
                .font(.title)
                .foregroundColor(.white)
                .padding()
            
            Button("Закрыть") {
                isPlugger.toggle()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TopDestinations: View {
    @Binding var isPlugger: Bool
    @Binding var destinationCity: String
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                .frame(height: 216)
                .cornerRadius(16)
            VStack(alignment: .leading, spacing: 10.0) {
                VStack {
                    HStack {
                        Image("Stambul")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .cornerRadius(8)
                        
                        VStack(alignment: .leading) {
                            Text("Стамбул")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Популярное направление")
                                .foregroundColor(Color(red: 94/255, green: 95/255, blue: 97/255))
                                .fontWeight(.medium)
                                .font(.custom("SF Pro Display", size: 14))
                        }
                    }
                }
                .onTapGesture {
                    destinationCity = "Стамбул"
                }
                
                .padding(.leading, 20)
                Divider()
                    .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                VStack {
                    HStack {
                        Image("Sochi")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text("Сочи")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Популярное направление")
                                .foregroundColor(Color(red: 94/255, green: 95/255, blue: 97/255))
                                .fontWeight(.medium)
                                .font(.custom("SF Pro Display", size: 14))
                        }
                    }
                }
                .onTapGesture {
                    destinationCity = "Сочи"
                }
                .padding(.leading, 20)
                Divider()
                    .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                VStack {
                    HStack {
                        Image("Phuket")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text("Пхукет")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Популярное направление")
                                .foregroundColor(Color(red: 94/255, green: 95/255, blue: 97/255))
                                .fontWeight(.medium)
                                .font(.custom("SF Pro Display", size: 14))
                        }
                    }
                }
                .onTapGesture {
                    destinationCity = "Пхукет"
                }
                .padding(.leading, 20)
                Divider()
                    .background(Color(red: 159/255, green: 159/255, blue: 159/255))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
        }
    }
}



#Preview {
    CustomModalView(showModal: .constant(true))
}
