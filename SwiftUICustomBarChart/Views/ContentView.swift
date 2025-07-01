//
//  ContentView.swift
//  SwiftUICustomBarChart
//
//  Created by Angelos Staboulis on 1/7/25.
//

import SwiftUI
private let defaultMaxHeight: CGFloat = UIScreen.main.bounds.height - 150

struct ContentView: View {
    @State var values: [CGFloat]
    var maxHeight: CGFloat = defaultMaxHeight
    var body: some View {
        let borderColor = Color.blue // Replace with your primary color
        ZStack{
            VStack{
                ChartConfiguration(title:"SwiftUI Custom BarChart")
                HStack(alignment: .bottom, spacing: 1) {
                    
                    ForEach(values, id: \.self) { item in
                        Bar(value: item, color: borderColor, maxHeight: maxHeight)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: maxHeight)
                .onAppear {
                    values.append(CGFloat.random(in: 1...100))
                    values.append(CGFloat.random(in: 1...100))
                    values.append(CGFloat.random(in: 1...100))
                    values.append(CGFloat.random(in: 1...100))
                    values.append(CGFloat.random(in: 1...100))
                    
                }
            }.frame(maxWidth: .infinity,maxHeight: defaultMaxHeight,alignment: .top)
        }
      
    }
}

