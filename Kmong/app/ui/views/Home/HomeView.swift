//
//  HomeView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct HomeView: BaseSwiftUI {
    @ObservedObject var vm = HomeViewModel()

    @Binding var currentTab: TabType

    var body: some View {
        CommonFrameView(
            navigationBar: getNavigationBar,
            mainContents: getMainContents)

    }// Scroll View done

    private func getNavigationBar() -> some NavBarProtocol {
        return CustomNavigatonBar(leading: getNavLeading,
                                  center: getNavCenter,
                                  trailing: {})
    }

    private func getNavLeading() -> some View {
        Image(systemName: "bell")
            .resizable()
            .frame(width: 30, height: 30)
            .padding(.horizontal)
            .onTapGesture {
                self.currentTab = .notification
            }
    }

    private func getNavCenter() -> some View {
        Text("Kmong")
            .font(.title2)
            .bold()
    }

    func getMainContents() -> some View {
        ScrollView {
            // Carosuel
            CarouselCards()

            // Keyword
            KeywordsView()
                .padding()

            TabItemsView()
                .frame(height: screenHeight / 2)

            CustomServicesView(title: "주목할만한 크몽의 맞춤 서비스")
                .padding(.bottom)

            // 카테고리
            VStack(alignment: .leading) {
                Section(
                    content: {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                getButtom(title: "성우")
                                    .padding(.leading)
                                getButtom(title: "일반번역")
                                getButtom(title: "템플릿")
                                getButtom(title: "창업 컨설팅")
                                getButtom(title: "데이터")
                                    .padding(.trailing)
                            }
                        }
                        .padding(.bottom, 40)
                    },
                    header: {
                        Text("관심 카테고리")
                            .font(.headline)
                            .padding(.leading)
                    })

                // 추천하는 카테고리
                Section(
                    content: {
                        VStack {
                            HStack(alignment: .center) {
                                getButtom(title: "투잡 재테크 컨설팅")
                                getButtom(title: "창업 전자책")
                                getButtom(title: "N잡 스쿨")
                            }
                            HStack {
                                getButtom(title: "직무스킬 전자책")
                                getButtom(title: "금융 제태크 VOD")
                            }
                        }
                        .padding(.bottom, 40)
                    },
                    header: {
                        Text("추천하는 카테고리")
                            .font(.headline)
                    })
                    .padding(.leading)

                Section(
                    content: {
                        VStack {
                            ForEach(0 ..< 5) { _ in
                                ServiceCardView().frame(height: 120)
                            }
                        }
                    },
                    header: {
                        Text("관심사가 비슷한 회원들이 본 서비스")
                            .font(.headline)
                    })
                    .padding(.horizontal)
                    .padding(.bottom, 40)

                Section(
                    content: {
                        VStack {
                            ForEach(0 ..< 5) { _ in
                                ServiceCardView().frame(height: 120)
                            }
                        }
                    },
                    header: {
                        Text("지금 다른 사람들이 많이 보는 서비스")
                            .font(.headline)
                    })
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                CustomServicesView(title: "최근 본 서비스와 관련된 서비스")
                    .padding(.bottom)

                CustomServicesView(title: "최근 본 서비스")
                    .padding(.bottom)

                // Footer
                VStack(spacing: 0) {
                    Divider()
                    HStack(spacing: 30) {
                        Text("인재영입")
                        Text("서비스소개")
                        Text("FAQ")
                        Text("고객센터")
                    }
                    Divider()
                }
            }
        }
    }
}

private func getButtom(title: String) -> some View {
    Button(action:{}, label: {
        Text(title)
            .font(.callout)
            .foregroundColor(.black)
            .padding()
            .frame(height: 40)
            .background(RoundedRectangle(cornerRadius: 5)
                            .fill(Color.gray))
    })
}
