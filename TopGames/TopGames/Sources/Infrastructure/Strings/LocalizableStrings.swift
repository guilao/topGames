//
//  LocalizableStrings.swift
//  TopGames
//
//  Created by Guilherme Martins on 22/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation

enum LocalizableStrings: String {
    
    // Details View
    case channelsCountField
    case viewersCountField
    
    // Lottie animations names
    case emptyListAnimationName
    case initialAnimationName
    
    // Strings
    case okActionTitle
    case tryAgainTitle
    case savedOnCoreDataTitle
    case saveOnCoreDataMessage
    case deletedFromCoreDataTitle
    case deletedFromCoreDataMessage
    case initialTitle
    case emptyStateScreenTitle
    
    // Core Data Entities and Attributes
    case gameCoreDataEntityName
    case coreDataNameAttribute
    case coreDataChannelsAttribute
    case coreDataViewersAttribute
    case coreDataIdAttribute
    case coreDataImageAttribute
    
    // Images names
    case saveButtonFilled
    case saveButtonEmpty
    
    // Error Handling
    case failedToSaveOnCoreDataTitle
    case failedToSaveOnCoreDataMessage
    case failedDeleteFromCoreDataTitle
    case failedDeleteFromCoreDataMessage
    case failedToRetrieveFromCoreData
    case offlineModeTitle
    case offlineModeMessage
    case invalidURL
    case genericError
    case emptyStateTitle
    case failedToCreateAppDelegate
    
    func localize() -> String {
        return self.rawValue.localize()
    }
}
