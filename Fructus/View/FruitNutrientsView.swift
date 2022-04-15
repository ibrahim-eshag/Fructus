//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugger", "Fat","Protein","Vitamins","Minerals"]
    
    // MARK: - body
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutrional value per 100g"){
                ForEach(0 ..< nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                       
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }// GroupBox
    }
}


// MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[3])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
