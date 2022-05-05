//
//  UserPropertyView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct UserPropertyView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("0원")
                    .font(.title)
                    .bold()
                Text("크몽 캐시")
            }
            Spacer()
            Divider()
            Spacer()
            VStack {
                Text("12장")
                    .font(.title)
                    .bold()
                Text("할인쿠폰")
            }
            Spacer()
        }
    }
}

struct UserPropertyView_Previews: PreviewProvider {
    static var previews: some View {
        UserPropertyView()
    }
}
