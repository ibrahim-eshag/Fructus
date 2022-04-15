//
//  ContentView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct ContentView: View {
   // MARK: Properties
    @State private var isShowningSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
  // MARK: Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
              Button(action: {
                isShowningSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
                }// Button
                .sheet(isPresented: $isShowningSettings, content: {
                    SettingsView()
                })
            )
        }
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(fruits: fruitsData)
        }
    }
}
