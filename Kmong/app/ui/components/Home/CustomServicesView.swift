//
//  CustomServicesView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct CustomServicesView: View {
    var title: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    RoundedRectangle(cornerRadius: 20).frame(width: 150, height: 200)
                        .padding(.leading)
                    RoundedRectangle(cornerRadius: 20).frame(width: 150, height: 200)
                    RoundedRectangle(cornerRadius: 20).frame(width: 150, height: 200)
                    RoundedRectangle(cornerRadius: 20).frame(width: 150, height: 200)
                        .padding(.trailing)
                }
            }
        }
    }
}

struct CustomServicesView_Previews: PreviewProvider {
    static var previews: some View {
        CustomServicesView(title: "title")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
