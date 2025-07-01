//
//  ChartConfiguration.swift
//  SwiftUICustomBarChart
//
//  Created by Angelos Staboulis on 1/7/25.
//

import SwiftUI

struct ChartConfiguration: View {
    @State var title:String
    var body: some View {
        ZStack {
            VStack{
                Text(title)
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        }
    }
}

#Preview {
    ChartConfiguration(title: "")
}
