//
//  ContentView.swift
//  mathgame
//
//  Created by pooh on 14/10/2565 BE.
//

import SwiftUI




struct ContentView: View {
    
    //@State var difficul : Int = 100
    @State var firstnum : Int = 0
    @State var secondnum : Int = 0
    @State var correctans : Int = 0
    @State var score : Int = 0
    @State var choicearray : [Int] = [0,1,2,3]
    
    
    func randomnum () {
        var difficul = 100
        
        firstnum = Int.random(in: 10...(difficul/2))
        secondnum = Int.random(in: 10...(difficul/2))
        var answerlist : [Int] = []
        
       correctans = firstnum + secondnum
        
        for i in 0...2{
            answerlist.append(Int.random(in: 10...difficul))
        }
            answerlist.append(correctans)
            
            choicearray = answerlist.shuffled()
 
    }
    
    
    func checkans (answer:Int){
        var iscorrect = answer
        if (iscorrect==correctans){
            score += 1
            
        }
        else {
            score-=1
        }
             
             
    }
    
    
    
    
    var body: some View {
        VStack { //v
            Text("\(firstnum)+ \(secondnum)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                
            HStack{ //H
                ForEach(0..<2){ index in
                    Button{
                        checkans(answer: choicearray[index])
                        randomnum()
                        
                    }
                label:{
                    numbericon(number: choicearray[index])
                    
                }
                }
                
                
            } //H
            HStack{ //H
                ForEach(2..<4){ index in
                    Button{
                        checkans(answer: choicearray[index])
                        randomnum()
                        
                    }
                label:{
                    numbericon(number: choicearray[index])
                    
                }
                }
                
                
            } //H
            .padding()
            Text("Score : \(score)")
                .font(.headline)
                .fontWeight(.bold)
            
        } //v
        .onAppear(perform: randomnum)
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
