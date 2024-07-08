//
//  FilterScrollView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 2.07.24.
//

import SwiftUI

struct FilterScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                        .frame(width: 105, height: 33)
                        .cornerRadius(50)
                    HStack {
                        Image("plus")
                        Text("обратно")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                            .italic()
                    }
                }
                ZStack {
                    Rectangle()
                        .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                        .frame(width: 105, height: 33)
                        .cornerRadius(50)
                    
                    HStack {
                        Image("date")
                        Text("дата")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                            .italic()
                    }
                    
                }
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

#Preview {
    FilterScrollView()
}
