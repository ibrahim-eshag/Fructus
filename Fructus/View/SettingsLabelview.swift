//
//  SettingsLabelview.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

struct SettingsLabelview: View {
    // MARK: - Properties
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - Preview
struct SettingsLabelview_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelview(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
