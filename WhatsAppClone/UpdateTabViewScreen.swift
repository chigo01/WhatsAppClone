//
//  UpdateTabView.swift
//  WhatsAppClone
//
//  Created by Mac on 8/8/24.
//

import SwiftUI

struct UpdateTabViewScreen: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            List {
                StatusSectionHeader()
                StatusSection()
            }
            .navigationTitle("Updates")
            .searchable(text: $searchText)
        }
    }
}


private struct StatusSectionHeader: View {
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "circle.dashed")
                .foregroundStyle(.blue)
                .imageScale(.large)
            
            //create a textSpan or concatinate view
            
            (
                Text("Use Status to share photos, text and videos that disapper in 24 hours. ")
                
                + 
                Text("Status Privacy")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).bold()
            )
            
            Image(systemName: "xmark")
                .foregroundStyle(.gray)
            
            
            
        }
    }
}


private struct StatusSection: View {
    var body: some View {
        HStack(){
            Circle()
                .frame(width: 55, height: 55)
            VStack(alignment: .leading){
                Text("My Status")
                    .font(.callout)
                    .bold()
                
                Text("Add to my status")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                
             
            }
            Spacer()
            
            cameraButton()
            pencilButton()
        }
    }
    
    private func cameraButton() -> some View{
        Button {
            
        } label:{
            Image(systemName: "camera.fill")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .bold()
        }
    }
    
    private func pencilButton() -> some View{
        Button {
            
        } label:{
            Image(systemName: "pencil")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .bold()
        }
    }
    
}


#Preview {
    UpdateTabViewScreen()
}
