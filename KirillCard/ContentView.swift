//
//  ContentView.swift
//  KirillCard
//
//  Created by Kirill Taraturin on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).ignoresSafeArea()
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Kirill Taraturin")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                
                InfoView(text: "+36 240 452 04 68", imageName: "phone.fill")
                InfoView(text: "kirilltaraturin747@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


