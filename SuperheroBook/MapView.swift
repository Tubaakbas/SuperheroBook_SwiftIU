//
//  MapView.swift
//  SuperheroBook
//
//  Created by iOS-Lab11 on 24.08.2024.
//

import SwiftUI
import MapKit
//2. Yol MapView: UIViewRepresentable
struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    // Görünümün nasıl güncelleneceği
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        
        //center: MapView her oluşturulduğunda bir koordinat istenecek
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)    }
    // Ne görünümü yapılacak
    func makeUIView(context: Context) -> MKMapView {
        //çerçeve ne kadar büyüklükte yer kaplayacak
        // .zero: bütün ekrana yayılmasını sağlar
        MKMapView(frame: .zero)
    }
    
    
    /* 1. Yol MapView: View
     Map() fonk içinde bulunan coordinateRegion parametresi Binding olarak istediği için burada region değişkenini değiştirelebilir şekilde ayarladık.
    //center:0. dizinin kordinat lokasyonu
    //span: zoomlama
    @State var region = MKCoordinateRegion(center: superheroArray[2].coordinateLocation, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Map(coordinateRegion: $region)
         
        
    } */
}

#Preview {
    MapView(coordinate: superheroArray[0].coordinateLocation)
}
