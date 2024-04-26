//
//  UIApplication+Extension.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 26.04.2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    func getRootVC() -> UIViewController {
        guard let screen = self.connectedScenes.first as? UIWindowScene,
              let rootVC = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return rootVC
    }
}
