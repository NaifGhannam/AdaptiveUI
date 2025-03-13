//
//  CustomHeader.swift
//  AnimatedUI
//
//  Created by Mac on 13/09/1446 AH.
//
//
import SwiftUI


struct CustomHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
            .padding()
    }
}
