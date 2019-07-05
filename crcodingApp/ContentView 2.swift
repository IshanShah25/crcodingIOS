//
//  ContentView.swift
//  crcodingApp
//
//  Created by Ishan Shah on 7/3/19.
//  Copyright © 2019 Ishan Shah. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Something")
                        .font(.title)
                        .fontWeight(.bold)
                        .color(Color("accent"))
                        .padding(.top)
                    Text(/*@START_MENU_TOKEN@*/"Certificate"/*@END_MENU_TOKEN@*/)
                        .color(.white)
                    
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            .padding(.horizontal)
            Image("Background")
            
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
            .cornerRadius(10)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
