import SwiftUI

struct Tav_Prasad_Savaiye: View {
    
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
    
    let pg2 = [
        "ਜੀਤ ਫਿਰੇ ਸਭ ਦੇਸ ਦਿਸਾਨ ਕੋ ਬਾਜਤ ਢੋਲ ਮ੍ਰਿਦੰਗ ਨਗਾਰੇ ॥",
        "ਗੁੰਜਤ ਗੂੜ ਗਜਾਨ ਕੇ ਸੁੰਦਰ ਹਿੰਸਤ ਹੀ ਹਯ ਰਾਜ ਹਜਾਰੇ ॥",
        "ਭੂਤ ਭਵਿਖ ਭਵਾਨ ਕੇ ਭੂਪਤਿ ਕਉਨ ਗਨੈ ਨਹੀ ਜਾਤ ਬਿਚਾਰੇ ॥",
        "ਸ੍ਰੀਪਤਿ ਸ੍ਰੀ ਭਗਵਾਨ ਭਜੇ ਬਿਨੁ ਅੰਤ ਕੋ ਅੰਤ ਕੇ ਧਾਮ ਸਿਧਾਰੇ ॥੩॥੨੩॥",
        " ",
        "ਤੀਰਥ ਨ੍ਹਾਨ ਦਇਆ ਦਮ ਦਾਨ ਸੁ ਸੰਜਮ ਨੇਮ ਅਨੇਕ ਬਿਸੇਖੇ ॥",
        "ਬੇਦ ਪੁਰਾਨ ਕਤੇਬ ਕੁਰਾਨ ਜਿਮੀਨ ਜਮਾਨ ਸਬਾਨ ਕੇ ਪੇਖੇ ॥",
        "ਪਉਨ ਅਹਾਰ ਜਤੀ ਜਤ ਧਾਰਿ ਸਬੈ ਸੁ ਬਿਚਾਰ ਹਜਾਰਕ ਦੇਖੇ ॥",
        "ਸ੍ਰੀ ਭਗਵਾਨ ਭਜੇ ਬਿਨੁ ਭੂਪਤਿ ਏਕ ਰਤੀ ਬਿਨੁ ਏਕ ਨ ਲੇਖੈ ॥੪॥੨੪॥",
    ]
    
    let pg3 = [
    "",
    "",
    "",
    "",
    " ",
    "",
    "",
    "",
    "",
    ]
    
    let pg4 = [
    "",
    "",
    "",
    "",
    " ",
    "",
    "",
    "",
    "",
    ]
    
    let pg5 = [
    "",
    "",
    "",
    "",
    " ",
    "",
    "",
    "",
    "",
    ]
    
    
    @State private var currentAng = 1
    
    var body: some View {
        VStack {
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                
                    VStack{
                        if(currentAng == 1){
                            Text(pg1.joined(separator: "\n"))
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        }
                        
                        if(currentAng == 2){
                            Text(pg2.joined(separator: "\n"))
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
                        if value.translation.width < -5 {
                            self.currentAng = (self.currentAng + 1)
                        } else if value.translation.width > 5 {
                            self.currentAng = (self.currentAng - 1)
                        }
                    }
                }
        )

    }

}


struct Tav_Prasad_Savaiye_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Tav_Prasad_Savaiye()
        }
    }
}



