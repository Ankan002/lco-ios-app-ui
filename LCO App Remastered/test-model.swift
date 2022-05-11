//
//  test-model.swift
//  LCO App Remastered
//
//  Created by Ankan Bhattacharya on 11/05/22.
//

import Foundation
import SwiftUI

struct TestModel: Identifiable{
    var id = UUID()
    var testName: String
    var testPrice: String
    var testColor: Color
}
