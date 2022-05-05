//
//  CustomSplashUI.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

protocol SplashProtocol { }
extension SplashProtocol {
    var splashDuration: Double { return 2.0 }
}

struct CustomSplashUI: BaseSwiftUI, SplashProtocol {
    @State private var splashRunning = true
    @ObservedObject private var vm = CustomSplashViewModel()

    var body: some View {
        playSplashScreen()
    }

    private func playSplashScreen() -> some View {
        VStack {
            if splashRunning {
                Image("splash")
                    .resizable()
                    .ignoresSafeArea()
                    .onAppear(perform: offSplashScreen)
            } else {
                EmptyView()
            }
        }
        .alert(isPresented: $vm.isNetworkDisConnected,
               content: getAlert)
    }

    private func offSplashScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + splashDuration) {
            withAnimation(.easeOut) { splashRunning = false }
        }
    }

    private func getAlert() -> Alert {
        return Alert(title: Text("No Network"),
                  message: Text("No Network"),
                  dismissButton: .default(Text("OK"), action: vm.closeApp))
    }
}

struct CustomSplashUI_Previews: PreviewProvider {
    static var previews: some BaseSwiftUI {
        CustomSplashUI()
    }
}
