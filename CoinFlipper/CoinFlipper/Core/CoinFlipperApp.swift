//
//  CoinFlipperApp.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 23.03.2024.
//

import SwiftUI
import GoogleMobileAds

@main
struct CoinFlipperApp: App {
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
