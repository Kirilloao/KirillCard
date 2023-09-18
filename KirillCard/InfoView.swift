//
//  InfoView.swift
//  KirillCard
//
//  Created by Kirill Taraturin on 18.09.2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text)
                    .foregroundColor(Color("textColor"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "123", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
