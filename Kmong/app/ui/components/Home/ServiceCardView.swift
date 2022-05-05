//
//  ServiceCardView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct ServiceCardView: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 120)
            VStack(alignment: .leading) {
                Text("Content Description")
                    .font(.title2)
                    .lineLimit(2)
                    .padding(.bottom)
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("\(Int.random(in: 10...60))개의 평가")
                    Spacer()
                }
                HStack {
                    Text("50,000원")
                        .font(.title3)
                        .bold()
                    Spacer()
                    Image(systemName: "heart.fill")
                }
            }
            .frame(height: 120)
        }
    }
}

struct ServiceCardView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceCardView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
