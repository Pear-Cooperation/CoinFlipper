//
//  FlipCoinView.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 23.03.2024.
//

import SwiftUI

struct FlipCoinView: View {
    @ObservedObject private var flipCoinVM = FlipCoinViewModel()
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 15) {
                // show coin's side depend on random boolean value
                Image(flipCoinVM.isFlipped ? "coinHead" : "coinTail")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .rotation3DEffect(.degrees(flipCoinVM.flipAmount), axis: (x: 1.0, y: 0.0, z: 0.0))
                    .shadow(radius: 4)
                
                
                Text(self.flipCoinVM.side)
                    .font(.system(size: 25))
                
                Text("Heads \(flipCoinVM.statHeads)  :  \(flipCoinVM.statTails) Tails")
                    .font(.system(size: 18))
            }
            
            Button(action: {
                self.flipCoinVM.runRotateCoinAmimation()
            }) {
                ButtonView(text: "Flip")
                    .padding(.vertical, 28)
                    .padding(.horizontal, 16)
            }.buttonStyle(PlainButtonStyle())
        }.padding()
    }
}

struct FlipCoinView_Previews: PreviewProvider {
    static var previews: some View {
        FlipCoinView()
    }
}
