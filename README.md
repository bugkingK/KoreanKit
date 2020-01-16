# KoreanKit
You can separate the initial, neutral, and finalities of Hangul. You can check if the text is syllable

## Installation
<b>CocoaPods:</b>
<pre>
pod 'KoreanKit'
</pre>
<b>Manual:</b>
<pre>
Copy <i>KoreanKit.swift</i> to your project.
</pre>

<b>Swift Package Manager:</b>

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `KoreanKit` by adding the proper description to your `Package.swift` file:

```swift

let package = Package(
    name: "YOUR_PROJECT_NAME",
    dependencies: [
        .package(url: "https://github.com/bugkingK/KoreanKit.git", from: "1.0.0"),
    ]
)
```
Then run `swift build` whenever you get prepared.


## Using KoreanKit
```swift

let korean = KoreanKit()
// ㅇㄴㅎㅅㅇ Hello
print(korean.split("안녕하세요 Hello", syllable: .initial))
// false
print(korean.isSyllable("ㄲ", syllable: .medial))
```

## License

<i>KoreanKit</i> is available under the MIT license. See the LICENSE file for more info.
