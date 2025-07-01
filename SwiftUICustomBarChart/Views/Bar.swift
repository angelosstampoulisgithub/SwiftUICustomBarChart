//
//  Bar.swift
//  SwiftUICustomBarChart
//
//  Created by Angelos Staboulis on 1/7/25.
//

import SwiftUI

struct Bar: View {
    var value: CGFloat
    var color: Color
    var maxHeight: CGFloat
    var body: some View {
        let itemHeight = value * maxHeight / 100
        
        Spacer()
            .frame(height: itemHeight)
            .background(color)
            .padding(.horizontal, 5)
    }
}

#Preview {
    Bar(value: 0.0, color: Color.blue, maxHeight: 0.0)
}
