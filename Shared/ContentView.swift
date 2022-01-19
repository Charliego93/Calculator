//
//  ContentView.swift
//  Shared
//
//  Created by Charlie on 2022/1/18.
//

import SwiftUI

struct Btn: Hashable {
    var txt: String
    var color: Color
    var size: CGFloat
}

struct ContentView: View {
    
    var btns: [[Btn]] = [
        [
            Btn(txt: "(", color: .gray, size: 40),
            Btn(txt: ")", color: .gray, size: 40),
            Btn(txt: "mc", color: .gray, size: 40),
            Btn(txt: "m+", color: .gray, size: 40),
            Btn(txt: "m-", color: .gray, size: 40),
            Btn(txt: "mr", color: .gray, size: 40),
            Btn(txt: "C", color: .gray, size: 40),
            Btn(txt: "±", color: .gray, size: 40),
            Btn(txt: "%", color: .gray, size: 40),
            Btn(txt: "÷", color: Color("Primary"), size: 40),
        ],
        [
            Btn(txt: "2nd", color: .gray, size: 25),
            Btn(txt: "x²", color: .gray, size: 40),
            Btn(txt: "x³", color: .gray, size: 40),
            Btn(txt: "xʸ", color: .gray, size: 40),
            Btn(txt: "eˣ", color: .gray, size: 40),
            Btn(txt: "10ˣ", color: .gray, size: 40),
            Btn(txt: "7", color: Color("Second"), size: 40),
            Btn(txt: "8", color: Color("Second"), size: 40),
            Btn(txt: "9", color: Color("Second"), size: 40),
            Btn(txt: "×", color: Color("Primary"), size: 40),
        ],
    ]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            HStack(spacing: 0) {
               Text("VStack")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(0)
            }
            .frame(width: .infinity, height: 100, alignment: .bottom)
            .background(Color("Panel"))
            
            ForEach(btns.indices, id: \.self) { i in
                let hbtns = btns[i]
                
                HStack(spacing: 0) {
                    ForEach(hbtns.indices, id: \.self) { j in
                        let icount = btns.count
                        let jcount = hbtns.count
                        let edges: [Edge] = []
                        
                        let btn = Button(action: {
                            print(hbtns[j].txt)
                        }, label: {
                            Text(hbtns[j].txt)
                                .font(.system(size: hbtns[j].size))
                                .fontWeight(.medium)
                                .padding(.bottom, 7)
                                .frame(width: 80, height: 80, alignment: .center)
                                .background(hbtns[j].color)
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        if icount > 0 {
                            edges.append(.top)
                        }
                        if jcount > 0 {
                            edges.append(.leading)
                        }
                        
                        btn.border(width: 2, edges: edges, color: Color("Splite"))
                    }
                }
                .padding(0.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  
    }
}
