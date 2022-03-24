//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            ZStack {
                Color.white
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 30)
            .scaledToFit()
            .shadow(radius: 5)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
