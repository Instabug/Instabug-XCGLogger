# Instabug-XCGLogger
This is a destination for XCGLogger to make use of it's logs with your Instabug setup
## Comptability
Note that XCGLogger is a Swift framework and intended to be used with Swift projects

## Installation
Add pod `Instabug-XCGLogger` to your `podfile`

## Requirements
iOS version >= 8.0

`Instabug` version >= 6.2

## Example

```
let log = XCGLogger.default
log.setup()

let ibglog = InstabugLogDestination()
log.add(destination: ibglog)

log.verbose("A verbose message")
log.debug("A debug message")
log.info("An info message")
log.warning("A warning message")
log.error("An error message")
log.severe("A severe message")
```
