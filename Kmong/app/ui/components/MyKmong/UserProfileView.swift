//
//  UserProfileView.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct UserProfileView: View {
    @State var identity: UserIdentity = .client

    enum UserIdentity {
        case client,
             expert

        var comment: String {
            switch self {
            case .client: return "의뢰인 메뉴로 전환"
            case .expert: return "전문가 메뉴로 전환"
            }
        }

        func not() -> Self {
            switch self {
            case .client: return .expert
            case .expert: return .client
            }
        }
    }

    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.gray)
                .frame(width: 90, height: 90)
                .overlay(
                    Image(systemName: "person.fill")
                        .resizable()
                        .padding(20)
                )
            VStack(alignment: .leading, spacing: 5) {
                // Client || Expert
                Text(identity == .client ? "의뢰인" : "전문가")
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.blue)
                Text("부들부들한우정9923")
                    .font(.title2)
                    .bold()
                Button(
                    action: { },
                    label: {
                        HStack {
                            Image(systemName: "arrow.left.arrow.right")
                            Text(identity.not().comment)
                        }
                        .foregroundColor(.black)
                        .padding(3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 2)
                        )
                    })
            }
            Spacer()
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
