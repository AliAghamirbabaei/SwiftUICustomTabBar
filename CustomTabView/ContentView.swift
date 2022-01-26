//
//  ContentView.swift
//  CustomTabView
//
//  Created by Ali Aghamirbabaei on 1/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var body: some View {
        VStack(spacing: 0) {
            ZStack{
                switch index {
                case 0:
                    Color.red
                case 1:
                    Color.yellow
                case 2:
                    Color.green
                case 3:
                    Color.blue
                default:
                    Color.white
                }
            }
            .padding(.bottom, -35)
            .ignoresSafeArea()
            CustomTabs(index: $index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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

struct CShape: Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: CGPoint(x:0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: (rect.width / 2) + 3, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        }
    }
}
