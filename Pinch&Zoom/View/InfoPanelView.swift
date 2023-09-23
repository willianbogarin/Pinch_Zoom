//
//  InfoPanelView.swift
//  Pinch&Zoom
//
//  Created by Willian Bogarin Jr on 2023. 09. 23..
//

import SwiftUI

struct InfoPanelView: View {

    
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible = false
    
    
    var body: some View {
        HStack {
            //MARK: - HOTSPOT
            Image(systemName: circleIcon)
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut){
                        isInfoPanelVisible.toggle()
                    }
                }
            
            Spacer()
            
            //MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName:scaleArrowIcon)
                Text("\(scale)")
                Spacer()
                
                Image(systemName: widthArrowIcon)
                Text("\(offset.width)")
                Spacer()
                
                Image(systemName: heightArrowIcon)
                Text("\(offset.height)")
                Spacer()
                
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            Spacer()
            
        }
    }
}


struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
            .padding()
    }

}
