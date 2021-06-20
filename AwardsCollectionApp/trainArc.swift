//
//  trainArc.swift
//  AwardsCollectionApp
//
//  Created by Артем Соколовский on 19.06.2021.
//

import SwiftUI

struct trainArc: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let size = min(geometry.size.width, geometry.size.height)
                let middle = 20
                let nearLine = 0
                let farLine = 200
                Path { path in
                    path.addArc(
                        center: CGPoint(x: 50, y: 150),
                        radius: 20,
                        startAngle: .degrees(270),
                        endAngle: .degrees(280),
                        clockwise: true
                    )
                    path.addArc(
                        center: CGPoint(x: 70, y: 130),
                        radius: 20,
                        startAngle: .degrees(180),
                        endAngle: .degrees(320),
                        clockwise: false
                    )
                    path.addArc(
                        center: CGPoint(x: 90, y: 150),
                        radius: 20,
                        startAngle: .degrees(270),
                        endAngle: .degrees(200),
                        clockwise: false
                    )
                }
            
            }
            .frame(width: width, height: height)
            Image(systemName: "cloud.fill")
                .frame(width: width, height: height)
                .foregroundColor(.black)
        }
        
    }
}

struct trainArc_Previews: PreviewProvider {
    static var previews: some View {
        trainArc(width: 200, height: 200)
    }
}
