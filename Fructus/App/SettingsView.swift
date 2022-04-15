//
//  SettingsView.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding")  var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    
                    // MARK: - Section I
                    GroupBox(label: SettingsLabelview(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fats, sodium, and calories, None have cholestrol, fruis are sources of maby essential butrious, including potasium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section II
                    GroupBox(label: SettingsLabelview(labelText: "Customization", labelImage: "paintbrish")
                    ){
                       Divider()
                        Text("If you wish, you can start the appliaction by toggle thes witch in this box, that way it will start the onboarding screen and  you will see the welcome screen agian.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            Text("Resart".uppercased())
                        }
                    }
                    
                    // MARK: - Section III
                    GroupBox(label: SettingsLabelview(labelText: "Application", labelImage: "apps.iphone")
                    ){
                       
                        SettingsRowView(name: "Develper",content: "Amged")
                        SettingsRowView(name: "Designer",content: "Ibrahim Eshag")
                        SettingsRowView(name: "Website",linkLabel: "Ibrahim website", linkDestination: "ibrahimeshag.com")
                    }
                    
                } // VStack
                .navigationBarTitle(Text("Settings"),displayMode: .inline)
                .navigationBarItems(trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            } //: ScrollView
        } //: Navigation
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
