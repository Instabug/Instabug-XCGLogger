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
            IBGLog.logDebug(message)
        case .error:
            IBGLog.logError(message)
        case .info:
            IBGLog.logInfo(message)
        case .severe:
            IBGLog.logError(message)
        case .verbose:
            IBGLog.logVerbose(message)
        case .warning:
            IBGLog.logWarn(message)
        default:
            return
        }
    }
}
