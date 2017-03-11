# SwiftLogger
Logger with tags for swift

<br>
## Installation
To install this logger, you can use CocoaPods:

```ruby
pod 'SwiftLogger', :git => 'git@github.com:Javidp/SwiftLogger.git'
```

<br>
## Initialization
At the start you have to initialize logger:

```swift
SwiftLogger.initialize(showTime: true, showLevel: true, showTag: true, tags: "tag1", "tag2", "tag3")
```

There are 3 parameters you can use to configure logs:
- `showTime` - default is false
- `showLevel` - default is false
- `showTag` - default is false

If false, then this part of log will not be displayed. If default value is ok for you, then you do not need to set this parameter.

Parameter `tags` is a list of tags, which you want to display.

<br>
## Usage
To use logs you can use class `Log`, which contains 3 methods

- i(tag, message) - info
- w(tag, message) - warning
- e(tag, message) - error

#### Example:
```swift
Log.i("tag1", "info message")
Log.w("tag2", "warning message")
Log.e("tag3", "error message")
```

#### Output:
```
2017-03-11 00:42:34.127 🔵 INFO [tag1] info message
2017-03-11 00:42:34.133 🔶 WARNING [tag2] warning message
2017-03-11 00:42:34.133 🔴 ERROR [tag3] error message
```
