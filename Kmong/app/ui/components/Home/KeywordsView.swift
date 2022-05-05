//
//  KeywordsView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct KeywordsView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.yellow)
            Text("Keyword")
                .font(.title2)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 2)
        )
    }
}

struct KeywordsView_Previews: PreviewProvider {
    static var previews: some View {
        KeywordsView()
    }
}
