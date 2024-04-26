//
//  AdBanner.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 26.04.2024.
//

import Foundation
import SwiftUI
import GoogleMobileAds

struct AdBanner: UIViewRepresentable {
    var unitID: String
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func makeUIView(context: Context) -> GADBannerView  {
        let adView = GADBannerView(adSize: GADAdSizeBanner)
        adView.adUnitID = unitID
        adView.rootViewController = UIApplication.shared.getRootVC()
        adView.delegate = context.coordinator
        adView.load(GADRequest())
        
        return adView
    }
    
    func updateUIView(_ uiView: GADBannerView, context: Context) {
        
    }
    
    class Coordinator: NSObject, GADBannerViewDelegate {
        func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
          print("bannerViewDidReceiveAd")
        }

        func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
          print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
        }

        func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
          print("bannerViewDidRecordImpression")
        }

        func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
          print("bannerViewWillPresentScreen")
        }

        func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
          print("bannerViewWillDIsmissScreen")
        }

        func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
          print("bannerViewDidDismissScreen")
        }
    }
}

extension UIApplication {
    func getRootVC() -> UIViewController {
        guard let screen = self.connectedScenes.first as? UIWindowScene,
              let rootVC = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return rootVC
    }
}
