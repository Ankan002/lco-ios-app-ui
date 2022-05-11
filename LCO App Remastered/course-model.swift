//
//  course-model.swift
//  LCO App Remastered
//
//  Created by Ankan Bhattacharya on 11/05/22.
//

import Foundation
import SwiftUI

struct Course: Identifiable{
    var id = UUID()
    var courseName: String
    var coursePrice: String
    var courseImage: String
    var courseColor: Color
}
