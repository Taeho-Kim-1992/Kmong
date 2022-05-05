//
//  UserPurchaseInfoView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct UserPurchaseInfoView: View {
    var body: some View {
                Section(
                    content: {
                        // Card
                        VStack {
                            Image(systemName: "exclamationmark.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("어머, 구매중인 주문이 없어요")
                        }
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                        )
                        .padding(.horizontal)

                        VStack {
                            HStack {
                                Image(systemName: "creditcard")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("결제/환불 내역")
                                    .font(.title2)
                            }
                            HStack {
                                Image(systemName: "ticket")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("쿠폰/프로모션")
                                    .font(.title2)
                            }
                            HStack {
                                Image(systemName: "k.circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("크몽 캐시 충전")
                                    .font(.title2)
                            }
                        }
                        .padding(.leading)
                    },
                    header: {
                        HStack(alignment: .bottom) {
                            Text("구매중인 주문")
                                .font(.title3)
                            Spacer()
                            Text("전체보기")
                        }
                        .padding(.horizontal)
                    })
    }
}

struct UserPurchaseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserPurchaseInfoView()
    }
}
