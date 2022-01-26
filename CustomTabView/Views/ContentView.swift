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
