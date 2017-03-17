# Lottie-iOS
Custom animation by Lottie from AirBNB. You could add animation in mobile devices both iOS/Android without explicit coding only 3 line of code and you've done!! What You need to prepare is

## Install Lottie
**CocoaPods**

Add the pod to your podfile
```
pod 'lottie-ios'
```
run
```
pod install
```
**Carthage**

Install Carthage (https://github.com/Carthage/Carthage) Add Lottie to your Cartfile
```
github "airbnb/lottie-ios" "master"
```
run
```
carthage update
```

## Code Example
You could start animating in just 3 lines of code and no more!! easy to setup and easy to use
In case, you want to use as UIButton or some interaction, you can add `addTarget` into it it's just a simple UIView which you could add anything that UIView has
```
let animationView = LOTAnimationView.animationNamed("intro") // Json file's name
self.view.addSubview(animationView!)
animationView?.play(completion: { (finished) in
            // Add logic after animation completed
        })
```

## Motivation
After the Flash dynasty collapse, Animation in the web/mobile is in the dark age because you all have to do animation by pure coding instead and it's sooo hard and take a lot of time so our animation's world is going down. but when there is a dark it will always a light. Make Animation great again and will be greater than the old times. 

## Installation
Install Adobe After Effect
Install bodymovin https://github.com/bodymovin/bodymovin
Export bodymovin into Json files and import into xcode 
Ready to use!

## Limitation
For now you can do only simply animation not with the effect layer in After Effect yet so here's the thing
- Rotation
- Translation
- Scale
- Opacity
- Animation with all Interpolation
- Text (Has to convert to Vector Path)

Thing can't do that should emphasize
- Gradient
- Polyshapes (has to convert to vector Path)
