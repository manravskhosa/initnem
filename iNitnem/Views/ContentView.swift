//
//  ContentView.swift
//  iNitnem
//  Created by Manrav Singh Khosa
//

import SwiftUI
import UIKit

struct dailyFact {
    let assetName: String
    let text: String
}

let dailyFacts = [dailyFact(assetName: "Maharaja-Ranjit-Singh-Ji", text: "Maharaja Ranjit Singh was also known as Sher-e-Punjab (Lion of Punjab) for his unmatched bravery, leadership, and military prowess."), dailyFact(assetName:"BabaBudhaJi", text: "Baba Buddha Ji was the first head granthi of Harmandir Sahib and played an enormous role in the construction of Gurduwaras across Punjab in the 1600s"),dailyFact(assetName:"BhaiKanaiyaJi", text: "Bhai Kanhaiya Ji served water to wounded soldiers from both sides during the Battle of Anandpur Sahib in 1704"),dailyFact(assetName:"BhaiTaruSinghJi", text: "Bhai Taru Singh Ji refused to convert to Islam and had his scalp cut off by Mughal officials in 1745"),dailyFact(assetName:"HariSinghNalwa", text: "Hari Singh Nalwa's fearless leadership was crucial to the establishment of the Sikh Empire"),dailyFact(assetName:"JallianwalaBaag", text: "In 1919, British soldiers opened fire on unarmed Sikhs peacefully protesting British laws in Amritsar's Jallianwala Bagh"),dailyFact(assetName:"MaiBhagoJi", text: "Mai Bhago Ji's fearless leadership in the Battle of Muktsar lead Sikhs to victory"),dailyFact(assetName:"WWISinghs", text: "Despite racism in the British Army, Sikh soldiers bravery and fighting skills were recognized and respected by allies and enemies alike in WWI")]

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
                        .padding(.top)
                    
                    let randomIndex = Calendar.current.ordinality(of: .day, in: .year, for: Date())! % dailyFacts.count
                    
                    let todaysFact = dailyFacts[randomIndex]
                    
                    GeometryReader { geometry in
                        Image(todaysFact.assetName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.8)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    }
                    
                    Text(todaysFact.text)
                        .font(.subheadline)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 60)
                        .padding(.bottom, 3)
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


