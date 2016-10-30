# Macaw

[![CI Status](https://travis-ci.org/exyte/Macaw.svg?branch=0.7.0)](https://travis-ci.org/exyte/Macaw)
[![Version](https://img.shields.io/cocoapods/v/Macaw.svg?style=flat)](http://cocoapods.org/pods/Macaw)
[![License](https://img.shields.io/cocoapods/l/Macaw.svg?style=flat)](http://cocoapods.org/pods/Macaw)
[![Platform](https://img.shields.io/cocoapods/p/Macaw.svg?style=flat)](http://cocoapods.org/pods/Macaw)

<img src="https://github.com/exyte/Macaw/blob/master/logo.png" width="400">

## What is Macaw?

Macaw is a powerful and easy-to-use vector graphics library written in Swift.

#### It's simple

Get started with Macaw in several lines of code:

```swift
class MyView: MacawView {

	required init?(coder aDecoder: NSCoder) {
		let text = Text(text: "Hello, World!", place: .move(dx: 145, dy: 100))
		super.init(node: text, coder: aDecoder)
	}

}
```

<img src="https://www.dropbox.com/s/o4xe3eezk4zv901/macaw-readme-001.png?dl=1" width="475">

#### It has SVG support

Include Scalable Vector Graphics right into your application:

```swift
class SVGView: MacawView {

    required init?(coder aDecoder: NSCoder) {
        super.init(node: SVGParser.parse(path: "tiger"), coder: aDecoder)
    }

}
```

<img src="https://www.dropbox.com/s/p84o7komopmb2yn/macaw-howto-004.png?dl=1" width="475">

#### It's powerful

Affine transformations, user events, animation and various effects to build beautiful apps with Macaw:

<img src="https://www.dropbox.com/s/b6lspzzqa80ielk/periodic-ipad.gif?dl=1" width="600">

Take a look at [getting started guide](https://github.com/exyte/Macaw/wiki/Getting-started) to learn more.

## Requirements

* iOS 8.0+ / Mac OS X 10.9+
* Xcode 7.3+

## Installation

## [CocoaPods](http://cocoapods.org)

To install it, simply add the following line to your Podfile:

```ruby
pod "Macaw", "0.7.0"
```
## [Carthage](http://github.com/Carthage/Carthage)
```ogdl
github "Exyte/Macaw" ~> 0.7.0
```

## Building from sources

To build Macaw from sources:
* clone the repo `git@github.com:exyte/Macaw.git`
* open terminal and run `cd <MacawRepo>/Example/`
* run `pod install` to install all dependencies
* run `open Example.xcworkspace/` to open project in the Xcode

## Author

This project is maintained by the [exyte](http://www.exyte.com) company, a team of experienced software engineers from the cold Siberia. We don't have bears and don't like vodka, but we love to create great applications! Just [contact us](mailto:info@exyte.com).

## License

Macaw is available under the MIT license. See the LICENSE file for more info.
