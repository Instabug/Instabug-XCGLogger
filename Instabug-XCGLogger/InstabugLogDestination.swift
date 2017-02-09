//
//  InstabugLogDestination.swift
//  Instabug Demo
//
//  Created by Yousef Hamza on 2/1/17.
//  Copyright © 2017 Instabug. All rights reserved.
//

import Foundation
import XCGLogger
import Instabug

open class InstabugLogDestination: BaseDestination {

    open override func output(logDetails: LogDetails, message: String) {
        var logDetails = logDetails
        var message = message
        
        // Apply filters, if any indicate we should drop the message, we abort before doing the actual logging
        if self.shouldExclude(logDetails: &logDetails, message: &message) {
            return
        }
        
        self.applyFormatters(logDetails: &logDetails, message: &message)

        switch logDetails.level {
        case .debug:
            Instabug.logDebug(message)
        case .error:
            Instabug.logError(message)
        case .info:
            Instabug.logInfo(message)
        case .none:
            Instabug.ibgLog(message)
        case .severe:
            Instabug.logError(message)
        case .verbose:
            Instabug.logVerbose(message)
        case .warning:
            Instabug.logWarn(message)
        }
    }
}
