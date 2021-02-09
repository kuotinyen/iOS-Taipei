//
//  CommonHelpers.swift
//  ios-taipei
//
//  Created by TK on 2021/2/9.
//

import SwiftUI

// Notes: Refactor here if project folder layout is set or define.

// MARK: - View extensions

extension View {
    func uiFont(_ font: UIFont) -> some View {
        return self.font(Font(font as CTFont))
    }
    
    func foregroundColor(_ color: UIColor) -> some View {
        return self.foregroundColor(Color(color))
    }
}

// MARK: - LazyView for NavigationLink pre-initialize

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
