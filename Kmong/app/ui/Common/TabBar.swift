//
//  TabBar.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct TabBar: View {
    @Binding var currentTab: TabType
    var body: some View {
        HStack(spacing: 10) {
            ForEach(TabType.allCases, id: \.self) { tab in
                tab.getIcon()
                    .onTapGesture {
                        withAnimation(.easeInOut) { currentTab = tab }
                    }
                    .foregroundColor(tab == currentTab ? .yellow : .gray)
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(currentTab: .constant(.myKmong))
    }
}
