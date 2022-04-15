//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI
// MARK: - we have put theis view file here, because it's a main file in the app

struct FruitDetailView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators:false){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITILE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        // SUBHEADING
                        Text("Learn More about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }// Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640, alignment: .center)
                } //VStack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }// ScrollView
            .edgesIgnoringSafeArea(.top)
        } // NavigationView
    }
}

// MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[3])
    }
}
