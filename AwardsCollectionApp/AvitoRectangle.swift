//
//  AvitoRectangle.swift
//  AwardsCollectionApp
//
//  Created by Артем Соколовский on 17.06.2021.
//

import SwiftUI

struct AvitoRectangle: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        let scale = min(width, height)
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: width/4, height: height/4)).fill(LinearGradient(
                gradient: Gradient(colors: [.red, .yellow]),
                startPoint: UnitPoint(x: 0, y: 1),
                endPoint: UnitPoint(x: 1, y: 0)
            ))
            .frame(width: width, height: height)
            .opacity(0.5)
            
            Circle()
                .alignmentGuide(HorizontalAlignment.center) { _ in scale/2.9 }
                .alignmentGuide(VerticalAlignment.center) { _ in -scale/10 }
                .frame(width: width/4.5, height: width/4.5)
                .foregroundColor(.purple)
            
            Circle()
                .alignmentGuide(HorizontalAlignment.center) { _ in scale/2.5 }
                .alignmentGuide(VerticalAlignment.center) { _ in scale/2.5 }
                .frame(width: width/3, height: width/3)
                .foregroundColor(.blue)
            
            Circle()
                .alignmentGuide(HorizontalAlignment.center) { _ in -scale/12 }
                .alignmentGuide(VerticalAlignment.center) { _ in scale/2.6 }
                .frame(width: width/3.5, height: width/3.5)
                .foregroundColor(.red)
            Circle()
                .alignmentGuide(HorizontalAlignment.center) { _ in -scale/40 }
                .alignmentGuide(VerticalAlignment.center) { _ in 0 }
                .frame(width: width/2.5, height: width/2.5)
                .foregroundColor(.green)
        }
    }
}

struct AvitoRectangle_Previews: PreviewProvider {
    static var previews: some View {
        AvitoRectangle(width: 200, height: 200)
    }
}
/*
struct AvitoCircle: View {
    let scale: CGFloat
    let horizontalScale: Double
    let verticalScale: Double
    let generalScale: Double
    let color: Color
    
    var body: some View {
        Circle()
            .alignmentGuide(HorizontalAlignment.center) { _ in scale/horizontalScale }
            .alignmentGuide(VerticalAlignment.center) { _ in scale/verticalScale }
            .frame(width: scale/generalScale, height: scale/generalScale)
            .foregroundColor(color)
    }
}
*/
