//
//  YouTube.swift
//  AwardsCollectionApp
//
//  Created by Артем Соколовский on 18.06.2021.
//

import SwiftUI

struct YouTube: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: width/4, height: height/4)).fill(LinearGradient(
                gradient: Gradient(colors: [.blue, .orange]),
                startPoint: UnitPoint(x: 0, y: 1),
                endPoint: UnitPoint(x: 1, y: 0)
            ))
            .frame(width: width, height: height)
            .opacity(0.3)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: width/1.3, height: height/2)
                .foregroundColor(.red)
            GeometryReader { geometry in
                let size = geometry.size.width
                let leftLine = size/2.7
                let rightLine = size/1.5
                let above = size/8
                let middle = size/3.2
                let bottom = size/2
                
                Path { path in
                    path.move(to: CGPoint(x: leftLine, y: above))
                    path.addLine(to: CGPoint(x: leftLine, y: bottom))
                    path.addLine(to: CGPoint(x: rightLine, y: middle))
                }
                .foregroundColor(.white)
                
            }
            .frame(width: width/1.3, height: height/2)
               
            
        }
    }
}

struct YouTube_Previews: PreviewProvider {
    static var previews: some View {
        YouTube(width: 200, height: 200)
    }
}
