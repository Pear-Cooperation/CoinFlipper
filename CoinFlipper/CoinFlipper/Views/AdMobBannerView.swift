//
//  AdMobBannerView.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 27.04.2024.
//

import SwiftUI
import GoogleMobileAds

struct AdMobBannerView: View {
    private let bannerMaxHeight = UIScreen.main.bounds.height / 5
    
    var body: some View {
        ZStack {
            AdBanner(unitID: "ca-app-pub-5392122611881037/8479169287")
        }
        .frame(maxHeight: bannerMaxHeight)
    }
}

fileprivate struct AdBanner: UIViewRepresentable {
    var unitID: String
    
    func makeCoordinator() -> AdBannerCoordinator {
        return AdBannerCoordinator()
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
}

// MARK: - GADBannerViewDelegate
fileprivate class AdBannerCoordinator: NSObject, GADBannerViewDelegate {
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

