//
//  Chaupai Sahib.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-13.
//

import SwiftUI

struct Chaupai_Sahib: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
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
                            Text("Nitnem")
                                .foregroundColor(.black)
                        }
                    })
                }
            }
    }
}

struct Chaupai_Sahib_Previews: PreviewProvider {
    static var previews: some View {
        Chaupai_Sahib()
    }
}
