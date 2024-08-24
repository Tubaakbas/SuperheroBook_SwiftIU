//
//  OzelListeView.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 25.08.2024.
//

import SwiftUI

struct OzelListeView: View {
    var superKahraman : Superhero
    var body: some View {
        HStack {
            Image(superKahraman.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
            Spacer()
            VStack{
                Text(superKahraman.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(superKahraman.realName)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
   

    }
}

#Preview {
    OzelListeView(superKahraman: batman)
}
