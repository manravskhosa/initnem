//
//  ToolMenu.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-13.
//

import SwiftUI

struct ToolMenu: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {

        Text("Coming Soon")
            .font(.largeTitle)
            .fontWeight(.black)
        
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.black)
                            Text("Main Menu")
                                .foregroundColor(.black)
                        }
                    })
                }
            }

    }
}

struct ToolMenu_Previews: PreviewProvider {
    static var previews: some View {
        ToolMenu()
    }
}
