//
//  ErrorPage.swift
//  Pinch&Zoom
//
//  Created by Willian Bogarin Jr on 2023. 09. 20..
//

import SwiftUI

struct ErrorPage: View {
    
 let desertIcon: String = "illustrationDesert-Icon002Test"
    
    var body: some View {

        ZStack() {
          HStack(alignment: .top, spacing: 10) {
            Text("Reload and Report")
              .font(Font.custom("Nunito", size: 18).weight(.bold))
              .foregroundColor(.white)
          }
          .padding(EdgeInsets(top: 10, leading: 64, bottom: 9, trailing: 64))
          .background(Color(red: 0.19, green: 0.18, blue: 0.65))
          .cornerRadius(10)
          .offset(x: 0, y: 291.50)
          VStack(spacing: 8) {
            Text("I'm sorry for the inconvenience")
              .font(Font.custom("Nunito", size: 18).weight(.bold))
              .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.10))
            Text("Seems that there's an issue with the app, the image was not found")
              .font(Font.custom("Nunito", size: 14).weight(.semibold))
              .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
          }
          .offset(x: -0.03, y: 182.50)
          ZStack() {
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 51.10, height: 43.12)
                .background(
                    ZStack {
                        Image(desertIcon)
                    }
                )
                .overlay(Rectangle()
                .stroke(.black, lineWidth: 0.25))
                .offset(x: 0, y: 30)
                .padding()
              ZStack() {
                Group {

                };Group {

                };Group {

                }
              }
              .frame(width: 67.57, height: 65.94)
              .offset(x: 113.58, y: -91.03)
            }
            .frame(width: 330.55, height: 228.34)
            .offset(x: 0, y: 0)
            ZStack() {
              ZStack() {
                Group {

                };Group {

                }
              }
              .frame(width: 14.13, height: 14)
              .offset(x: 17.94, y: 2.13)
            }
            .frame(width: 50.02, height: 18.26)
            .offset(x: 60.89, y: 35.23)
          }
          .frame(width: 330.55, height: 228.34)
          .offset(x: 0, y: -109.01)
          Text("Something is missing")
            .font(Font.custom("Gilroy-Bold", size: 20))
            .lineSpacing(69.37)
            .foregroundColor(Color(red: 0.19, green: 0.18, blue: 0.65))
            .offset(x: -0.50, y: 98.50)
          ZStack() { }
          .frame(width: 11, height: 11)
          .offset(x: 162.50, y: -368.50)
        }
        .frame(width: 411, height: 823)
        .background(.white)
        
        
    }
}

struct ErrorPage_Previews: PreviewProvider {
    static var previews: some View {
        ErrorPage()
    }
}
