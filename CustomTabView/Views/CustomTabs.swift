//
//  CustomTabs.swift
//  CustomTabView
//
//  Created by Ali Aghamirbabaei on 1/27/22.
//

import SwiftUI

struct CustomTabs: View {
    
    @Binding var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                index = 0
            }) {
                Image(systemName: "house.fill")

            }
            .foregroundColor(.black.opacity(index == 0 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
                index = 1
            }) {
                Image(systemName: "magnifyingglass")
            }
            .foregroundColor(.black.opacity(index == 1 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
            }) {
                ZStack {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                .frame(width: 50, height: 50)
                .background(Color("darkBlue"))
                .clipShape(Circle())
            }
            .offset(y: -25)
            .foregroundColor(.black.opacity(index == 2 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
                index = 2
            }) {
                Image(systemName: "heart.fill")
            }
            .foregroundColor(.black.opacity(index == 2 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
                index = 3
            }) {
                Image(systemName: "person.fill")
            }
            .foregroundColor(.black.opacity(index == 3 ? 1 : 0.2))
        }
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CShape())
    }
}
