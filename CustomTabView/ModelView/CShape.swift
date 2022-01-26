//
//  CShape.swift
//  CustomTabView
//
//  Created by Ali Aghamirbabaei on 1/27/22.
//

import SwiftUI

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
