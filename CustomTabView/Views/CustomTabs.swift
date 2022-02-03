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
            // MARK: - Home
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    index = 0
                }
            }) {
                Image(systemName: "house.fill")
            }
            .foregroundColor(.black.opacity(index == 0 ? 1 : 0.2))
            .padding(10)
            .background(index == 0 ? .red.opacity(0.5) : .white).cornerRadius(8)
            
            Spacer(minLength: 0)
            
            // MARK: - Search
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    index = 1
                }
            }) {
                Image(systemName: "magnifyingglass")
            }
            .foregroundColor(.black.opacity(index == 1 ? 1 : 0.2))
            .padding(10)
            .background(index == 1 ? .yellow.opacity(0.5) : .white).cornerRadius(8)
            
            Spacer(minLength: 0)
            
            // MARK: - Plus
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
            
            // MARK: - Heart
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    index = 2
                }
            }) {
                Image(systemName: "heart.fill")
            }
            .foregroundColor(.black.opacity(index == 2 ? 1 : 0.2))
            .padding(10)
            .background(index == 2 ? .green.opacity(0.5) : .white).cornerRadius(8)
            
            Spacer(minLength: 0)
            
            // MARK: - Person
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    index = 3
                }
            }) {
                Image(systemName: "person.fill")
            }
            .foregroundColor(.black.opacity(index == 3 ? 1 : 0.2))
            .padding(10)
            .background(index == 3 ? .blue.opacity(0.5) : .white).cornerRadius(8)
        }
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CShape())
    }
}
