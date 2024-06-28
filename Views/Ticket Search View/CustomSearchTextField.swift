//
//  CustomSearchTextField.swift
//  CheapTickets
//
//  Created by Denis Raiko on 28.06.24.
//

import SwiftUI

struct CustomSearchTextField: View {
    @ObservedObject var viewModel = MainViewModel()
    @State private var departure: String = ""
    @State private var destination: String = ""
    @Binding var showModal: Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0) {
            ZStack {
                Rectangle()
                    .fill(Color(red: 47/255, green: 48/255, blue: 53/255))
                    .frame(height: 96)
                HStack {
                    Image("Back")
                        .resizable()
                        .frame(width: 14, height: 12)
                        .padding(.leading, 8)
                    VStack {
                        HStack(alignment: .center) {
                            PlaceholderTextField(placeholder: "", text: $departure)
                            Image("Arrow")
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 18)
                            
                        }
                        Divider()
                            .background(Color(red: 62/255, green: 63/255, blue: 67/255))
                            .padding(.horizontal, 18)
                        HStack {
                            PlaceholderTextField(placeholder: "", text: $destination)
                                .onTapGesture {
                                    showModal.toggle()
                                }
                            Image("Cancel")
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 18)
                        }
                    }
                }
            }
        }
        .cornerRadius(16)
        .padding(.horizontal, 16)
        
    }
}



#Preview {
    CustomSearchTextField(showModal: .constant(true))
}
