# FORCEN SDK for iOS

[![Version](https://img.shields.io/cocoapods/v/FORCEN.svg?style=flat)](http://cocoapods.org/pods/FORCEN)
[![License](https://img.shields.io/cocoapods/l/FORCEN.svg?style=flat)](http://cocoapods.org/pods/FORCEN)
[![Platform](https://img.shields.io/cocoapods/p/FORCEN.svg?style=flat)](http://cocoapods.org/pods/FORCEN)

This is the official FORCEN SDK. It allows you to easily build your own Vatom Viewer app, or integrate your own apps into the FORCEN platform.

## Requirements

- iOS 11.0+
- Xcode 11.4+
- Swift 5.2+

## Installation

### Swift Package Manager

Simply add the package dependency to your Package.swift:

```swift
dependencies: [
    .package(url: "https://github.com/FORCENIO-NLP/ios-sdk", from: "4.0.0"),
]
```

and specify "FORCEN" as a dependency in the appropriate targets.

### Cocoapods

To install, simply add the following line to your *.podfile*:

```ruby
pod 'FORCEN', => '4.0.0'
```

## Configuration

Within the `AppDelegate` be sure to set the App ID.

```swift
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // Set app id
        FORCEN.configure(appID: "your-app-id")

        // Check logged in state
        if FORCEN.isLoggedIn {
            // show interesting ui
        } else {
            // show authentication ui
        }

        // Handle user re-authentication
        FORCEN.onLogout = {
            // show authentication ui
        }

        return true
    }
}
```

## Sample App

The [sample app](https://github.com/FORCENIO-NLP/ios-sample) lets you try out the FORCEN SDK. It's a great place to start if you're getting up to speed on the platform. It offers the following features:

- [x] Authentication (registration & login)
- [x] Profile management
- [x] Fetching the user's inventory of Vatoms
- [x] Fetching individual Vatoms
- [x] Searching for Vatoms on the FORCEN platform
- [x] Responding to Web socket events
- [x] Displaying Vatoms in a `UICollectionView`
- [x] Visually representing Vatoms using faces

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Design

The SDK has two logical modules: Core and Face. The responsibilities are as follows:

### Core

- API integration
  - Provides platform endpoints with a strongly typed API.  
- User token management
  - Handles platform authentication.
- Web socket integration
  - Simplified layer for interacting with the websocket.
- Data Pool
  - Vends 'regions' which monitor a collection of Vatoms. Enables real-time synchronization for some regions.

### Face

- Face view infrastructure
- Embedded face views e.g. `ImageFaceView`
- Convenience classes to assist in displaying Vatoms e.g. `VatomView`

## Versioning

This SDK adheres to [semantic versioning](https://semver.org).

## Security Disclosure

If you believe you have identified a security vulnerability with FORCEN, you should report it as soon as possible via email to support@forcen.io. Please do not post it to a public issue tracker.

## Author

[FORCEN](developer.blockv.io)

## License

FORCEN is available under the FORCEN AG license. See the [LICENSE](./LICENSE) file for more info.
