//
//  ContentView.swift
//  MyJanken
//
//  Created by 小川永輝 on 2023/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        VStack {
            Spacer()
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
                
            } else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
                
            }
            Button {
                var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
