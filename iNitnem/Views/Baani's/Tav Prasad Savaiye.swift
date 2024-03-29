import SwiftUI

struct Tav_Prasad_Savaiye: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showFontSizeButtons: Bool = false
    @State private var fontSize: CGFloat = 32

    let gurbaani = [
                    "ਸ੍ਰਾਵਗ ਸੁਧ ਸਮੂਹ ਸਿਧਾਨ ਕੇ ਦੇਖਿ ਫਿਰਿਓ ਘਰਿ ਜੋਗਿ ਜਤੀ ਕੇ ॥ ਸੂਰ ਸੁਰਾਰਦਨ ਸੁਧ ਸੁਧਾਦਿਕ ਸੰਤ ਸਮੂਹ ਅਨੇਕ ਮਤੀ ਕੇ ॥ ਸਾਰੇ ਹੀ ਦੇਸ ਕੋ ਦੇਖਿ ਰਹਿਯੋ ਮਤ ਕੋਊ ਨ ਦੇਖੀਅਤ ਪ੍ਰਾਨ ਪਤੀ ਕੇ ॥ ਸ੍ਰੀ ਭਗਵਾਨ ਕੀ ਭਾਇ ਕ੍ਰਿਪਾ ਹੂੰ ਤੇ ਏਕ ਰਤੀ ਬਿਨੁ ਏਕ ਰਤੀ ਕੇ ॥੧॥੨੧॥\n",
                    "ਮਾਤੇ ਮਤੰਗ ਜਰੇ ਜਰ ਸੰਗਿ ਅਨੂਪ ਉਤੰਗ ਸੁਰੰਗ ਸਵਾਰੇ ॥ ਕੋਟਿ ਤੁਰੰਗ ਕੁਰੰਗ ਸੇ ਕੂਦਤ ਪਉਨ ਕੇ ਗਉਨ ਕੋ ਜਾਤ ਨਿਵਾਰੇ ॥ ਭਾਰੀ ਭੁਜਾਨ ਕੇ ਭੂਪ ਭਲੀ ਬਿਧਿ ਨਿਆਵਤ ਸੀਸ ਨ ਜਾਤ ਬਿਚਾਰੇ ॥ ਏਤੇ ਭਏ ਤੋ ਕਹਾ ਭਏ ਭੂਪਤਿ ਅੰਤ ਕੋ ਨਾਗੇ ਹੀ ਪਾਇ ਪਧਾਰੇ ॥੨॥੨੨॥\n",
                    "ਜੀਤ ਫਿਰੇ ਸਭ ਦੇਸ ਦਿਸਾਨ ਕੋ ਬਾਜਤ ਢੋਲ ਮ੍ਰਿਦੰਗ ਨਗਾਰੇ ॥ ਗੁੰਜਤ ਗੂੜ ਗਜਾਨ ਕੇ ਸੁੰਦਰ ਹਿੰਸਤ ਹੀ ਹਯ ਰਾਜ ਹਜਾਰੇ ॥ ਭੂਤ ਭਵਿਖ ਭਵਾਨ ਕੇ ਭੂਪਤਿ ਕਉਨ ਗਨੈ ਨਹੀ ਜਾਤ ਬਿਚਾਰੇ ॥ ਸ੍ਰੀਪਤਿ ਸ੍ਰੀ ਭਗਵਾਨ ਭਜੇ ਬਿਨੁ ਅੰਤ ਕੋ ਅੰਤ ਕੇ ਧਾਮ ਸਿਧਾਰੇ ॥੩॥੨੩॥\n",
                    "ਤੀਰਥ ਨ੍ਹਾਨ ਦਇਆ ਦਮ ਦਾਨ ਸੁ ਸੰਜਮ ਨੇਮ ਅਨੇਕ ਬਿਸੇਖੇ ॥ ਬੇਦ ਪੁਰਾਨ ਕਤੇਬ ਕੁਰਾਨ ਜਿਮੀਨ ਜਮਾਨ ਸਬਾਨ ਕੇ ਪੇਖੇ ॥ ਪਉਨ ਅਹਾਰ ਜਤੀ ਜਤ ਧਾਰਿ ਸਬੈ ਸੁ ਬਿਚਾਰ ਹਜਾਰਕ ਦੇਖੇ ॥ ਸ੍ਰੀ ਭਗਵਾਨ ਭਜੇ ਬਿਨੁ ਭੂਪਤਿ ਏਕ ਰਤੀ ਬਿਨੁ ਏਕ ਨ ਲੇਖੈ ॥੪॥੨੪॥\n",
                    "ਸੁਧ ਸਿਪਾਹ ਦੁਰੰਤ ਦੁਬਾਹ ਸੁ ਸਾਜਿ ਸਨਾਹ ਦੁਰਜਾਨ ਦਲੈਂਗੇ ॥ ਭਾਰੀ ਗੁਮਾਨ ਭਰੇ ਮਨ ਮੈ ਕਰਿ ਪਰਬਤ ਪੰਖ ਹਲੈ ਨ ਹਲੈਂਗੇ ॥ ਤੋਰਿ ਅਰੀਨ ਮਰੋਰਿ ਮਵਾਸਨ ਮਾਤੇ ਮਤੰਗਨ ਮਾਨ ਮਲੈਂਗੇ ॥ ਸ੍ਰੀਪਤਿ ਸ੍ਰੀ ਭਗਵਾਨ ਕ੍ਰਿਪਾ ਬਿਨੁ ਤਿਆਗਿ ਜਹਾਨੁ ਨਿਦਾਨ ਚਲੈਂਗੇ ॥੫॥੨੫॥\n",
                    "ਬੀਰ ਅਪਾਰ ਬਡੇ ਬਰਿਆਰ ਅਬਿਚਾਰਹਿ ਸਾਰ ਕੀ ਧਾਰ ਭਛਯਾ ॥ ਤੋਰਤ ਦੇਸ ਮਲਿੰਦ ਮਵਾਸਨ ਮਾਤੇ ਗਜਾਨ ਕੇ ਮਾਨ ਮਲਯਾ ॥ ਗਾੜੇ ਗੜਾਨ ਕੇ ਤੋੜਨਹਾਰ ਸੁ ਬਾਤਨ ਹੀ ਚਕ ਚਾਰ ਲਵਯਾ ॥ ਸਾਹਿਬੁ ਸ੍ਰੀ ਸਭ ਕੋ ਸਿਰਨਾਇਕ ਜਾਚਕ ਅਨੇਕ ਸੁ ਏਕ ਦਿਵਯਾ ॥੬॥੨੬॥\n",
                    "ਦਾਨਵ ਦੇਵ ਫਨਿੰਦ ਨਿਸਾਚਰ ਭੂਤ ਭਵਿਖ ਭਵਾਨ ਜਪੈਂਗੇ ॥ ਜੀਵ ਜਿਤੇ ਜਲ ਮੈ ਥਲ ਮੈ ਪਲ ਹੀ ਪਲ ਮੈ ਸਭ ਥਾਪ ਥਪੈਂਗੇ ॥ ਪੁੰਨ ਪ੍ਰਤਾਪਨ ਬਾਢਿ ਜੈਤ ਧੁਨਿ ਪਾਪਨ ਕੈ ਬਹੁ ਪੁੰਜ ਖਪੈਂਗੇ ॥ ਸਾਧ ਸਮੂਹ ਪ੍ਰਸੰਨ ਫਿਰੈ ਜਗਿ ਸਤ੍ਰ ਸਭੈ ਅਵਿਲੋਕਿ ਚਪੈਂਗੇ ॥੭॥੨੭॥\n",
                    "ਮਾਨਵ ਇੰਦ੍ਰ ਗਜਿੰਦ੍ਰ ਨਰਾਧਿਪ ਜੌਨ ਤ੍ਰਿਲੋਕ ਕੋ ਰਾਜੁ ਕਰੈਂਗੇ ॥ ਕੋਟਿ ਇਸਨਾਨ ਗਜਾਦਿਕ ਦਾਨਿ ਅਨੇਕ ਸੁਅੰਬਰ ਸਾਜਿ ਬਰੈਂਗੇ ॥ ਬ੍ਰਹਮ ਮਹੇਸੁਰ ਬਿਸਨੁ ਸਚੀਪਤਿ ਅੰਤਿ ਫਸੇ ਜਮ ਫਾਸਿ ਪਰੈਂਗੇ ॥ ਜੇ ਨਰ ਸ੍ਰੀਪਤਿ ਕੇ ਪ੍ਰਸ ਹੈਂ ਪਗ ਤੇ ਨਰ ਫੇਰਿ ਨ ਦੇਹ ਧਰੈਂਗੇ ॥੮॥੨੮॥\n",
                    "ਕਹਾ ਭਯੋ ਦੋਊ ਲੋਚਨ ਮੂੰਦ ਕੈ ਬੈਠਿ ਰਹਿਓ ਬਕ ਧ੍ਯਾਨ ਲਗਾਇਓ ॥ ਨ੍ਹਾਤ ਫਿਰਿਓ ਲੀਏ ਸਾਤ ਸਮੁੰਦ੍ਰਨ ਲੋਕ ਗਇਓ ਪਰਲੋਕ ਗਵਾਇਓ ॥ ਬਾਸੁ ਕੀਓ ਬਿਖਿਆਨ ਸੋ ਬੈਠ ਕੇ ਐਸੇ ਹੀ ਐਸ ਸੁ ਬੈਸ ਬਿਤਾਇਓ ॥ ਸਾਚੁ ਕਹੌ ਸੁਨ ਲੇਹੁ ਸਭੈ ਜਿਨ ਪ੍ਰੇਮ ਕੀਓ ਤਿਨ ਹੀ ਪ੍ਰਭੁ ਪਾਇਓ ॥੯॥੨੯॥\n",
                    "ਕਾਹੂੰ ਲੈ ਪਾਹਨ ਪੂਜ ਧਰਿਓ ਸਿਰਿ ਕਾਹੂੰ ਲੈ ਲਿੰਗੁ ਗਰੇ ਲਟਕਾਇਓ ॥ ਕਾਹੂੰ ਲਖਿਓ ਹਰਿ ਅਵਾਚੀ ਦਿਸਾ ਮਹਿ ਕਾਹੂੰ ਪਛਾਹ ਕੋ ਸੀਸ ਨਿਵਾਇਓ ॥ ਕੋਊ ਬੁਤਾਨ ਕੌ ਪੂਜਤ ਹੈ ਪਸੁ ਕੋਊ ਮ੍ਰਿਤਾਨ ਕੌ ਪੂਜਨ ਧਾਇਓ ॥ ਕੂਰ ਕ੍ਰਿਆ ਉਰਝਿਓ ਸਭ ਹੀ ਜਗੁ ਸ੍ਰੀ ਭਗਵਾਨ ਕੌ ਭੇਦੁ ਨ ਪਾਇਓ ॥੧੦॥੩੦॥\n"]
    
    var body: some View {
        VStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
            
                    printTPS(with: gurbaani);
                }
                
            }
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
                        Text("ਤ੍ਵ ਪ੍ਰਸਾਦਿ ਸਵੱਯੇ")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .padding(.trailing, 100)
                        Button(action: {
                                        showFontSizeButtons.toggle()
                                    }, label: {
                                        Image(systemName: "textformat.size")
                                            .foregroundColor(.black)
                                    })

                                    if showFontSizeButtons {
                                        Button(action: {
                                            fontSize -= 2
                                        }) {
                                            Image(systemName: "minus.circle")
                                                .foregroundColor(.black)
                                        }

                                        Button(action: {
                                            fontSize += 2

                                        }) {
                                            Image(systemName: "plus.circle")
                                                .foregroundColor(.black)
                                        }
                                    }
                    }
                })
            }
        }
    }
    
    @ViewBuilder
    func printTPS(with pageText: [String]) -> some View {
        VStack{
                ScrollView {
                    Text("ੴ ਸਤਿਗੁਰ ਪ੍ਰਸਾਦ ॥")
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                    Text("ਪਾਤਸ਼ਿਾਹੀ ੧੦ ॥")
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                    Text("ਤ੍ਵ ਪ੍ਰਸਾਦਿ ॥ ਸਵੱਯੇ ॥\n")
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                    Text(pageText.joined(separator: "\n"))
                        .font(.system(size: fontSize))
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                }
            }
        }
}


struct Tav_Prasad_Savaiye_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Tav_Prasad_Savaiye()
        }
    }
}

