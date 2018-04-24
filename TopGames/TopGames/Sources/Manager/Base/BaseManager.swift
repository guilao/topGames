//
//  BaseManager.swift
//  TopGames
//
//  Created by Guilherme Martins on 21/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation

class BaseManager: OperationQueue {
    
    /**
     Initialize an BaseManager subclass.
     
     - parameter maxConcurrentOperationCount: maximun number of concurrent operations.
     
     - returns: an instance of BaseManager subclass.
     */
    convenience init(maxConcurrentOperationCount: Int) {
        self.init()
        self.maxConcurrentOperationCount = maxConcurrentOperationCount
    }
    
    // MARK: Deinitalizers
    
    deinit {
        cancelAllOperations()
    }
}
