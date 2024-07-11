//
//  FilterScrollView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 2.07.24.
//

import SwiftUI

struct FilterScrollView: View {
    @Binding var showDatePicker: Bool
    @Binding var selectedDate: Date?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action: {
                    withAnimation {
                        showDatePicker = true
                    }
                }) {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                            .frame(width: 105, height: 33)
                            .cornerRadius(50)
                        HStack {
                            Image("plus")
                            Text(selectedDate != nil ? "\(formattedDate())" : "обратно")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .italic()
                        }
                    }
                }

                Button(action: {
                    withAnimation {
                        showDatePicker = true
                    }
                }) {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                            .frame(width: 105, height: 33)
                            .cornerRadius(50)
                        HStack {
                            Image("date")
                            Text(selectedDate != nil ? "\(formattedDate())" : "дата")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .italic()
                        }
                    }
                }

                Button(action: {
                    
                }) {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                            .frame(width: 105, height: 33)
                            .cornerRadius(50)
                        HStack {
                            Image("person")
                            Text("класс")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .italic()
                        }
                    }
                }

                Button(action: {
                    
                }) {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                            .frame(width: 105, height: 33)
                            .cornerRadius(50)
                        HStack {
                            Image("filter")
                            Text("фильтр")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .italic()
                        }
                    }
                }
            }
        }
    }
    
    private func formattedDate() -> String {
        guard let selectedDate = selectedDate else { return "" }
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: selectedDate)
    }
}







