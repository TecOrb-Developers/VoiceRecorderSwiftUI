//
//  DatapassingView2.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//

import SwiftUI

struct DatapassingView2: View {
     @State var userEmailId = ""
    @State var isnavigate = false
    @ObservedObject var classObjSendData:GlobalClass = GlobalClass()
    @EnvironmentObject var classObjReceiveData:GlobalClass
 
    func passData()
    {
        Signlton.shared.userEmail = "oook@gmail.com"
        classObjSendData.userEmail = "oook@gmail.com"
    }
    var body: some View {

        VStack{
            TextField("Enter Email", text: $userEmailId)
            Text("\(classObjReceiveData.userName)")
            Text("\(classObjReceiveData.userMobile)")
            
            Button(action: { self.passData();isnavigate = true})
            {
                Text("Next screen")
            }
            
            NavigationLink(destination: DataPassingView3(),isActive:$isnavigate)
            {
                EmptyView()
            }
        }
    }
}

struct DatapassingView2_Previews: PreviewProvider {
    static var previews: some View {
        DatapassingView2()
    }
}
