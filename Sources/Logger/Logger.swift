import JavaScriptKit

public func DDLogError(_ message: String) {
    logger.error.function?(message)
}

public func DDLogWarn(_ message: String) {
    logger.warn.function?(message)
}

public func DDLogInfo(_ message: String) {
    logger.info.function?(message)
}

public func DDLogVerbose(_ message: String) {
    DDLogDebug(message)
}

public func DDLogDebug(_ message: String) {
    var output: String = ""
    logger.debug.function?(message)
}

// Tries to find a `logger` object as the one defined at {projectRoot}/CrossplatformWeb/src/logger/Logger.tsx
// Falls back to the plain JS console if the logger doesn't exist.
private var logger: JSObject {
    let logger: JSObject? = JSObject.global.logger.object
    let console: JSObject? = JSObject.global.console.object
    return logger ?? console!
}