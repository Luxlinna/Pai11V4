//
//  ContentView.swift
//  Pai11V4
//
//  Created by Linna Lux on 2022-10-06.
//

import SwiftUI

struct ContentView: View {
    @State var thenumber = 0
    @State var usernumber = ""
    // @State var howcalc = ""
    @State var errortext = ""
    
    var body: some View {
        VStack {
            Text(String(thenumber))
                .font(.largeTitle)
                .frame(width: 200.0, height: 100.0)
                .background(.gray)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text(errortext).foregroundColor(.red).font(.largeTitle)
            
            TextField("Skriv Siffra", text: $usernumber)
                .keyboardType(.numbersAndPunctuation)
                .frame(width: 350.0, height: 50.0)
                .foregroundColor(.white)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .background(.purple)
                .padding()
            
            Button(action: {
                calcstuff(howcalc: "plus")
                // var plussiffran = Int(usernumber)
                
                // if(plussiffran != nil){
                 //   thenumber = thenumber + plussiffran!
                //    usernumber = ""
              //  }
                
              //  thenumber = thenumber + //Int(usernumber)!
             //   usernumber = ""
            }, label: {
                Text("PLUS")
                    .frame(width: 200.0, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            }).padding()
            
            Button(action: {
                calcstuff(howcalc: "minus")
                // thenumber = thenumber - Int(usernumber)!
                // usernumber = ""
            }, label: {
                Text("MINUS")
                    .frame(width: 200.0, height: 50)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(.blue)
            }).padding(.all)
            
            Button(action: {
                calcstuff(howcalc: "mutiplicera")
                
            }, label: {
                Text("MUTILICERA")
                    .frame(width: 200.0, height: 50)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(.blue)
            }).padding(.all)
            
            Button(action: {
                calcstuff(howcalc: "dividera")
            }, label: {
                Text("DIVIDERA")
                    .frame(width: 200.0, height: 50)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(.blue)
            }).padding(.all)
            
            Button(action: {
                thenumber = 0
                
            }, label: {
                Text("RESET")
                    .frame(width: 200.0, height: 50)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(.blue)
            }).padding(.all)
            }
        .padding(.all)
    }
    
    func calcstuff(howcalc: String){
        let plussiffran = Int(usernumber)
        
        if(plussiffran != nil) {
            if(howcalc == "plus"){
                thenumber = thenumber + plussiffran!
         
            }
            if(howcalc == "minus"){
                thenumber = thenumber - plussiffran!
               
            }
            if(howcalc == "mutiplicera"){
                thenumber = thenumber * plussiffran!
            }
            
            if(howcalc == "dividera"){
                if(plussiffran != 0){
                    thenumber = thenumber / plussiffran!
                } else{
                    errortext = "Division med noll !"
                }
            }
            usernumber = ""
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
