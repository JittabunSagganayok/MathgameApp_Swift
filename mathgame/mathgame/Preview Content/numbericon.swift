//
//  numbericon.swift
//  mathgame
//
//  Created by pooh on 14/10/2565 BE.
//

import SwiftUI

struct numbericon: View {
    
    var number : Int
    
    var body: some View {
        Text("\(number)")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .frame(width: 120,height: 120)
            .background(Color(.blue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            
    }
}

struct numbericon_Previews: PreviewProvider {
    static var previews: some View {
        numbericon(number: 10)
    }
}
