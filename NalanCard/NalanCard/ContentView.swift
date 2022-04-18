//
//  ContentView.swift
//  NalanCard
//
//  Created by Nalan Duman on 16.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.61, green: 0.53, blue: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nalan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Nalan Duman")
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                    .foregroundColor(.black)
                InfoView(text: "+90 507 000 00  00", imageName: "phone.fill")
                InfoView(text: "nalandumaan@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
