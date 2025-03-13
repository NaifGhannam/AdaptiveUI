//
//  HomeView.swift
//  AnimatedUI
//
//  Created by Mac on 13/09/1446 AH.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var namespace: Namespace.ID
    @State private var showDetail = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                CustomHeader(title: "Welcome!")
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(1...4, id: \.self) { index in
                        CustomCard(title: "Item \(index)", namespace: namespace, showDetail: $showDetail)
                    }
                }
                .padding()
                
                Spacer()
            }
            .frame(width: geometry.size.width)
            .background(Color(.systemBackground))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
