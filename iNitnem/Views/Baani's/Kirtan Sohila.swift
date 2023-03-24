import SwiftUI

struct Kirtan_Sohila: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var fontSize: CGFloat = 32
    @State private var showFontSizeButtons: Bool = false
    
    let gurbaani = [ "ਜੈ ਘਰਿ ਕੀਰਤਿ ਆਖੀਐ ਕਰਤੇ ਕਾ ਹੋਇ ਬੀਚਾਰੋ ॥ ਤਿਤੁ ਘਰਿ ਗਾਵਹੁ ਸੋਹਿਲਾ ਸਿਵਰਿਹੁ ਸਿਰਜਣਹਾਰੋ ॥੧॥\n\nਤੁਮ ਗਾਵਹੁ ਮੇਰੇ ਨਿਰਭਉ ਕਾ ਸੋਹਿਲਾ ॥ ਹਉ ਵਾਰੀ ਜਿਤੁ ਸੋਹਿਲੈ ਸਦਾ ਸੁਖੁ ਹੋਇ ॥੧॥ ਰਹਾਉ ॥\n\nਨਿਤ ਨਿਤ ਜੀਅੜੇ ਸਮਾਲੀਅਨਿ ਦੇਖੈਗਾ ਦੇਵਣਹਾਰੁ ॥ ਤੇਰੇ ਦਾਨੈ ਕੀਮਤਿ ਨਾ ਪਵੈ ਤਿਸੁ ਦਾਤੇ ਕਵਣੁ ਸੁਮਾਰੁ ॥੨॥\nਸੰਬਤਿ ਸਾਹਾ ਲਿਖਿਆ ਮਿਲਿ ਕਰਿ ਪਾਵਹੁ ਤੇਲੁ ॥ ਦੇਹੁ ਸਜਣ ਅਸੀਸੜੀਆ ਜਿਉ ਹੋਵੈ ਸਾਹਿਬ ਸਿਉ ਮੇਲੁ ॥੩॥\n\nਘਰਿ ਘਰਿ ਏਹੋ ਪਾਹੁਚਾ ਸਦੜੇ ਨਿਤ ਪਵੰਨਿ ॥ ਸਦਣਹਾਰਾ ਸਿਮਰੀਐ ਨਾਨਕ ਸੇ ਦਿਹ ਆਵੰਨਿ ॥੪॥੧॥\n\nਰਾਗੁ ਆਸਾ ਮਹਲਾ ੧ ॥\n\nਛਿਅ ਘਰ ਛਿਅ ਗੁਰ ਛਿਅ ਉਪਦੇਸ ॥ ਗੁਰੁ ਗੁਰੁ ਏਕੋ ਵੇਸ ਅਨੇਕ ॥੧॥ ਬਾਬਾ ਜੈ ਘਰਿ ਕਰਤੇ ਕੀਰਤਿ ਹੋਇ ॥ ਸੋ ਘਰੁ ਰਾਖੁ ਵਡਾਈ ਤੋਇ ॥੧॥ ਰਹਾਉ ॥\n\nਵਿਸੁਏ ਚਸਿਆ ਘੜੀਆ ਪਹਰਾ ਥਿਤੀ ਵਾਰੀ ਮਾਹੁ ਹੋਆ ॥ ਸੂਰਜੁ ਏਕੋ ਰੁਤਿ ਅਨੇਕ ॥ ਨਾਨਕ ਕਰਤੇ ਕੇ ਕੇਤੇ ਵੇਸ ॥੨॥੨॥\n\nਰਾਗੁ ਧਨਾਸਰੀ ਮਹਲਾ ੧ ॥\n\nਗਗਨ ਮੈ ਥਾਲੁ ਰਵਿ ਚੰਦੁ ਦੀਪਕ ਬਨੇ ਤਾਰਿਕਾ ਮੰਡਲ ਜਨਕ ਮੋਤੀ ॥ ਧੂਪੁ ਮਲਆਨਲੋ ਪਵਣੁ ਚਵਰੋ ਕਰੇ ਸਗਲ ਬਨਰਾਇ ਫੂਲੰਤ ਜੋਤੀ ॥੧॥\n\nਕੈਸੀ ਆਰਤੀ ਹੋਇ ॥ ਭਵ ਖੰਡਨਾ ਤੇਰੀ ਆਰਤੀ ॥ ਅਨਹਤਾ ਸਬਦ ਵਾਜੰਤ ਭੇਰੀ ॥੧॥ ਰਹਾਉ ॥\n\nਸਹਸ ਤਵ ਨੈਨ ਨਨ ਨੈਨ ਹਹਿ ਤੋਹਿ ਕਉ ਸਹਸ ਮੂਰਤਿ ਨਨਾ ਏਕ ਤਦ਼ਹੀ ॥ ਸਹਸ ਪਦ ਬਿਮਲ ਨਨ ਏਕ ਪਦ ਗੰਧ ਬਿਨੁ ਸਹਸ ਤਵ ਗੰਧ ਇਵ ਚਲਤ ਮੋਹੀ ॥੨॥\n\nਸਭ ਮਹਿ ਜੋਤਿ ਜੋਤਿ ਹੈ ਸੋਇ ॥ ਤਿਸ ਦੈ ਚਾਨਣਿ ਸਭ ਮਹਿ ਚਾਨਣੁ ਹੋਇ ॥ ਗੁਰ ਸਾਖੀ ਜੋਤਿ ਪਰਗਟੁ ਹੋਇ ॥ ਜੋ ਤਿਸੁ ਭਾਵੈ ਸੁ ਆਰਤੀ ਹੋਇ ॥੩॥\n\nਹਰਿ ਚਰਣ ਕਵਲ ਮਕਰੰਦ ਲੋਭਿਤ ਮਨੋ ਅਨਦਿਨਦ਼ ਮੋਹਿ ਆਹੀ ਪਿਆਸਾ ॥ ਕ੍ਰਿਪਾ ਜਲੁ ਦੇਹਿ ਨਾਨਕ ਸਾਰਿੰਗ ਕਉ ਹੋਇ ਜਾ ਤੇ ਤੇਰੈ ਨਾਇ ਵਾਸਾ ॥੪॥੩॥\n\nਰਾਗੁ ਗਉੜੀ ਪੂਰਬੀ ਮਹਲਾ ੪ ॥\n\nਕਾਮਿ ਕਰੋਧਿ ਨਗਰੁ ਬਹੁ ਭਰਿਆ ਮਿਲਿ ਸਾਧੂ ਖੰਡਲ ਖੰਡਾ ਹੇ ॥ ਪੂਰਬਿ ਲਿਖਤ ਲਿਖੇ ਗੁਰੁ ਪਾਇਆ ਮਨਿ ਹਰਿ ਲਿਵ ਮੰਡਲ ਮੰਡਾ ਹੇ ॥੧॥\n\nਕਰਿ ਸਾਧੂ ਅੰਜੁਲੀ ਪੁਨੁ ਵਡਾ ਹੇ ॥ ਕਰਿ ਡੰਡਉਤ ਪੁਨੁ ਵਡਾ ਹੇ ॥੧॥ ਰਹਾਉ ॥\n\nਸਾਕਤ ਹਰਿ ਰਸ ਸਾਦੁ ਨ ਜਾਣਿਆ ਤਿਨ ਅੰਤਰਿ ਹਉਮੈ ਕੰਡਾ ਹੇ ॥ ਜਿਉ ਜਿਉ ਚਲਹਿ ਚੁਭੈ ਦੁਖੁ ਪਾਵਹਿ ਜਮਕਾਲੁ ਸਹਹਿ ਸਿਰਿ ਡੰਡਾ ਹੇ ॥੨॥\n\nਹਰਿ ਜਨ ਹਰਿ ਹਰਿ ਨਾਮਿ ਸਮਾਣੇ ਦੁਖੁ ਜਨਮ ਮਰਣ ਭਵ ਖੰਡਾ ਹੇ ॥ ਅਬਿਨਾਸੀ ਪੁਰਖੁ ਪਾਇਆ ਪਰਮੇਸਰੁ ਬਹੁ ਸੋਭ ਖੰਡ ਬ੍ਰਹਮੰਡਾ ਹੇ ॥੩॥\n\nਹਮ ਗਰੀਬ ਮਸਕੀਨ ਪ੍ਰਭ ਤੇਰੇ ਹਰਿ ਰਾਖੁ ਰਾਖੁ ਵਡ ਵਡਾ ਹੇ ॥ ਜਨ ਨਾਨਕ ਨਾਮੁ ਅਧਾਰੁ ਟੇਕ ਹੈ ਹਰਿ ਨਾਮੇ ਹੀ ਸੁਖੁ ਮੰਡਾ ਹੇ ॥੪॥੪॥\n\nਰਾਗੁ ਗਉੜੀ ਪੂਰਬੀ ਮਹਲਾ ੫ ॥\n\nਕਰਉ ਬੇਨੰਤੀ ਸੁਣਹੁ ਮੇਰੇ ਮੀਤਾ ਸੰਤ ਟਹਲ ਕੀ ਬੇਲਾ ॥ ਈਹਾ ਖਾਟਿ ਚਲਹੁ ਹਰਿ ਲਾਹਾ ਆਗੈ ਬਸਨੁ ਸੁਹੇਲਾ ॥੧॥\n\nਅਉਧ ਘਟੈ ਦਿਨਸੁ ਰੈਣਾਰੇ ॥ ਮਨ ਗੁਰ ਮਿਲਿ ਕਾਜ ਸਵਾਰੇ ॥੧॥ ਰਹਾਉ ॥\n\nਇਹੁ ਸੰਸਾਰੁ ਬਿਕਾਰੁ ਸੰਸੇ ਮਹਿ ਤਰਿਓ ਬ੍ਰਹਮ ਗਿਆਨੀ ॥ ਜਿਸਹਿ ਜਗਾਇ ਪੀਆਵੈ ਇਹੁ ਰਸੁ ਅਕਥ ਕਥਾ ਤਿਨਿ ਜਾਨੀ ॥੨॥\n\nਜਾ ਕਉ ਆਏ ਸੋਈ ਬਿਹਾਝਹੁ ਹਰਿ ਗੁਰ ਤੇ ਮਨਹਿ ਬਸੇਰਾ ॥ ਨਿਜ ਘਰਿ ਮਹਲੁ ਪਾਵਹੁ ਸੁਖ ਸਹਜੇ ਬਹੁਰਿ ਨ ਹੋਇਗੋ ਫੇਰਾ ॥੩॥\n\nਅੰਤਰਜਾਮੀ ਪੁਰਖ ਬਿਧਾਤੇ ਸਰਧਾ ਮਨ ਕੀ ਪੂਰੇ ॥ ਨਾਨਕ ਦਾਸੁ ਇਹੈ ਸੁਖੁ ਮਾਗੈ ਮੋ ਕਉ ਕਰਿ ਸੰਤਨ ਕੀ ਧੂਰੇ ॥੪॥੫॥" ]
    
    var body: some View {
        VStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    printKS(with: gurbaani);
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
                        Text("ਕੀਰਤਨ ਸੋਹਿਲਾ")
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
    func printKS(with pageText: [String]) -> some View {
        VStack{
                ScrollView {
                    Text("ਸੋਹਿਲਾ ਰਾਗੁ ਗਉੜੀ ਦੀਪਕੀ ਮਹਲਾ ੧")
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                    Text("ੴ ਸਤਿਗੁਰ ਪ੍ਰਸਾਦ ॥\n")
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                    Text(pageText.joined(separator: "\n"))
                        .font(.system(size: fontSize))
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                        .padding(.trailing)
                }
            }
        }
}


struct Kirtan_Sohila_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Kirtan_Sohila()
        }
    }
}

