//
//  SearchView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct SearchView: BaseSwiftUI {
    @ObservedObject var vm = SearchViewModel()
    @Binding var currentTab: TabType
    
    var body: some View {
        CommonFrameView(
            navigationBar: getNavigationBar,
            mainContents: getMainContents)

    }

    private func getNavigationBar() -> some NavBarProtocol {
        return CustomNavigatonBar(leading: {},
                                  center: getNavCenter,
                                  trailing: {})

    }

    private func getNavCenter() -> some View {
        TextField("검색어를 입력하세요.", text: $vm.searchText)
            .padding(.leading)
    }

    private func getMainContents() -> some View {
        VStack(alignment: .leading) {
            Section(
                content: {
                    List {
                        ForEach(0 ..< 10) { index in
                            HStack {
                                Text("\(index + 1)").bold()
                                Text("Item \(index + 1)")
                            }
                        }
                    }
                },
                header: {
                    Text("추천 검색어")
                        .font(.title3)
                        .bold()
                        .padding(.leading)
                })
        }
    }
}
