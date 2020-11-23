//
//  ContentView.swift
//  Curve
//
//  Created by Shubham on 23/11/20.
//

import SwiftUI

struct ContentView: Shape {
    var yOffset: CGFloat = 50

    var animatableData: CGFloat {
        get { return yOffset }
        set { yOffset = newValue }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX,
                                 y: rect.minY))
        // Bottom Trailing
        path.addLine(to: CGPoint(x: rect.maxX,
                                 y: rect.maxY - yOffset))
        // Bottom Leading
        path.addQuadCurve(to: CGPoint(x: 0,
                                      y: rect.maxY - yOffset),
                          control: CGPoint(x: rect.midX,
                                           y: rect.maxY + yOffset))
        path.closeSubpath()
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(height: 300)
    }
}
