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
                Text( "ਜਪੁਜੀ ਸਾਹਿਬ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10)
            }
            
            
            NavigationLink(destination: Jaap_Sahib()){
                Text( "ਜਾਪ ਸਾਹਿਬ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Tav_Prasad_Savaiye()){
                Text( "ਤ੍ਵ ਪ੍ਰਸਾਦਿ ਸਵੱਯੇ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Chaupai_Sahib()){
                Text( "ਚੌਪਈ ਸਾਹਿਬ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Anand_Sahib()){
                Text( "ਅਨੰਦ ਸਾਹਿਬ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Rehras_Sahib()){
                Text( "ਰਹਿਰਾਸ ਸਾਹਿਬ")
                    .fontWeight(.heavy)
                    .font(.system(size:35))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
            }
            
            NavigationLink(destination: Kirtan_Sohila()){
                Text( "ਕੀਰਤਨ ਸੋਹਿਲਾ")
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
