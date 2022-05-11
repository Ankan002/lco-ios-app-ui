//
//  ContentView.swift
//  LCO App Remastered
//
//  Created by Ankan Bhattacharya on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    var courses: [Course] = CourseList
    var bundles: [Course] = BundleList
    var tests: [TestModel] = TestList
    var body: some View {
        ScrollView{
            VStack{
                Text("Courses")
                    .fontWeight(.bold)
                    .font(.title)
                
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 20){
                        ForEach(courses) { course in
                            card(course: course)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
            
            VStack{
                Text("Bundles")
                    .fontWeight(.bold)
                    .font(.title)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(bundles) { bundle in
                            card(course: bundle)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
            
            VStack{
                Text("Tests")
                    .fontWeight(.bold)
                    .font(.title)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(tests) { test in
                            TestCard(test: test)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courses: CourseList, bundles: BundleList, tests: TestList)
    }
}
