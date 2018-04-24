//
//  HomeManager.swift
//  TopGames
//
//  Created by Guilherme Martins on 21/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation

class HomeManager : BaseManager {
    
    // Games Business
    private lazy var business: GamesBusiness = {
        return GamesBusiness()
    }()
    
    public func fetchTopGames(refresh : Bool = false, nextPage : Bool = false, _ completion : @escaping TopGamesCallback) {
        addOperation {
            self.business.fetchTopGames(refresh: refresh, nextPage: nextPage, { (callback) in
                OperationQueue.main.addOperation {
                    completion(callback)
                }
            })
        }
    }
    
}

