//
//  DesignSpec.swift
//  ios-taipei
//
//  Created by TK on 2021/2/9.
//

import UIKit

// Notes: Copy from previous private project, feel free to change or remove after test it.

extension UIFont {
    static let itLargeTitle: UIFont = .systemFont(ofSize: 34, weight: .semibold)
    static let itTitle: UIFont = .systemFont(ofSize: 24, weight: .semibold)
    static let itHeader: UIFont = .systemFont(ofSize: 20, weight: .semibold)
    static let itDescription: UIFont = .systemFont(ofSize: 16, weight: .regular)
    static let itContent: UIFont = .systemFont(ofSize: 14, weight: .regular)
    static let itFootnote: UIFont = .systemFont(ofSize: 12, weight: .regular)
}

extension UIColor {
    static let itBlue: UIColor = .init(hex: 0x007AFE)
    static let itBlack: UIColor = .black
    static let itWhite: UIColor = .white
    static let itOrange: UIColor = .init(hex: 0xF6C244)
    static let itGray: UIColor = .init(hex: 0xD8D8D8)
    static let itLightGray: UIColor = .init(hex: 0xE2E2E2)
    static let itGrayText: UIColor = .init(hex: 0x8E8E93)
}

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}
