//
//  CircleProgressView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 10/02/23.
//

import SwiftUI

struct CircleProgressView: View {
    
    var progress = 0.99
    var progrssColor = UIColor.systemGreen
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 4)
                .opacity(0.3)
                .foregroundColor(Color(UIColor.systemGray3))
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(progrssColor))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.easeOut, value: self.progress)
            Text("\(Int(progress*100))%").font(.footnote).foregroundColor(Color.black).fontWeight(.bold)
            
        }
        .padding()
    }
}

struct CircleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressView()
    }
}
