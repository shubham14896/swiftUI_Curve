//
//  Demo1.swift
//  Curve
//
//  Created by Shubham on 23/11/20.
//

import SwiftUI

struct Demo1: View {
    @State private var change = false

    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                ContentView(yOffset: change ? 40 : 0)
                    .fill(Color.blue)
                    .frame(height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Text("hello world!")
                            .font(.largeTitle)
                            .fontWeight(.black)
                    )

                Spacer()

                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }

                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct Demo1_Previews: PreviewProvider {
    static var previews: some View {
        Demo1()
    }
}
