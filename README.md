# VersionNumber
[![Latest release](http://img.shields.io/github/release/benjaminsnorris/VersionNumber.svg)](https://github.com/benjaminsnorris/VersionNumber/releases)
[![GitHub license](https://img.shields.io/github/license/benjaminsnorris/VersionNumber.svg)](/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg)](https://github.com/Carthage/Carthage)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift_Package_Manager-compatible-brightgreen.svg)](https://swift.org/package-manager)

A simple library to provide version number information for iOS apps

1. [Requirements](#requirements)
2. [Usage](#usage)
  - [Version number information](#version-number-information)
3. [Integration](#integration)
  - [Carthage](#carthage)
  - [Swift Package Manager](#swift-package-manager)
  - [Git Submodules](#git-submodules)


## Requirements
- iOS 9.0+
- Xcode 7


## Usage
Import the module into any file where you want to access launch count or version information.
```swift
Import VersionNumber
```


### Version number information

If you want to display version information in your app, such as on a settings screen, or in a contact email, it is easy.

```swift
import UIKit
import VersionNumber

class SettingsTableViewController: UITableViewController {
    ...
    var versionNumberService = VersionNumberService()

    override func viewDidLoad() {
      ...
      let footerLabel = UILabel()
      footerLabel.text = versionNumberService.appNameWithVersion
      footerLabel.sizeToFit()
      tableView.tableFooterView = footerLabel
      ...
    }

    ...
}

```


## Integration
### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate VersionNumber into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "benjaminsnorris/VersionNumber" ~> 1.0
```

Run `carthage update` to build the framework and drag the built `VersionNumber.framework` into your Xcode project.

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `VersionNumber` by adding the proper description to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PACKAGE_NAME",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/benjaminsnorris/VersionNumber.git", majorVersion: 1)
    ]
)
```

Note that the [Swift Package Manager](https://swift.org/package-manager) is still in early design and development. For more information check out its [GitHub Page](https://github.com/apple/swift-package-manager)


### Git Submodules

- If you don't already have a `.xcworkspace` for your project, create one. ([Here's how](https://developer.apple.com/library/ios/recipes/xcode_help-structure_navigator/articles/Adding_an_Existing_Project_to_a_Workspace.html))

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add VersionNumber as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/benjaminsnorris/VersionNumber.git Vendor/VersionNumber
```

- Open the new `VersionNumber` folder, and drag the `VersionNumber.xcodeproj` into the Project Navigator of your application's Xcode workspace.

    > It should not be nested underneath your application's blue project icon. Whether it is above or below your application's project does not matter.

- Select `VersionNumber.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Linked Frameworks and Libraries" section.
- Select `VersionNumber.framework` inside the `Workspace` folder.
- Click on the `+` button under the "Embedded Binaries" section.
- Select `VersionNumber.framework` nested inside your project.
- An extra copy of `VersionNumber.framework` will show up in "Linked Frameworks and Libraries". Delete one of them (it doesn't matter which one).
- And that's it!
