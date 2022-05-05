//
//  MyKmongView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct MyKmongView: BaseSwiftUI {
    @ObservedObject var vm = MyKmongViewModel()
    @Binding var currentTab: TabType

    @State var notified = false


    var body: some View {
        CommonFrameView(
            navigationBar: getNavigtaionBar,
            mainContents: getMainContents)
    }

    private func getNavigtaionBar() -> some NavBarProtocol {
        return CustomNavigatonBar(
            leading: getNavLeading,
            center: {},
            trailing: getNavTrailing)
    }

    private func getNavLeading() -> some View {
        HStack {
            Image(systemName: "bell")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal)
            Text("마이크몽")
                .font(.title2)
        }
        .onTapGesture {
            self.currentTab = .notification
        }
    }

    private func getNavTrailing() -> some View {
        Text("계정 설정")
    }

    private func getMainContents() -> some View {
        ScrollView {
            VStack(alignment: .leading) {
                // User Profile
                UserProfileView()
                    .padding(.leading)
                    .padding(.vertical, 25)
                UserPropertyView()
                    .frame(maxWidth: .infinity, idealHeight: 70)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .padding(.horizontal)
                    )
                    .padding(.bottom)

                UserProjectView()
                    .padding(.bottom)

                UserPurchaseInfoView()
                    .padding(.bottom)

                VStack(alignment: .leading, spacing: 40) {
                    Text("친구초대").font(.title2)
                    Text("앱 리뷰쓰기").font(.title2)
                    Text("오픈소스 라이선스").font(.title2)
                    Text("크몽 블로그").font(.title2)
                    Text("크몽 리서치").font(.title2)
                    Text("고객센터").font(.title2)
                }
                .padding()
            }
        }
    }
}
