//
//  ContentView.swift
//  Pinch&Zoom
//
//  Created by Willian Bogarin Jr on 2023. 09. 20..
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    

    //MARK: - 

    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    @State private var imageOffset: CGSize = .zero
    
    //MARK: - FUNCTION
    
    func resetImageState () {
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
        }
    }

    
    //MARK: - BODY
    
    
    var body: some View {

        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()

        
        
        NavigationStack {
            ZStack {
               
                Color.clear
                //MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x:imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                //MARK: - 1. TAP GESTURE
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        }else {
                            resetImageState()
                     
                            }
                    })
                    
                //MARK: - 2. DRAG GESTURE
                    .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.linear(duration: 1)) {
                                imageOffset = value.translation
                            }
                            
                        }
                        .onEnded{ _ in
                            if imageScale <= 1 {
                              resetImageState()
                                }
                                
                            }
                        )
                    
                
                
            }//: ZSTACK
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                isAnimating = true
            })
            //MARK: - INFO PANEL
            .overlay(
                InfoPanelView(scale: imageScale, offset: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                , alignment: .top
                )
        }//: NAVIGATION
        .navigationViewStyle(.stack)


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
