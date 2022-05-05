//
//  LikeView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct LikeView: View {
    @ObservedObject private var vm = LikeViewModel()
    
    @State private var topSelection: TopSelection = .service
    @Binding var currentTab: TabType

    enum TopSelection: String {
        case service,
             portfolio
    }

    var body: some View {
        CommonFrameView(
            navigationBar: getNavigationBar,
            mainContents: getMainContents)
    }

    private func getMainContents() -> some View {
        VStack {
            Picker(
                selection: $topSelection,
                content: {
                    Text("서비스")
                        .tag(TopSelection.service)

                    Text("포트폴리오")
                        .tag(TopSelection.portfolio)
                },
                label: { })
                .pickerStyle(.segmented)

            if topSelection == .service {
                getLikedServiceView()
            }

            if topSelection == .portfolio {
                getPortfoilioView()
            }
        }

    }

    private func getLikedServiceView() -> some View {
        VStack {
            Spacer()
            Text("찜한 서비스가 없습니다.")
                .font(.title)
            Text("관심있는 서비스는 하트를 눌러 찜하시면 쉽게 찾아보실 수 있어요.")
                .multilineTextAlignment(.center)
            Spacer()
        }
    }

    private func getPortfoilioView() -> some View {
        VStack {
            Spacer()
            Text("관심있는 서비스/포트폴리오를 찜해두면 편하게 확인하고 관리할 수 있습니다.")
                .multilineTextAlignment(.center)
            Spacer()
        }
    }

    private func getNavigationBar() -> some NavBarProtocol {
        return CustomNavigatonBar(
            leading: getNavLeading,
            center: {},
            trailing: getNavTrailing)
    }

    private func getNavLeading() -> some View {
        Text("찜목록")
    }

    private func getNavTrailing() -> some View {
        Text("필터")
    }
}
