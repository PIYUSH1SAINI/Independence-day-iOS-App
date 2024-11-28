//
//  ContentView.swift
//  Independence-day
//
//  Created by Piyush saini on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var animate: Bool = true
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: animate ? 20 : 0)
                    .foregroundColor(.orange.opacity(animate ? 0.7: 1))
                    .blur(radius: animate ? 10 : 0)
                    .frame(width: animate ? 300 : 400, height: animate ? 300 : 200)
                    .offset(x: animate ? -200 : 0, y: animate ? 0 : -200)
                    .rotationEffect(Angle(degrees: animate ? 45 : 0))
                
                RoundedRectangle(cornerRadius: animate ? 100 : 0)
                    .foregroundColor(.green.opacity(animate ? 0.6 : 1))
                    .blur(radius: animate ? 10 : 0)
                    .frame(width: animate ? 300 : 400, height: animate ? 500 : 200)
                    .offset(x: animate ? 200 : 0, y: animate ? 0 : -200)
                    .rotationEffect(Angle(degrees: animate ? 105 : 180))
                
                Circle()
                    .foregroundColor(.indigo.opacity(animate ? 0.6 : 1))
                    .blur(radius: 10)
                    .frame(width: animate ? 300 : 170)
                    .offset(x: animate ? 100 : 0, y: animate ? -170 : 0)
                    .zIndex(animate ? 0 : 1)
                    .opacity(animate ? 1 : 0)
                
                Image("centerCircle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: animate ? 350 : 200)
                    .opacity(animate ? 0 : 1)
                    .offset(x: animate ? 100 : 0, y: animate ? -170 : 0)
                    .zIndex(2)
                
                VStack{
                    Text("Happy Independence Day")
                        .font(.title2)
                        .bold()
                        .padding()
                        .offset(x: 0, y: animate ? 0 : -70)
                    
                    Text("dsjnfi efwefwiefj weoifweof mweofwmef weimfowemf weimfowemf weomfokwem fowemfowekmf wemfowemf woemfowem fwoemowe omwoemfwoe mwefuwrngw fie fnrff rfwoiejf wifj rfhwo j")
                        .foregroundColor(.gray)
                        .opacity(animate ? 1 : 0)
                        .padding(.bottom)
                }
                .padding()
                .background(animate ? Color.white.opacity(0.4) : Color.white)
                .cornerRadius(animate ? 10 : 0)
                .frame(width: animate ? 350 : 400 , height: animate ? 400 : 200)
                .padding()
            }// zstack end
            .padding(.top, 100)
            
            Spacer()
            VStack{
                Text("जय हिन्द")
                    .font(.largeTitle)
                    .bold()
                
                Button("Click Me!"){
                    //action
                    withAnimation(.easeInOut(duration: 0.5)){
                        animate.toggle()
                    }
                }
                .tint(Color.white)
                .padding([.top, .bottom], 10)
                .padding([.leading, .trailing], 100)
                .background(LinearGradient(colors: [Color.brown.opacity(0),Color.brown,Color.brown.opacity(0)], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(5)
                .padding()
            }
        }//vstack end
        .frame(width: 400, height: 800)
        .background(LinearGradient(colors: [Color.blue.opacity(0.5), Color.brown.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomLeading))
    }
}

#Preview {
    ContentView()
}
