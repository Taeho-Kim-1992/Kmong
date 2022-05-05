//
//  MessageView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct MessageView: BaseSwiftUI {
    @ObservedObject var vm = MessageViewModel()
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
        Text("전체 메시지")
    }

    private func getNavTrailing() -> some View {
        Image(systemName: "text.justify")
    }

    private func getMainContents() -> some View {
        VStack {
            getMessageBar()
            Spacer()
            Text("진행중인 대화가 없습니다.")
            Spacer()
        }
    }

    private func getMessageBar() -> some View {
        ZStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading, 30)
                TextField("닉네임과 메모로 검색하세요.", text: $vm.searchText)
            }
            HStack {
                Spacer()
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing)
            }
        }
    }
}
