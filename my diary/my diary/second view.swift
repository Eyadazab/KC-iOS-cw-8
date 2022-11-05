//
//  second view.swift
//  my diary
//
//  Created by Moahmed Azab on 05/11/2022.
//

import SwiftUI

struct second_view: View {
    var text: String
    var color: Color
    var body: some View {
        ZStack{
            color.ignoresSafeArea().opacity(0.5)
            
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.black)
                .fontWeight(.heavy)
        }
    }
}
struct second_view_Previews: PreviewProvider {
    static var previews: some View {
        second_view(text: "", color: .blue.opacity(0.7))
    }
}
