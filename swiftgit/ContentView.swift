//
//  ContentView.swift
//  swiftgit
//
//  Created by Abdul Halim Reiaz on 2024/06/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GradintBg(firstColor: Color.blue, secendColor: Color.black)
            VStack{
                
                TitleView(title: "Dhaka, BD", fontSize: 33.3,
                          textColor: Color.white)
                Spacer()
                MiddleView()
                
                Spacer()
                HStack(spacing: 30){
                    SingleDayView()
                    SingleDayView()
                    SingleDayView()
                    SingleDayView()
                    SingleDayView()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct GradintBg: View {
    let firstColor: Color
    let secendColor: Color
    var body: some View {
        LinearGradient(
            colors: [firstColor,secendColor],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

struct TitleView: View {
    let title: String
    let fontSize: Double
    let textColor: Color
    var body: some View {

            HStack{
                Text(title)
                    .font(.system(size: fontSize))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(textColor)
            }

    }
}

struct MiddleView: View {
    var body: some View {
        VStack{
            Image(systemName: "cloud.sun.rain.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            Text("30 °")
                .font(.system(size: 40))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
        }
    }
}

struct SingleDayView: View {
    var body: some View {
        VStack{
            Text("Mon")
                .foregroundStyle(.white)
            Image(systemName: "cloud.sun.rain.circle")
                .renderingMode(.original)
                .resizable()
                .frame(width: 40,height: 40)
                .foregroundStyle(.white)
            Text("30 °")
                .foregroundStyle(.white)
            
        }
    }
}
