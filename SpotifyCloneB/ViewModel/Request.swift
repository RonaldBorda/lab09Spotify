//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQBx0MSxBs2R72E6PwRxEQiNRcEYI2qas5UrZruhBORjiTYHGhTWmGtYV3Jwd1g3LImkjsxiOYjlLdI-yKhCbreWN6m9BXsW12-ge0JQIGzh3iWnTJroP1pCmClqV_xRQzg58xLm_lPi_Pn5Nz6Li3Yvwxxfj0_YkZjRqxSfAxmDSaY6KnX_ww"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
