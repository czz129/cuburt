//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var toggle = false
    @State var check_toggle = false
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                    .padding(.leading, 20)
                }
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                    .padding(.top, 20)
                }
            }
            
            Spacer()
            
            VStack() {
                Text("Move the slider to:")
                    Text("25")
                }
            VStack {
                Slider(value: $num, in: 0...100)
                Button("Check"){
                    check_toggle.toggle()
                }
                    }
            
                Spacer()
            VStack() {
                Text("Exact Mode?")
                Toggle("", isOn: $toggle)
                .padding(.trailing, 170)
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
