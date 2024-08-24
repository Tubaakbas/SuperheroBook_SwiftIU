//
//  ContentView.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 20.08.2024.
//
 
import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {

            List(superheroArray) { superKahraman in NavigationLink (
                destination: DetayView(secilenKahraman: superKahraman),
                label: {
                    OzelListeView(superKahraman: superKahraman)
                })
            }.navigationTitle(Text("Süperkahraman Kitabı"))
        }
    }
}

#Preview {
    ListeView()
}
