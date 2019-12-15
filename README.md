# CurrentTimeSwiftUI

This is a sample app which will show the current time using timer which will show UI updates for every second.

![alt text](https://github.com/sunil-targe/CurrentTimeSwiftUI/blob/master/Screen%20Shot%202019-12-13%20at%201.57.34%20PM.png)

```Swift
struct ContentView: View {
    @State var currentTime = getCurrentTime()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text(currentTime)
        .font(.system(.largeTitle))
        .foregroundColor(.gray)
        .onReceive(timer) { _ in
            self.currentTime = getCurrentTime()
        }
    }
}

func getCurrentTime() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "h:mm:ss a"
    let dateString = formatter.string(from: Date())
    return dateString
}
```


 ### Author
 #
[Sunil Targe](https://suniltarge.com) • Creator of [ॐ • Om chanting with Ninja](https://apps.apple.com/us/app/%E0%A5%90-om-chanting-with-ninja/id1478518232) App

### License 
#
 CurrentTimeSwiftUI is available under the MIT license. See the LICENSE file for more info.
