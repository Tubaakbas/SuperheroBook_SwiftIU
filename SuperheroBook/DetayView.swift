//
//  DetayView.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 24.08.2024.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : Superhero
    var body: some View {
        VStack{
            MapView(coordinate: secilenKahraman.coordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.3)
            //güvenli alanın göz ardı edilmesi
                .edgesIgnoringSafeArea(.all)
            
            GorselView(secilenImage: Image(secilenKahraman.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
            //offset: tam olarak istenilen konumun verilmesi
                .offset(y: UIScreen.main.bounds.height * -0.20)
                .padding(.bottom, -85)
            
            VStack {
                HStack {
                    Text(secilenKahraman.name)
                        .font(.title)
                        .foregroundColor(.green)
                    
                    Spacer()
                    
                    Text(secilenKahraman.realName)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                }

                HStack{
                    Text(secilenKahraman.city)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)
                    Spacer()
                    Text(secilenKahraman.job)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                }

            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.1)
            
            Spacer()
        }
        

    }
}

#Preview {
    DetayView(secilenKahraman: batman)
}
