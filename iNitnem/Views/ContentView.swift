//
//  ContentView.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
                
        NavigationView{
            ZStack{

                
                
                VStack {
                    Text("Welcome, Ji 🙏🏼")
                        .fontWeight(.heavy)
                        .font(.system(size:35))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 90)
                        .padding(.trailing, 90)
                        .padding(.bottom, 70)
                    
                    NavigationLink(destination: NitnemBaniList()){
                        Text( "Nitnem     ")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(0)
                            .padding(.vertical)
                            .fontDesign(.serif)
                    }
                    
                    NavigationLink(destination: NitnemBaniList()){
                        Text( "More Baani's     ")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                            .padding(.bottom, 10)
                            
                    }
                    
                    NavigationLink(destination:ToolMenu()){

                        Text("Tools")
                            .fontWeight(.heavy)
                            .font(.system(size:30))
                            .foregroundColor(Color.black)
                            .fontDesign(.serif)
                            .padding(.bottom, 80)
                        
                    }
                    
                 Text("DID YOU KNOW")
                        .fontWeight(.heavy)
                        .fontDesign(.serif
                        )
                        .padding(.bottom, 400)
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




