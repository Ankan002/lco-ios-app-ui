import SwiftUI

struct card: View {
    var course: Course
    var body: some View {
        ZStack{
            Image(course.courseImage).offset(y: 40)
            
            VStack{
                Text(course.courseName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                Text(course.coursePrice)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            }
            .offset(y: -200)
            
            Button(action: ({
                print("Button Clicked")
            }), label: {
                HStack{
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(course.courseColor)
                    Image(systemName: "arrow.right.square")
                        .accentColor(course.courseColor)
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(Color.white)
                .clipShape(Capsule())
            } )
            .offset(y: -145)
            
            Text("LearnCodeOnline.in")
                .frame(width: 370, height: 30)
                .foregroundColor(course.courseColor)
                .background(Color.white)
                .offset(y: 240)
                .rotationEffect(.init(degrees: 20))
            
        }
        .frame(width: 335, height: 550)
        .background(course.courseColor)
        .cornerRadius(18)
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(course: CourseList[1])
            .previewLayout(.sizeThatFits)
    }
}
