import SwiftUI

func getPageView(for currentAng: Int, with pageText: [String]) -> some View {
    
    VStack{
        GeometryReader { geometry in
            let fontScaleWidth: CGFloat = min(geometry.size.width / 13, 32)
            let fontScaleHeight: CGFloat = min(geometry.size.height / 20, 32)
            let fontScale: CGFloat = min(fontScaleWidth, fontScaleHeight)
            Text(pageText.joined(separator: "\n"))
                .font(.custom("AmericanTypewriter", size: fontScale))
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing], fontScale/5)
        }
    }
}


let punjabiNumbers = [    1: "੧",    2: "੨",    3: "੩",    4: "੪",    5: "੫"]

struct Tav_Prasad_Savaiye: View {
    
    let pg1 = [
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
        "ਸੁਧ ਸਿਪਾਹ ਦੁਰੰਤ ਦੁਬਾਹ ਸੁ ਸਾਜਿ ਸਨਾਹ ਦੁਰਜਾਨ ਦਲੈਂਗੇ ॥",
        "ਭਾਰੀ ਗੁਮਾਨ ਭਰੇ ਮਨ ਮੈ ਕਰਿ ਪਰਬਤ ਪੰਖ ਹਲੈ ਨ ਹਲੈਂਗੇ ॥",
        "ਤੋਰਿ ਅਰੀਨ ਮਰੋਰਿ ਮਵਾਸਨ ਮਾਤੇ ਮਤੰਗਨ ਮਾਨ ਮਲੈਂਗੇ ॥",
        "ਸ੍ਰੀਪਤਿ ਸ੍ਰੀ ਭਗਵਾਨ ਕ੍ਰਿਪਾ ਬਿਨੁ ਤਿਆਗਿ ਜਹਾਨੁ ਨਿਦਾਨ ਚਲੈਂਗੇ ॥੫॥੨੫॥",
        " ",
        "ਬੀਰ ਅਪਾਰ ਬਡੇ ਬਰਿਆਰ ਅਬਿਚਾਰਹਿ ਸਾਰ ਕੀ ਧਾਰ ਭਛਯਾ ॥",
        "ਤੋਰਤ ਦੇਸ ਮਲਿੰਦ ਮਵਾਸਨ ਮਾਤੇ ਗਜਾਨ ਕੇ ਮਾਨ ਮਲਯਾ ॥",
        "ਗਾੜੇ ਗੜਾਨ ਕੇ ਤੋੜਨਹਾਰ ਸੁ ਬਾਤਨ ਹੀ ਚਕ ਚਾਰ ਲਵਯਾ ॥",
        "ਸਾਹਿਬੁ ਸ੍ਰੀ ਸਭ ਕੋ ਸਿਰਨਾਇਕ ਜਾਚਕ ਅਨੇਕ ਸੁ ਏਕ ਦਿਵਯਾ ॥੬॥੨੬॥",
    ]
    
    let pg4 = [
        "ਦਾਨਵ ਦੇਵ ਫਨਿੰਦ ਨਿਸਾਚਰ ਭੂਤ ਭਵਿਖ ਭਵਾਨ ਜਪੈਂਗੇ ॥",
        "ਜੀਵ ਜਿਤੇ ਜਲ ਮੈ ਥਲ ਮੈ ਪਲ ਹੀ ਪਲ ਮੈ ਸਭ ਥਾਪ ਥਪੈਂਗੇ ॥",
        "ਪੁੰਨ ਪ੍ਰਤਾਪਨ ਬਾਢਿ ਜੈਤ ਧੁਨਿ ਪਾਪਨ ਕੈ ਬਹੁ ਪੁੰਜ ਖਪੈਂਗੇ ॥",
        "ਸਾਧ ਸਮੂਹ ਪ੍ਰਸੰਨ ਫਿਰੈ ਜਗਿ ਸਤ੍ਰ ਸਭੈ ਅਵਿਲੋਕਿ ਚਪੈਂਗੇ ॥੭॥੨੭॥",
        " ",
        "ਮਾਨਵ ਇੰਦ੍ਰ ਗਜਿੰਦ੍ਰ ਨਰਾਧਿਪ ਜੌਨ ਤ੍ਰਿਲੋਕ ਕੋ ਰਾਜੁ ਕਰੈਂਗੇ ॥",
        "ਕੋਟਿ ਇਸਨਾਨ ਗਜਾਦਿਕ ਦਾਨਿ ਅਨੇਕ ਸੁਅੰਬਰ ਸਾਜਿ ਬਰੈਂਗੇ ॥",
        "ਬ੍ਰਹਮ ਮਹੇਸੁਰ ਬਿਸਨੁ ਸਚੀਪਤਿ ਅੰਤਿ ਫਸੇ ਜਮ ਫਾਸਿ ਪਰੈਂਗੇ ॥",
        "ਜੇ ਨਰ ਸ੍ਰੀਪਤਿ ਕੇ ਪ੍ਰਸ ਹੈਂ ਪਗ ਤੇ ਨਰ ਫੇਰਿ ਨ ਦੇਹ ਧਰੈਂਗੇ ॥੮॥੨੮॥",
    ]
    
