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
                            .fontWeight(.black)
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
                        Spacer()
                            .frame(height: 10)
                        ZStack {
                            Color("CardColor")
                            HStack {
                                Image("Music")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                Spacer()
                                    .frame(width: 15)
                                VStack(spacing: 5) {
                                    Text("Annual Plan")
                                        .font(.custom("Red Hat Display", size: 18))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("HeaderColor"))
                                    Text("$59.99/year")
                                        .font(.custom("Red Hat Display", size: 18))
                                        .foregroundColor(Color("BodyColor"))
                                        .fontWeight(.bold)
                                }
                                Spacer()
                                Text("Change")
                                    .font(.custom("Red Hat Display", size: 18))
                                    .foregroundColor(Color("AccentColor"))
                                    .fontWeight(.bold)
                                    .underline()
                            }
                            .padding(20)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        Spacer()
                            .frame(height: 30)
                        Button {

                        } label: {
                            ZStack {
                                Color("AccentColor")
                                    .frame(height: 60)
                                Text("Proceed to Payment")
                                    .font(.custom("Red Hat Display", size: 20))
                                    .fontWeight(.black)
                                    .foregroundColor(.white)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 5)
                        }
                        Spacer()
                            .frame(height: 25)
                        Button {

                        } label: {
                            Text("Cancel Order")
                                .font(.custom("Red Hat Display", size: 20))
                                .fontWeight(.black)
                        }
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
