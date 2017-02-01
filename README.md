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

log.verbose("A verbose message, usually useful when working on a specific problem")
log.debug("A debug message")
log.info("An info message, probably useful to power users looking in console.app")
log.warning("A warning message, may indicate a possible error")
log.error("An error occurred, but it's recoverable, just info about what happened")
log.severe("A severe error occurred, we are likely about to crash now")
```
