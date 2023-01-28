//
//  Tav Prasad Savaiye.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-13.
//

import SwiftUI

struct Tav_Prasad_Savaiye: View {
    @State private var isNavigating = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                VStack {
                    Text("Hello, G!")
                        .font(.largeTitle)
                        .gesture(
                            DragGesture()
                                .onEnded { value in
                                    if value.translation.width < 100 {
                                        self.isNavigating = true
                                    }
                                }
                        )
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .transition(.scale)
            .sheet(isPresented: $isNavigating) {
                SecondPage()
            }
            }
        }
    }




struct SecondPage: View {
    var body: some View {
        VStack {
            Text("This is the second page")
        }
    }
}

struct Tav_Prasad_Savaiye_Previews: PreviewProvider {
    static var previews: some View {
        Tav_Prasad_Savaiye()
    }
}

