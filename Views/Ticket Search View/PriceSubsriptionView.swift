//
//  PriceSubsriptionView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 4.07.24.
//

import SwiftUI

struct PriceSubsriptionView: View {
    @State private var isEnabled = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 36/255, green: 37/255, blue: 41/255))
                .frame(height: 51)
                .cornerRadius(8)
            
            HStack {
                Image("bell")
                    .resizable()
                    .frame(width: 15.17, height: 19.5)
                
                Text("Подписка на цену")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                
                Toggle("", isOn: $isEnabled)
                    .padding(.trailing, 10)
            }
            .padding()
        }
        .padding(.horizontal, 16)
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    PriceSubsriptionView()
}
