//
//  BaseSwiftUI.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

protocol BaseSwiftUI: View { }
extension BaseSwiftUI {
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}
