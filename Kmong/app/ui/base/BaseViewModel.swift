//
//  BaseViewModel.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import Network
import Foundation


class BaseViewModel: ObservableObject {

    @Published var isNetworkDisConnected = false
    @Published var progress = false

    func checkNetworkConnected() -> Bool {
        let monitor = NWPathMonitor()
        monitor.pathUpdateHandler = {
            self.isNetworkDisConnected = $0.status != .satisfied
        }

        return self.isNetworkDisConnected
    }

    func closeApp() {
        exit(0)
    }
}
