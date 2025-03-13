//
//  CustomCard.swift
//  AnimatedUI
//
//  Created by Mac on 13/09/1446 AH.
//
//
import SwiftUI

struct CustomCard: View {
    let title: String
    var namespace: Namespace.ID
    @Binding var showDetail: Bool
    
    var body: some View {
        VStack {
            if showDetail {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.blue)
                    .matchedGeometryEffect(id: title, in: namespace)
                    .frame(height: 200)
                    .overlay(Text(title).font(.title).foregroundColor(.white))
                    .onTapGesture {
                        withAnimation {
                            showDetail.toggle()
                        }
                    }
            } else {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.green)
                    .matchedGeometryEffect(id: title, in: namespace)
                    .frame(height: 100)
                    .overlay(Text(title).font(.headline).foregroundColor(.white))
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showDetail.toggle()
                        }
                    }
            }
        }
    }
}

