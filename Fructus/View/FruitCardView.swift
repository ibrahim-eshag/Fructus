//
//  FruitCardView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    @State private var isAnimating = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 10, x: 0, y: 0)
                    .scaleEffect(isAnimating ? 1.0 :0.6) //  the property to be Animated
                
                // FRUIT: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 22, x: 2, y: 2 )
                
                // FRUIT: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center).padding(.horizontal, 16)
                    .frame(maxWidth:480)
                
                // FRUIT: Button Start
                StartButtonView()
            } //: VSTACK
        }//: ZSTACK
        // MARK: - Animation should be Wrote before any other  view modifiers
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
        
        /* in SwiftUI Modifiers Precedence are important, so in this case it's better to have the frame before the rest of the Modifiers.*/
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

    // MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
