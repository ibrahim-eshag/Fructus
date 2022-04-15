//
//  OnboardingView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView{
            // Typically we don't display more than 5 or so items in an onboarding screen.
            ForEach(fruits[0...6]){item in
                FruitCardView(fruit: item)
            }
        } // Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
