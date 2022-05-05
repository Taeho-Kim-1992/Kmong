//
//  UserProjectView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct UserProjectView: View {
    var body: some View {
                Section(
                    content: {
                        VStack {
                            HStack {
                                Spacer()
                                Text("요구사항을 작성하시고,\n딱 맞는 전문가와 거래를 진행하세요!")
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                            .frame(height: 80)
                            Button(
                                action: {},
                                label: {
                                    HStack {
                                        Spacer()
                                        Text("프로젝트 문의하기")
                                            .foregroundColor(.black)
                                            .font(.title3)
                                            .bold()
                                            .padding(.vertical, 5)
                                        Spacer()

                                    }
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(.gray, lineWidth: 2)
                                    )
                                    .padding(.horizontal, 40)
                                })
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )
                        .padding(.horizontal)
                    },
                    header: {
                        Text("내 프로젝트")
                            .font(.title3)
                            .bold()
                            .padding(.leading)
                    })
    }
}

struct UserProjectView_Previews: PreviewProvider {
    static var previews: some View {
        UserProjectView()
    }
}
