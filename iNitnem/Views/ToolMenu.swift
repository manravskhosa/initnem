//
//  ToolMenu.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-13.
//

import SwiftUI

struct ToolMenu: View {
    var body: some View {

        NavigationLink(destination: SahajPaatCalculator()){
            Text( "ਸਹਿਜ ਪਾਠ      Ang Calculator")
                .fontWeight(.heavy)
                .font(.system(size:35))
                .foregroundColor(Color.black)
                .padding(.bottom)
        }

    }
}

struct ToolMenu_Previews: PreviewProvider {
    static var previews: some View {
        ToolMenu()
    }
}
