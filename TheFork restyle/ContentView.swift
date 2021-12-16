//
//  ContentView.swift
//  TheFork restyle
//
//  Created by Roberto La Croce on 09/12/21.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct ContentView: View {
    
    func actionSheet() {
           guard let data = URL(string: "https://www.thefork.it/ristorante/la-cucina-del-ducato-r700507") else { return }
           let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
           UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
       }
    @State var heartToggle = false
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.696600, longitude: 14.513390), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 40.696600, longitude: 14.513390), tint: .red))]
    
    let feedback = UINotificationFeedbackGenerator()

//    Come inserire il pin
    
    var body: some View {
        NavigationView{
            VStack {
                Rectangle()
                    .frame(height: 85)
                    .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        HStack{
                        ZStack{
                        Rectangle()
                            .frame(width: 55, height: 26, alignment: .leading)
                            .cornerRadius(5)
                            .foregroundColor(Color("color6"))
                        
                            HStack{
                            Image(systemName: "fork.knife.circle")
                                    .foregroundColor(.white)
                                    .frame(width: 13, height: 18, alignment: .bottomLeading)
                                Text("PAY")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                        .bold()
                            }
                            
                        }
                    
           
                        
                            ZStack{
                        Rectangle()
                            .frame(width: 91, height: 26, alignment: .center)
                            .cornerRadius(5)
                            .foregroundColor(Color("color3"))
                            
                            HStack{
                            Image(systemName: "gift.fill")
                                    .foregroundColor(Color("color4"))
                                    .frame(width: 13, height: 18, alignment: .bottomLeading)
                                Text("GIFT CARD")
                                    .foregroundColor(Color("color4"))
                                    .font(.caption)
                                        .bold()
                       
                                }
                            }
                        }
                  
                        
                        Text("La Cucina del Ducato")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        
                    HStack{
                    ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color("color4"))
                        }
                    Text("Via Ponte Trivione, 2, 80054 Gragnano")
                            .font(.subheadline)
                        Spacer()
                    }
                
                    
                    
                    
                    HStack{
                    ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "fork.knife")
                            .foregroundColor(Color("color4"))
                    }
                    Text("Campano")
                            .font(.subheadline)
                    }
                    
                    
                    HStack{
                        ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "pawprint.circle")
                                .foregroundColor(Color("color4"))
                        }
                        
                        
                        
                    Text("Animali ammessi")
                            .font(.subheadline)
                        
                        }
                        
                    }
        
                    .padding()
                    
                    VStack(spacing:0){
                    HStack{
                    Image("TheFork")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    Text("9,7")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor((Color(red: 89/255, green: 147/255, blue: 63/255)))
                        Text("/ 10")
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    }
                  
                    Text("23 recensioni TheFork")
                        .foregroundColor(.secondary)
                        .font(.subheadline)
                        Spacer(minLength: 20)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                        Image("foto1")
                        Image("foto2")
                        }
                    }
              
                   
                   
                    VStack(spacing: 0){
                    Divider()
                    Rectangle()
                   .foregroundColor(Color("color1"))
                    .frame(width: .infinity, height: 20, alignment: .center)
                        
                        VStack(alignment:.leading){
                        Divider()
                        Text("Menù")
                        .font(.title2)
                        .bold()
                        .padding()
                        Divider()
                            HStack{
                        Image(systemName: "dollarsign.square")
                        Text("PREZZO MEDIO 25 €")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                            }
                        .padding()
                            Divider()
                            
                            HStack{
                            VStack(alignment: .leading){
                            Text("Eliche alla genovese")
                                    .font(.subheadline)
                            Spacer()
                            Spacer()
                            Text("Spaghetti cacio e pepe al profumo di limone di Sorrento e crudo di gamberi rossi di Mazara del Vallo")
                                    .font(.subheadline)
                            Spacer()
                            Spacer()
                            Text("Tubettoni al ragù di totano di fondale ed il suo crudo")
                                    .font(.subheadline)
                            Spacer()
                            Spacer()
                            }
                            .padding()
                            VStack(alignment: .trailing){
                                Text("14€")
                                    .fontWeight(.semibold)
                                Spacer()
                                Spacer()
                                Text("17€")
                                    .fontWeight(.semibold)
                                Spacer()
                                Spacer()
                                Text("16€")
                                    .fontWeight(.semibold)
                                Spacer()
                                Spacer()
                            }
                            .padding()
                            }
                        }
                        
                        Button(action:{}){
                        ZStack{
                        Rectangle()
                        .cornerRadius(5)
                        .frame(width: 334, height: 38, alignment: .center)
                        .foregroundColor(Color("color2"))
                        .border((Color("color4")))
                        Text("VEDI IL MENÙ COMPLETO")
                        .foregroundColor(Color("color4"))
                        .font(.headline)
                        .padding()
                            }
                        }
                        
                        Spacer(minLength: 20)
                        Divider()

                        
                        ZStack{
                    Rectangle()
                    .frame(width: .infinity, height: 224, alignment: .center)
                    .foregroundColor(Color("color1"))
                        
                    // BACKGROUND GRIGIO DA IMPLEMENTARE
                    
                    Button(action: {}){
                    VStack(spacing: 0){
                        ZStack{
                    Rectangle()

                    .frame(width: 360, height: 100, alignment: .center)
                    .foregroundColor(Color("color2"))
                    .border((Color("color5")))
                    .cornerRadius(0)
                            
                            VStack{
                            Text("-30%")
                            .foregroundColor(.primary)
                            .font(.largeTitle)
                            .bold()
                            Text("prenotando nella giornata odierna")
                            .foregroundColor(.primary)
                            .font(.subheadline)
                            }
                        }
                
                        ZStack{
                            
                    Rectangle()
                    .frame(width: 360, height: 40, alignment: .center)
                    .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                    .cornerRadius(0)
                    .shadow(radius: 10, y:15)
                            
                            Text("PRENOTA UN TAVOLO")
                                .foregroundColor(.white)
                                .bold() // è semibold
                           
                                }
                            }
                    }
                    .offset(y: -10)
                        }
                        
                        Divider()
                        ZStack{
                            
                
                            Circle()
                             .frame(width: 60, height: 60, alignment: .center)
                             .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(Color("color1"))
                            Text("9,7")
                                .bold()
                                .font(.title2)
                                .foregroundColor((Color(red: 89/255, green: 147/255, blue: 63/255)))
                            
                        }.offset(y: -30)
                        
                    }
                    VStack{
                    VStack(alignment: .leading){
                    HStack{
                    ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "star.circle")
                            .foregroundColor(Color("color4"))
                        }
                        HStack(spacing: 4){
                    Text("Miglior ristorante")
                            .font(.subheadline)
                    Text("Campano")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                    Text("della zona")
                            .font(.subheadline)
                        }
                        Spacer()
                    }
                    
                    
                    
                    HStack{
                    ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "heart.circle")
                            .foregroundColor(Color("color4"))
                    }
                    
                        HStack(spacing: 4){
                    Text("Servizio clienti")
                            .font(.subheadline)
                    Text("stellare")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                        }
                    }
                        
