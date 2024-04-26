//
//  ContentView.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 23.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            FlipCoinView()
            Spacer()
            AdBanner(unitID: "ca-app-pub-5392122611881037/8479169287")
        }
    }
}

#Preview {
    ContentView()
}
