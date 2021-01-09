//
//  Pie.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/8.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = false
    
    var animatableData: AnimatablePair<Double,Double> {
        get {
            AnimatablePair(startAngle.radians,endAngle.radians)
        }
        set {
            startAngle = Angle.radians(newValue.first)
            endAngle = Angle.radians(newValue.second)
        }
    }
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        var p = Path()
        let radius = min(rect.width,rect.height) / 2
        let start = CGPoint(x: center.x + radius * cos(CGFloat(startAngle.radians)), y: center.y + radius * sin(CGFloat(startAngle.radians)))
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        p.addLine(to:center)
        return p
    }
}

struct Pie_Previews: PreviewProvider {
    static var previews: some View {
        Pie(startAngle:Angle.init(degrees: -30),endAngle: Angle(degrees: 270))
    }
}
