//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name??"
    var body: some View {
        
    VStack {
        Text("\(textTitle)")
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .frame(width: 350.0, height: 50.0)
        
        TextField("Type Here", text: $name)
            .font(.title2)
            .border (Color.gray)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .padding()
        
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            textTitle = "Welcome, \(name)!!"
        }//closing button
        .frame(width: 200.0, height:25)
        .font(.title2)
        .buttonStyle(.borderedProminent)
        .tint(.red)
        }//closing VStack
        
    }//closing var body
}//closing struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }//closing static var
}//closing ContentView
