//
//  GorselView.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 24.08.2024.
//

import SwiftUI

struct GorselView: View {
    var secilenImage : Image
    var body: some View {
        secilenImage
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 15)
    }
}

#Preview {
    GorselView(secilenImage: Image("batman"))
}
