---
layout: post
categories: iOS
title: detect iOS-keycodes
---
## detect iOS-keycodes

#### 1. Use *Many Tricks* company's Key Codes to dectect the key code of the key is pressed.

#### 2. Override "var keyCommands: [UIKeyCommand]" in Swift.



```swift
    override var keyCommands: [UIKeyCommand]? {
        return [
            UIKeyCommand(input: UIKeyInputUpArrow, modifierFlags: [], action: #selector(keyInputUpArrow)),
            UIKeyCommand(input: UIKeyInputDownArrow, modifierFlags: [], action: #selector(keyInputDownArrow)),
            UIKeyCommand(input: UIKeyInputLeftArrow, modifierFlags: [], action: #selector(keyInputLeftArrow)),
            UIKeyCommand(input: UIKeyInputRightArrow, modifierFlags: [], action: #selector(keyInputRightArrow)),
            UIKeyCommand(input: "\u{0d}", modifierFlags: [], action: #selector(enterPressed)),
            UIKeyCommand(input: "\u{10}", modifierFlags: [], action: #selector(enterMenu))
        ]
    }
```

