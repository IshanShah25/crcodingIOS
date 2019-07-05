//
//  ContentView.swift
//  crcodingApp
//
//  Created by Ishan Shah on 7/3/19.
//  Copyright © 2019 Ishan Shah. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var show = false
    @State var viewState = CGSize.zero
    var body: some View {
        ZStack {
            
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            CardBottomView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            
            CardView()
                .background(show ? Color.red : Color.blue)
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 50 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
                .blendMode(.hardLight)
                .animation(.basic(duration: 0.7, curve: .easeInOut))
                .offset(x: viewState.width , y: viewState.height)

            
            CardView()
                
                .background(show ? Color("background8") : Color("background5"))
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 : -20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 40 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
                .blendMode(.hardLight)
                .animation(.basic(duration: 0.5, curve: .easeInOut))
                .offset(x: viewState.width , y: viewState.height)

            
            CertificateView()
                .offset(x: viewState.width , y: viewState.height)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 30 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
                .animation(.spring())
                .tapAction {
                    self.show.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.viewState = value.translation
                            self.show = true
                    }
                    .onEnded { value in
                        self.viewState = CGSize.zero
                        self.show = false
                        
                    }
                
                )
            
            
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct CardView : View {
    var body: some View {
        return VStack {
            Text("Card Back")
        }
            .frame(width: 340.0, height: 220.0)
        
        
    }
}

struct CertificateView : View {
    var body: some View {
        return VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.headline)
                        .fontWeight(.bold)
                        .color(Color("accent"))
                        .padding(.top)
                    Text("Certificate")
                        .color(.white)
                    
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0,height: 30.0)
                
            }
            .padding(.horizontal)
            Spacer()
            Image("Background")
            
        }
        .frame(width: 340.0, height: 220.0)
            .background(Color.black)
            .cornerRadius(10.0)
            .shadow(radius: 20)
    }
}

struct TitleView : View {
    var body: some View {
        return VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    Spacer()
                }
                Image("Illustration5")
                Spacer()
                }.padding()
            }
        }

        struct CardBottomView : View {
            var body: some View {
                return VStack {
                    Rectangle()
                        .frame(width: 60, height: 6)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .opacity(0.1)
                        Text("Kickstart Lickstart Quickstart Fixstart Lickstart Kickstart Badstart Goodstart Lookstart Poopstart")
                            .lineLimit(10)
                    
                            Spacer()
                    
                        }
                        .frame(minWidth: 0, maxWidth: .infinity )
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                        .cornerRadius(30)
                        .shadow(radius: 20)
                        .offset(y: 600)
                }
            }
