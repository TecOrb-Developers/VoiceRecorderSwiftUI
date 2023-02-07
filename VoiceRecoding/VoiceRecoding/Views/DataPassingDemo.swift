//
//  DataPassingDemo.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//

import SwiftUI

struct DataPassingDemo: View {
    @State var userName:String = ""
    @State var isnavigate:Bool = false
    @ObservedObject var classObj:GlobalClass = GlobalClass()
    
    func passData()
    {
        classObj.userName = userName
        classObj.userMobile = "909090909"
        
        Signlton.shared.userName = userName
        Signlton.shared.userMobile = "8080808080"
    }
    var body: some View {
        
        NavigationView{
            VStack{
                DisplayView(userName: $userName)
                HStack{
                    Text("Passing data From DisplayView")
                    Spacer()
                    Text("\(userName)")
                }
                Button(action: { passData();isnavigate = true})
                {
                    Text("Submit")
                }
                
                NavigationLink(destination: DatapassingView2(),isActive: $isnavigate)
                {
                    EmptyView()
                }
            }
        }
        .environmentObject(classObj)
    }
}

struct DataPassingDemo_Previews: PreviewProvider {
    static var previews: some View {
        DataPassingDemo()
    }
}


struct DisplayView:View
{
    @Binding var userName:String
    var body: some View
    {
        VStack{
        Text("Hloo  pass Data")
        TextField("Enter Name", text: $userName)
        }.padding()
    }
}


