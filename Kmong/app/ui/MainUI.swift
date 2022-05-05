//
//  MainUI.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct MainUI: BaseSwiftUI {
    @State var currentTab: TabType = .home
    @State var hideTabBar = false

    var body: some View {
        VStack {
            getCurrentView()

            if !hideTabBar {
                TabBar(currentTab: $currentTab)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    print("Gesture starts \(gesture.translation.height)")
                    withAnimation(.easeIn) {
                        self.hideTabBar = gesture.translation.height < 0
                    }
                }
        )
    }

    private func getCurrentView() -> some View {
        VStack {
            switch currentTab {
            case .home: HomeView(currentTab: $currentTab)
            case .search: SearchView(currentTab: $currentTab)
            case .liked: LikeView(currentTab: $currentTab)
            case .message: MessageView(currentTab: $currentTab)
            case .myKmong: MyKmongView(currentTab: $currentTab)
            case .notification: NotificationView(currentTab: $currentTab)
            }
        }
    }

    private func getNavigationBar() -> some NavBarProtocol {
        return CustomNavigatonBar(leading: getNavLeading,
                                  center: getNavCenter,
                                  trailing: getNavTrailing)
    }

    private func getNavLeading() -> some View {
        Image(systemName: "bell").fixedSize()
    }

    private func getNavCenter() -> some View {
        Text("Kmong").font(.title)
    }

    private func getNavTrailing() -> some View {
        EmptyView()
    }
}

enum TabType: String, CaseIterable {
    case home,
         search,
         liked,
         message,
         myKmong,
         notification

    func getIcon() -> some View {
        VStack {
            switch self {
            case .home:
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("home")
                    .font(.callout)
            case .search:
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("search")
                    .font(.callout)
            case .liked:
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("liked")
                    .font(.callout)
            case .message:
                Image(systemName: "envelope")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("message")
                    .font(.callout)
            case .myKmong:
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("myKmong")
                    .font(.callout)
            case .notification: EmptyView()
            }
        }
    }
}

struct MainUI_Previews: PreviewProvider {
    static var previews: some View {
        MainUI()
    }
}
