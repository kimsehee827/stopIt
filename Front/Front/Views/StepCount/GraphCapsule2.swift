//
//  GraphCapsule2.swift
//  Front
//
//  Created by 오인경 on 2021/08/24.
//

import SwiftUI

struct GraphCapsule2: View {
    var totalStep: Int
    var step: Int
    var height: CGFloat {
        if Int(0.1 * Double(totalStep))..<totalStep ~= step {
            return CGFloat(200 * (Double(step) / Double(totalStep)))
        } else if step >= totalStep {
            return CGFloat(200)
        } else {
            return CGFloat(20)
        }
    }
    var backgroundColor: Color = Color("lightgray")
    var foregroundColor: Color = Color("middlecard2")
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Capsule()
                    .frame(width: 25, height: 200)
                    .foregroundColor(backgroundColor)
                Capsule()
                    .frame(width: 25, height: height)
                    .foregroundColor(foregroundColor)
            }
        }
    }
}

struct GraphCapsule2_Previews: PreviewProvider {
    static var previews: some View {
        GraphCapsule2(totalStep: 10000, step: 2000)
    }
}
