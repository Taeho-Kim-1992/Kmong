//
//  TabItemsView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct TabItemsView: BaseSwiftUI {
    private let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: 30, alignment: nil),
        GridItem(.fixed(50), spacing: 30, alignment: nil),
        GridItem(.fixed(50), spacing: 30, alignment: nil),
        GridItem(.fixed(50), spacing: 30, alignment: nil),
    ]

    var body: some View {
        TabView(selection: .constant(1)) {
            VStack {
                HStack(spacing: 5) {
                    Button(action: {}, label: {
                        Text("Business")
                    })
                    Button(action: {}, label: {
                        Text("N Job / Career")
                    })
                    Button(action: {}, label: {
                        Text("Life style")
                    })
                    Spacer()
                }
                .padding(.leading)

                LazyVGrid(columns: columns, alignment: .center, spacing: 20) {
                    ForEach(0 ..< 10) { index in
                        VStack {
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Text("\(index) item")
                        }
                    }
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
                .padding()
            }
        }
    }
}

struct TabItemsView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemsView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
