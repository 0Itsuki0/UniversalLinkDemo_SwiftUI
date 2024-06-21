# SwiftUI Demo App for Handling Universal Link

This App will show you how to 
- Show a specific view on Universal Link tapped for both background state and inactive state
- Pass simple data from Universal Link (using query and path) to Views


## Set Up
1. Set Up host for universal link. Please feel free to check out my article [Support Universal Link (Host/Test Locally & on AWS)](https://blog.stackademic.com/swift-ios-support-universal-link-host-test-locally-on-aws-2620804062ad) for more detail. <br>
I have also uploaded the code for setting up local host [here](https://github.com/0Itsuki0/iOSUniversalLinkLocalHost). Please feel free to grab that!

2. Under project > Signing & Capability, add the host https address (without the https) to the Associated Domain section. For example, if you have `https://itsuki.example.com`, for your host domain, your entry will look like `applinks:itsuki.example.com`

---
For Further details on handling universal link, please check out [SwiftUI: Handle Universal Link (Show Specific View and Pass Data)]().
