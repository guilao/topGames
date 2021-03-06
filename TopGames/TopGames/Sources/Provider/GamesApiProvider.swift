//
//  GamesApiProvider.swift
//  TopGames
//
//  Created by Guilherme Martins on 21/04/18.
//  Copyright © 2018 Guilherme Martins. All rights reserved.
//

import Foundation
import Alamofire
import Freddy

typealias TopGamesCallback = (@escaping () -> GamesList?) -> Void

struct GamesApiProvider {

    static let clientId = "6ia9uys7v35povbpq7fvru39evay5j"
    
    static let acceptParameter = "application/vnd.twitchtv.v5+json"
    
    static let header : HTTPHeaders = [
        "Client-ID" : clientId,
        "Accept" : acceptParameter
    ]
    
    static var baseUrl: String {
        return "https://api.twitch.tv/kraken/games/top"
    }
    
    static var pageQuery: String {
        return "&offset="
    }
    
    static var limitQuery: String {
        var limit = 100
        if PaginationFeatureToggle.isPaginationEnabled {
            limit = 20
        }
        return "?limit=\(limit)"
    }
    
    static var urlString: String {
        return baseUrl + limitQuery + pageQuery
    }
    
    static func fetchTopGames(refresh : Bool = false, page : Int = 0, completion : @escaping TopGamesCallback) {
        guard let url = URL(string: urlString + String(describing: page)) else {
            print(LocalizableStrings.invalidURL.localize())
            return
        }
        
        Alamofire.request(url, headers: header).validate().responseJSON { (response) in
            guard let data = response.data else {
                return
            }
            
            let json = try? JSON(data: data)
            
            do {
                let gameList = try json?.decode(type: GamesList.self)
                completion { gameList }
            } catch let error {
                print(error)
                return
            }
        }
        
    }
    
}
