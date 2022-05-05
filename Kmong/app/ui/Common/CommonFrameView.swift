//
//  CommonFrameView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct CommonFrameView<NavBar: NavBarProtocol, MainContents: View>: View {
    private let navigationBar: () -> NavBar
    private let mainContents: () -> MainContents

    init(@ViewBuilder navigationBar: @escaping () -> NavBar,
         @ViewBuilder mainContents: @escaping () -> MainContents) {
        self.navigationBar = navigationBar
        self.mainContents = mainContents
    }


    var body: some View {
        VStack(spacing: 0) {
            navigationBar()
            Divider()
            mainContents()
            Spacer()
        }
    }
}
