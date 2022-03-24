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
                VStack {
                    Image("Hero")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    VStack {
                        Text("Order Summary")
                            .font(.custom("Red Hat Display", size: 27))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("HeaderColor"))
                        Spacer()
                            .frame(height: 10)
                        Text("You can now listen to millions of songs, audiobooks, and podcasts on any device anywhere you like!")
                            .font(.custom("Red Hat Display", size: 18))
                            .foregroundColor(Color("BodyColor"))
                            .fixedSize(horizontal: false, vertical: true)
                            .lineSpacing(5)
                            .multilineTextAlignment(.center)
                            .padding(10)
                    }
                    .padding(30)
                }
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
