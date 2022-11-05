//
//  ContentView.swift
//  my diary
//
//  Created by Moahmed Azab on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let chooseColor = [Color.blue , Color.purple , Color.pink , Color.indigo ]
    @State var word = ""
    @State var ChosenColor = Color.yellow
    var body: some View {
        NavigationView {
            
            ZStack{
                Color.green.ignoresSafeArea().opacity(0.5)
                
                VStack {
                    Text("choose a color")
                        .font(.largeTitle)
                    
                    HStack{
                        
                        ForEach(chooseColor, id: \.self) { color in
                            Circle()
                                .frame(width: 60 , height: 60)
                                .foregroundColor(color.opacity(0.7))
                                .padding(4)
                                .onTapGesture {
                                    ChosenColor = color
                                }
                            
                        }
                    }
                    Text("what do you wanna write ?🤔")
                        .font(.title)
                    TextField("type here", text: $word)
                        .frame(width: 300)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    NavigationLink {
                        second_view(text: word, color: ChosenColor)
                    } label: {
                        Text("save")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    .frame(width: 300, height: 70)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .padding(20)
                    
                }
            }
            .navigationTitle("My 📓")
        }
        
        
    
    
        }
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
