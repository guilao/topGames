//
//  SaveGameStatus.swift
//  TopGames
//
//  Created by Guilherme Martins on 22/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation

enum SaveGameStatus {
    case saved
    case deleted
    case retrieved
    case failed(String)
}
