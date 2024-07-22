# AwesomeNosebleedProgress
**Awesome Progress View Style** is available!!!!

Are you tired of mundane and uninspired progress indicators? Say goodbye to boring ProgressViews and hello to `AwesomeNosebleedProgress`!

This Swift Package offers a playful and unique take on progress tracking, featuring a progress view with a quirky **nosebleed** theme. Whether you're looking to add a touch of fun to your app or simply want to stand out with something unconventional, this library provides a refreshing alternative to traditional progress indicators.

With `AwesomeNosebleedProgress`, you can:

- Inject Personality: Transform your progress view with a humorous and distinctive design that stands out.
- Enhance User Experience: Engage users with a visually interesting and memorable progress indicator.

Give your progress tracking a unique twist and make your app more entertaining with `AwesomeNosebleedProgress`!

## Installation
`AwesomeNosebleedProgress` is available through Swift Package Manager.

To install it, simply add the following line to your Package.swift file:

```swift:
dependencies: [
    .package(url: "https://github.com/littleossa/NosebleedProgress.git", .upToNextMajor(from: "0.1.1"))
]
```

## Requirment

- iOS 17+
- watchOS 10+
- visionOS 1+

## Usage

Here’s how you can apply the custom `.nosebleed()` style to a ProgressView:

```swift
import SwiftUI
import AwesomeNosebleedProgress

struct ExampleView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.nosebleed())
    }
}
```

By default, the diameter is set to `60` and the speed is set to `1.0`, but these can be customized to fit your needs.

<kbd><img src="https://github.com/user-attachments/assets/a95c2a1d-ad67-43e7-81d1-7ccad4a9fe1c" width="480"></kbd>

### Customized

```swift
struct ExampleView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.nosebleed(diameter: 400, speed: 4))
    }
}
```

<kbd><img src="https://github.com/user-attachments/assets/8bd7481c-f388-477b-a4f8-00d10c403f31" width="480"></kbd>

## License
AwesomeNosebleedProgress is available under the MIT license. See the LICENSE file for more info.
