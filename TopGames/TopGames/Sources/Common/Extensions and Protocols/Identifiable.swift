//
//  Identifiable.swift
//  TopGames
//
//  Created by Guilherme Martins on 21/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation

import UIKit

// MARK: - Identifiable protocol

/// Used to UIViewController that are stored in Storyboard
protocol Identifiable: class {
    
}

// MARK: - Identifiable Extension on UIViewController
extension Identifiable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static var segueIdentifier: String {
        let identifier = String(describing: self)
        let vcString = "ViewController"
        let endIndex = identifier.index(identifier.endIndex, offsetBy: -vcString.count)
        return String(identifier[identifier.startIndex..<endIndex])
    }
}

// MARK: - Identifiable Extension on UITableViewCell
extension Identifiable where Self: UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - Identifiable Extension on UICollectionViewCell
extension Identifiable where Self: UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
