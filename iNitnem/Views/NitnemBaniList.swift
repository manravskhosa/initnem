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
            Text("ਨਿਤਨੇਮ ਬਾਨੀ")
                .fontWeight(.heavy)
                .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 390 ? 33 : 50))
                .foregroundColor(Color.black)
                .padding(.trailing, UIScreen.main.bounds.width < 390 ? 190 : 140)

            VStack{
                
                NavigationLink(destination: JapjiSahib()){
                    Text("ਜਪੁਜੀ ਸਾਹਿਬ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }


                
                NavigationLink(destination: Tav_Prasad_Savaiye()){
                    Text( "ਤ੍ਵ ਪ੍ਰਸਾਦਿ ਸਵੱਯੇ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Chaupai_Sahib()){
                    Text( "ਚੌਪਈ ਸਾਹਿਬ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Anand_Sahib()){
                    Text( "ਅਨੰਦ ਸਾਹਿਬ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Rehras_Sahib()){
                    Text( "ਰਹਿਰਾਸ ਸਾਹਿਬ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                NavigationLink(destination: Kirtan_Sohila()){
                    Text( "ਕੀਰਤਨ ਸੋਹਿਲਾ")
                        .fontWeight(.heavy)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.width < 414 ? 32 : 42))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .padding(.top)
                        .padding(.horizontal, 70)
                }
                
                Image("Flower")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
            }
            // Add a border around the VStack
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 1)
                    .stroke(Color(red: 40/255, green: 10/255, blue: 255/255), lineWidth: 10)
            )
        }
    }
    
    
    struct NitnemBaniList_Previews: PreviewProvider {
        static var previews: some View {
            NitnemBaniList()
        }
    }
}
