//
//  DataPassingView3.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//

import SwiftUI

struct DataPassingView3: View {
    @EnvironmentObject var classObj:GlobalClass
    var body: some View {
        Text("UserName")
        Text("\(classObj.userName)")
        Text("\(Signlton.shared.userName)")
        Text("email is")
        Text("\(classObj.userEmail)")
        Text("\(Signlton.shared.userEmail)")
        Text("mobile is")
        Text("\(classObj.userMobile)")
        Text("\(Signlton.shared.userMobile)")
    }
}

struct DataPassingView3_Previews: PreviewProvider {
    static var previews: some View {
        DataPassingView3()
    }
}
