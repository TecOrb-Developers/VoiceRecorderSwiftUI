//
//  GlobalClass.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//

import Foundation
import SwiftUI
class GlobalClass:ObservableObject
{
    @Published var userName = ""
    @Published var userMobile = ""
    @Published var userEmail = ""
}

class Signlton:ObservableObject
{
    static var shared = Signlton()
    @Published var userName = ""
    @Published var userMobile = ""
    @Published var userEmail = ""
    
    private init()
    { }
}
