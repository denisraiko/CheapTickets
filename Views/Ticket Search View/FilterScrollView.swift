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
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(width: 105, height: 33)
                    .cornerRadius(50)
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(width: 105, height: 33)
                    .cornerRadius(50)
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(width: 105, height: 33)
                    .cornerRadius(50)
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(width: 105, height: 33)
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    FilterScrollView()
}
