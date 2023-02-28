//
//  ContentView.swift
//  iNitnem
//  Created by Manrav Singh Khosa
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {

        NavigationView{

            ZStack{
                
                VStack {
                    
                    Text("ਵਾਹਿਗੁਰੂ ਜੀ ਕਾ ਖਾਲਸਾ, ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Text ("ਵਾਹਿਗੁਰੂ ਜੀ ਕੀ ਫਤਿਹ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Image("Khanda-Black")
                        .resizable()
                        .frame(width: 80, height: 70)
                        .aspectRatio(contentMode: .fit)
                        
                    
                    NavigationLink(destination: NitnemBaniList()){
                        Text( "Nitnem     ")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(0)
                            .padding(.top, 20.0)
                            .fontDesign(.serif)
                    }
                    
                    
                    NavigationLink(destination:ToolMenu()){

                        Text("Your Journey")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .fontDesign(.serif)
                            .padding(.top, 5)
                        
                    }
                    
                    Button(action: {
                        self.showAlert = true
                    }) {
                        Text("Request Features")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .fontDesign(.serif)
                            .padding(.top, 5)
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Email Me! mkhosa22@gmail.com"))
                    }

                    Text("Daily History Fact")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .fontDesign(.serif
                        )
                        .padding(.top, 50)
                    
                    Image("Maharaja-Ranjit-Singh-Ji")
                        .resizable()
                        .frame(width: 170, height: 170)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Text("Maharaja Ranjit Singh was also known as Sher-e-Punjab (Lion of Punjab) for his unmatched bravery, leadership, and military prowess.")
                        .font(.subheadline)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 60)
                        .fontDesign(.serif
                        )
                    

                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


