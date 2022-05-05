//
//  CustomNavigatonBar.swift
//  Kmong
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

protocol NavBarProtocol: View { }

struct CustomNavigatonBar<Leading: View, Center: View, Trailing: View>: NavBarProtocol {
    private var leading: () -> Leading
    private var center: () -> Center
    private var trailing: () -> Trailing

    init(@ViewBuilder leading:  @escaping () -> Leading,
         @ViewBuilder center:   @escaping () -> Center,
         @ViewBuilder trailing: @escaping () -> Trailing) {
        self.leading = leading
        self.center = center
        self.trailing = trailing
    }

    var body: some View {
        ZStack {
            // leading
            HStack {
                leading()
                    .padding(.leading, 10)
                Spacer()
            }

            // center
            HStack {
                center()
            }

            // trailing
            HStack {
                Spacer()
                trailing()
                    .padding(.trailing, 10)
            }
        }
        .frame(height: 40)
    }
}

struct CustomNavigatonBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomNavigatonBar(
                leading: {
                    Text("Liked")
                },
                center: { },
                trailing: {
                    Text("Filter")
                })

            CustomNavigatonBar(
                leading: {
                    Image(systemName: "bell")
                        .fixedSize()
                },
                center: {
                    Text("FakeMong").font(.title)
                },
                trailing: {
                    Text("")
                })
        }
        .previewLayout(.sizeThatFits)
    }
}
