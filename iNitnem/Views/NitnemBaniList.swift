//
//  NitnemBaniList.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-12.
//

import SwiftUI

struct NitnemBaniList: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack {

            VStack{
        
                NavigationLink(destination: JapjiSahib()){
                    Text("ਜਪੁਜੀ ਸਾਹਿਬ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Jaap_Sahib()){
                    Text("ਜਾਪ ਸਾਹਿਬ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }


                
                NavigationLink(destination: Tav_Prasad_Savaiye()){
                    Text( "ਤ੍ਵ ਪ੍ਰਸਾਦਿ ਸਵੱਯੇ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Chaupai_Sahib()){
                    Text( "ਚੌਪਈ ਸਾਹਿਬ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Anand_Sahib()){
                    Text( "ਅਨੰਦ ਸਾਹਿਬ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Rehras_Sahib()){
                    Text( "ਰਹਿਰਾਸ ਸਾਹਿਬ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Kirtan_Sohila()){
                    Text( "ਕੀਰਤਨ ਸੋਹਿਲਾ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                Image("Flower")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
            }
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
                            Text("ਨਿਤਨੇਮ ਬਾਨੀ")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                    })
                }
            }
            
        }
    }
    
    
    struct NitnemBaniList_Previews: PreviewProvider {
        static var previews: some View {
            NitnemBaniList()
        }
    }
}
