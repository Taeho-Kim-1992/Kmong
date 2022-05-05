//
//  CarouselCards.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct CarouselCards: BaseSwiftUI {
    private let horizontalScroll: Axis.Set = .horizontal

    var body: some View {
        TabView {
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: screenWidth - 20, height: 150)
                    .foregroundColor(Color.green)
                    .overlay(Text("\(index)"))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct CarouselCards_Previews: PreviewProvider {
    static var previews: some View {
        CarouselCards()
    }
}
