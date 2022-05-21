//
//  PlatlistDetailViewModel.swift
//  SpotifyCloneB
//
//  Created by Ronald Meliton Borda Bernaola on 21/05/22.
//

import Foundation

class PlatlistDetailViewModel {
    
    let request: Request = Request()
    
    var playlistDetail: PlaylistDetail? = nil
    
    func getPlaylistDetail(id: String) async {
        let data = await request.getDataFromAPI(url: "users/21z4lgavozmjizsuu6iajapbq/playlists/\(id)")
        
        if data != nil {
            if let decoder = try? JSONDecoder().decode(PlaylistDetail.self, from: data!) {
                DispatchQueue.main.async(execute: {
                    self.playlistDetail = decoder
                })
            }
        }
    }
    
}
