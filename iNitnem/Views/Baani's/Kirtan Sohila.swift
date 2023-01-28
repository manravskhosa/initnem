//
//  Kirtan Sohila.swift
//  iNitnem
//
//  Created by Manrav Singh Khosa on 2023-01-13.
//

import SwiftUI

struct Kirtan_Sohila: View {
    let pg1 = [
        "ਤ੍ਵਪ੍ਰਸਾਦਿ ॥ ਸ੍ਵੈਯੇ ॥",
        "ਸ੍ਰਾਵਗ ਸੁਧ ਸਮੂਹ ਸਿਧਾਨ ਕੇ ਦੇਖਿ ਫਿਰਿਓ ਘਰਿ ਜੋਗਿ ਜਤੀ ਕੇ ॥",
        "ਸੂਰ ਸੁਰਾਰਦਨ ਸੁਧ ਸੁਧਾਦਿਕ ਸੰਤ ਸਮੂਹ ਅਨੇਕ ਮਤੀ ਕੇ ॥",
        "ਸਾਰੇ ਹੀ ਦੇਸ ਕੋ ਦੇਖਿ ਰਹਿਯੋ ਮਤ ਕੋਊ ਨ ਦੇਖੀਅਤ ਪ੍ਰਾਨ ਪਤੀ ਕੇ ॥",
        "ਸ੍ਰੀ ਭਗਵਾਨ ਕੀ ਭਾਇ ਕ੍ਰਿਪਾ ਹੂੰ ਤੇ ਏਕ ਰਤੀ ਬਿਨੁ ਏਕ ਰਤੀ ਕੇ ॥੧॥੨੧॥",
        " ",
        "ਮਾਤੇ ਮਤੰਗ ਜਰੇ ਜਰ ਸੰਗਿ ਅਨੂਪ ਉਤੰਗ ਸੁਰੰਗ ਸਵਾਰੇ ॥",
        "ਕੋਟਿ ਤੁਰੰਗ ਕੁਰੰਗ ਸੇ ਕੂਦਤ ਪਉਨ ਕੇ ਗਉਨ ਕੋ ਜਾਤ ਨਿਵਾਰੇ ॥",
        "ਭਾਰੀ ਭੁਜਾਨ ਕੇ ਭੂਪ ਭਲੀ ਬਿਧਿ ਨਿਆਵਤ ਸੀਸ ਨ ਜਾਤ ਬਿਚਾਰੇ ॥",
        "ਏਤੇ ਭਏ ਤੋ ਕਹਾ ਭਏ ਭੂਪਤਿ ਅੰਤ ਕੋ ਨਾਗੇ ਹੀ ਪਾਇ ਪਧਾਰੇ ॥੨॥੨੨॥",
    ]
    @State private var currentAng = 0
    @State private var showAng = false
    
    var body: some View {
        VStack {
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                
                if showAng {
                    VStack{
                        Text(pg1.joined(separator: "\n"))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            
                    }
                }
            }
        }
        .gesture(
            DragGesture(minimumDistance: 5)
                .onEnded { value in
                    withAnimation {
                        self.showAng = true
                        self.currentAng = (self.currentAng + 1) % self.pg1.count
                    }
                }
        )
    }
}

struct Kirtan_Sohila_Previews: PreviewProvider {
    static var previews: some View {
        Kirtan_Sohila()
    }
}