//                    .background(.white)
                    
                    
                    HStack{
                        ZStack{
                    Rectangle()
                        .frame(width: 26, height: 26, alignment: .leading)
                        .cornerRadius(5)
                        .foregroundColor(Color("color3"))
                        Image(systemName: "dollarsign.circle")
                                .foregroundColor(Color("color4"))
                        }
                        HStack(spacing: 4){
                    Text("Ottimo")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                    Text("rapporto qualità / prezzo")
                            .font(.subheadline)
                            }
                        }
                    }.offset(y: -45)
                    .padding()
                    Spacer(minLength: -40)
                    Divider()
                    Button(action:{}){
                    Text("Leggi tutte le recensioni")
                        .bold()
                        .foregroundColor(Color("color4"))
                        }
                }
//                    .background(.white)
                    
                    VStack(spacing: 0){
                    Divider()
                    Rectangle()
                    .frame(width: .infinity, height: 30, alignment: .center)
                    .foregroundColor(Color("color1"))
                        
                        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: markers) { marker in
                              marker.location
                        }
                        .frame(width: 420, height: 300)
                        VStack(){
//                        Spacer(minLength: 30)
                            ZStack{
                        Rectangle()
                            .frame(width: .infinity, height: 220, alignment: .center)
                            .foregroundColor(Color("color1"))
                        ZStack{
                        Rectangle()
                            .frame(width: 420, height: 45, alignment: .center)
                            .foregroundColor(Color("color2"))
                            .cornerRadius(5)
                            .border(Color("color5"))
                                
                            Button(action:{}){
                                HStack(spacing: 160){
                                    VStack(alignment: .trailing){
                            Text("Altre informazioni")
                                    .foregroundColor(.primary)
                                    .bold()
                                    }
                                    .padding()
                                    VStack(alignment: .leading){
                            Image(systemName: "chevron.right")
                                    .foregroundColor(.primary)
                                    }
                                    .padding()
                                    }
                            }
                                }.offset(y: -60)
                            }
                        }
                    }
//                    .background(Color(red: 247/255, green: 247/255, blue: 247/255))
                }
//                .background(Color("color1"))
                .background(Color("color2"))
            }
           .ignoresSafeArea()
                
            .safeAreaInset(edge: .bottom){
            Button(action:{}){
            ZStack{
            Rectangle()
                .foregroundColor(Color(red: 89/255, green: 147/255, blue: 63/255))
                .frame(width: 360, height: 45, alignment: .center)
                .cornerRadius(10)
                Text("PRENOTA UN TAVOLO")
                    .foregroundColor(.white)
                    .bold() // è semibold
                    }
                }
            }
            
           .navigationTitle("La Cucina del Ducato")
           .navigationBarTitleDisplayMode(.inline) // UTILISSIMO
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: actionSheet){
                    Label("Condividi", systemImage: "square.and.arrow.up")
                            .foregroundColor(.white)
                    }
                }
                    
                ToolbarItem(placement: .navigationBarTrailing){
                    if heartToggle == true{
                        Button{
                            heartToggle.toggle()
                            feedback.notificationOccurred(.success)
                        }
                    label: {Image(systemName: "heart.fill")}
                                .foregroundColor(.white)
                    } else {
                    Button{
                        heartToggle.toggle()
                        feedback.notificationOccurred(.success)
                    }
                label: {Image(systemName: "heart")}
                            .foregroundColor(.white)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Label("Preferiti", systemImage: "chevron.left")
                            .foregroundColor(.white)
                        
                    }
                
                }
                
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           .preferredColorScheme(.dark)
    }
}
