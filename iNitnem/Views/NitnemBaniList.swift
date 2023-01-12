//
//  NitnemBaniList.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-12.
//

import SwiftUI


struct NitnemBaniList: View {
    var body: some View {

        VStack {
            NavigationLink(destination: JapjiSahib()){
                Text( "Japji Sahib")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10)
            }
            
            
            NavigationLink(destination: Jaap_Sahib()){
                Text( "Jaap Sahib")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Tav_Prasad_Savaiye()){
                Text( "Tav Prasad Savaiye")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Chaupai_Sahib()){
                Text( "Chaupai Sahib")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Anand_Sahib()){
                Text( "Anand Sahib")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Rehras_Sahib()){
                Text( "Rehras Sahib")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Kirtan_Sohila()){
                Text( "Kirtan Sohila")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
        }
        
    }
}


struct NitnemBaniList_Previews: PreviewProvider {
    static var previews: some View {
        NitnemBaniList()
    }
}

/*

NavigationLink(destination: NitnemBaniList()){
    Text( "Nitnem     ")
        .fontWeight(.heavy)
        .font(.system(size:35))
        .foregroundColor(Color.black)
        .navigationTitle(Text("Home"))
        .navigationBarHidden(true)
        .padding(.bottom)
        
}

NavigationLink(destination:SahajPaatCalculator()){

    Text("Tools")
        .fontWeight(.heavy)
        .font(.system(size:35))
        .foregroundColor(Color.black)
        .navigationTitle(Text("Home"))
        .navigationBarHidden(true)
        .padding(.bottom, 500)
*/
