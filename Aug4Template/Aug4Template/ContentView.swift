//
//  ContentView.swift
//  Aug4Template
//
//  Created by Danny Schnabel on 2022-08-04.
//

import SwiftUI

struct ContentView: View {
    @State var angle: Double = 0
        
    var body: some View {
        ZStack {
            Color.cyan
            HStack(spacing: 0) {
                TextAngler82(theText: "Temp", angle: $angle)
                TextAngler82(theText: "Late", angle: $angle)
            }
        }
        .ignoresSafeArea()
        .onAppear(perform: change)
    }
    
    func change() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1/6) {
            angle = angle + 1
            change()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
