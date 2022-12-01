//
//  Constants.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 11/23/22.
//

import Foundation
import SwiftUI

struct Constants {
    static let buttonFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 16) ?? UIFont.systemFont(ofSize: 16))
    static let textFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 20) ?? UIFont.systemFont(ofSize: 20))
}

extension Color {
    static let highlight = Color("Highlight")
}

enum ViewState {
    case list
    case detail
}