    let pg5 = [
        "ਕਹਾ ਭਯੋ ਦੋਊ ਲੋਚਨ ਮੂੰਦ ਕੈ ਬੈਠਿ ਰਹਿਓ ਬਕ ਧ੍ਯਾਨ ਲਗਾਇਓ ॥",
        "ਨ੍ਹਾਤ ਫਿਰਿਓ ਲੀਏ ਸਾਤ ਸਮੁੰਦ੍ਰਨ ਲੋਕ ਗਇਓ ਪਰਲੋਕ ਗਵਾਇਓ ॥",
        "ਬਾਸੁ ਕੀਓ ਬਿਖਿਆਨ ਸੋ ਬੈਠ ਕੇ ਐਸੇ ਹੀ ਐਸ ਸੁ ਬੈਸ ਬਿਤਾਇਓ ॥",
        "ਸਾਚੁ ਕਹੌ ਸੁਨ ਲੇਹੁ ਸਭੈ ਜਿਨ ਪ੍ਰੇਮ ਕੀਓ ਤਿਨ ਹੀ ਪ੍ਰਭੁ ਪਾਇਓ ॥੯॥੨੯॥",
        " ",
        "ਕਾਹੂੰ ਲੈ ਪਾਹਨ ਪੂਜ ਧਰਿਓ ਸਿਰਿ ਕਾਹੂੰ ਲੈ ਲਿੰਗੁ ਗਰੇ ਲਟਕਾਇਓ ॥",
        "ਕਾਹੂੰ ਲਖਿਓ ਹਰਿ ਅਵਾਚੀ ਦਿਸਾ ਮਹਿ ਕਾਹੂੰ ਪਛਾਹ ਕੋ ਸੀਸ ਨਿਵਾਇਓ ॥",
        "ਕੋਊ ਬੁਤਾਨ ਕੌ ਪੂਜਤ ਹੈ ਪਸੁ ਕੋਊ ਮ੍ਰਿਤਾਨ ਕੌ ਪੂਜਨ ਧਾਇਓ ॥",
        "ਕੂਰ ਕ੍ਰਿਆ ਉਰਝਿਓ ਸਭ ਹੀ ਜਗੁ ਸ੍ਰੀ ਭਗਵਾਨ ਕੌ ਭੇਦੁ ਨ ਪਾਇਓ ॥੧੦॥੩੦॥",
    ]
    
    
    @State private var currentAng = 1
    
    var body: some View {
        VStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Text("ਤ੍ਵ ਪ੍ਰਸਾਦਿ ਸਵੱਯੇ ")
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer(minLength:35)
                    
                    if(currentAng == 1){
                        getPageView(for:1, with: pg1);
                    }
                    if(currentAng == 2){
                        getPageView(for:2, with: pg2);
                    }
                    if(currentAng == 3){
                        getPageView(for:3, with: pg3);
                    }
                    if(currentAng == 4){
                        getPageView(for:4, with: pg4);
                    }
                    if(currentAng == 5){
                        getPageView(for:5, with: pg5);
                    }
                    
                    Text(punjabiNumbers[currentAng]!)
                        .font(.largeTitle)
                                    .fontWeight(.heavy)
            }

        }
    }

        .gesture(
            DragGesture(minimumDistance: 5)
                .onEnded { value in
                    withAnimation(.easeInOut(duration: 0.3)) {
                        if value.translation.width < -5 {
                            if(currentAng < 5){
                                self.currentAng = (self.currentAng + 1)
                            }
                        } else if value.translation.width > 5 {
                            if(currentAng > 1){
                                self.currentAng = (self.currentAng - 1)
                            }
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

