//
//  AllTicketsButton.swift
//  CheapTickets
//
//  Created by Denis Raiko on 4.07.24.
//

import SwiftUI

struct AllTicketsButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 34/255, green: 97/255, blue: 188/255))
                .frame(height: 42)
                .cornerRadius(8)
            Text("Посмотреть все билеты")
                .font(.system(size: 16))
                .foregroundColor(.white)
                .italic()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    AllTicketsButton()
}
