//
//  NotificationView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct NotificationView: BaseSwiftUI {
    @Binding var currentTab: TabType

    var body: some View {
        CommonFrameView(
            navigationBar: getNavigationBar,
            mainContents: getMainContents)
    }

    private func getNavigationBar() -> some NavBarProtocol {
        return CustomNavigatonBar(
            leading: getNavLeading,
            center: {},
            trailing: getNavTrailing)
    }

    private func getNavLeading() -> some View {
        HStack {
            Image(systemName: "chevron.backward")
            Text("알림")
        }
        .onTapGesture {
            self.currentTab = .home
        }
    }

    private func getNavTrailing() -> some View {
        Text("필터")
    }

    private func getMainContents() -> some View {
        VStack {
            Spacer()
            Text("알림이 없습니다.")
            Spacer()
        }
    }
}
