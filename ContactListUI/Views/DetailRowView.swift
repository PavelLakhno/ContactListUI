//
//  DetailRowView.swift
//  ContactListUI
//
//  Created by Павел Лахно on 23.12.2022.
//

import SwiftUI

struct DetailRowView: View {
    let image: String
    let info: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(info)
        }
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(image: "tray.fill", info: "information")
    }
}
