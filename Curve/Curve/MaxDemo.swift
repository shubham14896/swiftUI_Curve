//
//  MaxDemo.swift
//  Curve
//
//  Created by Shubham on 23/11/20.
//

import SwiftUI

struct MaxDemo: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("demo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipShape(ContentView(yOffset: 40))
                    .shadow(radius: 12, y: 10)

                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct MaxDemo_Previews: PreviewProvider {
    static var previews: some View {
        MaxDemo()
    }
}
