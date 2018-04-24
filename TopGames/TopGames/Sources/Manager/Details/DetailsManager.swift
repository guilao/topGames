//
//  DetailsManager.swift
//  TopGames
//
//  Created by Guilherme Martins on 22/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation
import UIKit

class DetailsManager: BaseManager {
    
    // Games Business
    private lazy var business: GamesBusiness = {
        return GamesBusiness()
    }()
    
    public func saveGame(_ game : Game, image : UIImage) -> SaveGameStatus {
        return self.business.saveGame(game, image: image)
    }
    
    public func deleteGame(_ game : Game) -> SaveGameStatus {
        return self.business.deleteGame(game)
    }
    
}
