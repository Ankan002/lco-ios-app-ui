//
//  test-card.swift
//  LCO App Remastered
//
//  Created by Ankan Bhattacharya on 11/05/22.
//

import SwiftUI

struct TestCard: View {
    var test: TestModel
    var body: some View {
        ZStack{
            
            VStack{
                Text(test.testName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                Text(test.testPrice)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            }
            .offset(y: -60)
            
            Button(action: ({
                print("Button Clicked")
            }), label: {
                HStack{
                    Text("Take Test")
                        .fontWeight(.heavy)
                        .foregroundColor(test.testColor)
                    Image(systemName: "arrow.right.square")
                        .accentColor(test.testColor)
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(Color.white)
                .clipShape(Capsule())
            } )
            
            Text("LearnCodeOnline.in")
                .frame(width: 370, height: 30)
                .foregroundColor(test.testColor)
                .background(Color.white)
                .offset(y: 100)
                .rotationEffect(.init(degrees: 20))
            
        }
        .frame(width: 335, height: 275)
        .background(test.testColor)
        .cornerRadius(18)
    }
}

struct TestCard_Previews: PreviewProvider {
    static var previews: some View {
        TestCard(test: TestList[1])
            .previewLayout(.sizeThatFits)
    }
}
