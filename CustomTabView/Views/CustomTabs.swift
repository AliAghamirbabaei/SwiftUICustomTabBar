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
            HStack {
                // MARK: - Home
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        index = 0
                    }
                } label: {
                    VStack {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(.black.opacity(index == 0 ? 1 : 0.2))
                .padding(7)
                .background(index == 0 ? .red.opacity(0.5) : .white).cornerRadius(8)
                .padding(10)
                
                Spacer(minLength: 0)

                // MARK: - Search
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        index = 1
                    }
                } label: {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(.black.opacity(index == 1 ? 1 : 0.2))
                .padding(7)
                .background(index == 1 ? .yellow.opacity(0.5) : .white).cornerRadius(8)
                .padding(10)
                
                Spacer(minLength: 0)
            }
            
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
            .offset(y: -27)
            
            HStack {
                Spacer(minLength: 0)
                
                // MARK: - Heart
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        index = 2
                    }
                } label: {
                    VStack {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(.black.opacity(index == 2 ? 1 : 0.2))
                .padding(7)
                .background(index == 2 ? .green.opacity(0.5) : .white).cornerRadius(8)
                .padding(10)
                
                Spacer(minLength: 0)

                // MARK: - Person
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        index = 3
                    }
                } label: {
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(.black.opacity(index == 3 ? 1 : 0.2))
                .padding(7)
                .background(index == 3 ? .blue.opacity(0.5) : .white).cornerRadius(8)
                .padding(10)
            }
        }
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CShape())
    }
}
