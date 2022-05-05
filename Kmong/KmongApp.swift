//
//  KmongApp.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

@main
struct KmongApp: App {

    var body: some Scene {
        WindowGroup {
            MainUI()
                .overlay(
                    CustomSplashUI()
                )
        }
    }
}
