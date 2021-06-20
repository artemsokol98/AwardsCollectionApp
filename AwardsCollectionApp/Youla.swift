//
//  Youla.swift
//  AwardsCollectionApp
//
//  Created by Артем Соколовский on 19.06.2021.
//

import SwiftUI

struct Youla: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: width/4, height: height/4)).fill(LinearGradient(
                gradient: Gradient(colors: [.red, .yellow]),
                startPoint: UnitPoint(x: 0, y: 1),
                endPoint: UnitPoint(x: 1, y: 0)
            ))
            .frame(width: width, height: height)
            .opacity(0.5)
            
            GeometryReader { geometry in
                let size = min(geometry.size.width, geometry.size.height)
                let middle = size / 2.5
                let nearLine = size * 0.1
                let farLine = size * 0.9
                Path { path in
                    path.addArc(
                        center: CGPoint(x: nearLine, y: nearLine),
                        radius: middle,
                        startAngle: .degrees(90),
                        endAngle: .degrees(0),
                        clockwise: true
                    )
                    path.addArc(
                        center: CGPoint(x: farLine, y: nearLine),
                        radius: middle,
                        startAngle: .degrees(180),
                        endAngle: .degrees(90),
                        clockwise: true
                    )
                    path.addArc(
                        center: CGPoint(x: farLine, y: farLine),
                        radius: middle,
                        startAngle: .degrees(270),
                        endAngle: .degrees(180),
                        clockwise: true
                    )
                    path.addArc(
                        center: CGPoint(x: nearLine, y: farLine),
                        radius: middle,
                        startAngle: .degrees(0),
                        endAngle: .degrees(270),
                        clockwise: true
                    )
                    
                }
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.purple, .blue.opacity(0.3)]),
                        startPoint: UnitPoint(x: 0, y: 1),
                        endPoint: UnitPoint(x: 1, y: 0)
                    )
                )
                .frame(width: width/4, height: height/4)
                
            }
            .frame(width: width, height: height)
        }
    }
}

struct Youla_Previews: PreviewProvider {
    static var previews: some View {
        Youla(width: 200, height: 200)
    }
}
