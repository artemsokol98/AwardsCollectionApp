//
//  Weather.swift
//  AwardsCollectionApp
//
//  Created by Артем Соколовский on 18.06.2021.
//

import SwiftUI

struct Weather: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        let scale = min(width, width)
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: width/4, height: height/4)).fill(LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 2)
            ))
            .frame(width: width, height: height)
            .opacity(0.3)
            Circle()
                .frame(width: width/3, height: height/3)
                .foregroundColor(.yellow)
                .alignmentGuide(HorizontalAlignment.center, computeValue: { dimension in
                    scale/3
                })
                .alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
                    scale/3
                })
            Image(systemName: "cloud.fill")
                .foregroundColor(.white)
                .frame(width: width, height: height)
                .scaleEffect(scale/25)
                .opacity(0.8)
        }
    }
}

struct Weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather(width: 200, height: 200)
    }
}
