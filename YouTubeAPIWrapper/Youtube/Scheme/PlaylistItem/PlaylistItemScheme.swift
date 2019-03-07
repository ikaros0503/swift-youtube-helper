//
//  PlaylistItemScheme.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class PlaylistItemScheme {

    public func list(part: String) -> List {
        return List(part: part)
    }
    
    public class List: GenericScheme<PlaylistItemListResponse> {
        
        required public init(part: String) {
            super.init()
            self.putParam(key: "part", value: part)
        }
        
        public func setId(id: String) -> List {
            putParam(key: "id", value: id)
            return self
        }
        
        public func setPlaylistId(playlistId: String) -> List {
            putParam(key: "playlistId", value: playlistId)
            return self
        }
        
        public func setMaxResults(maxResults: Int) -> List {
            putParam(key: "maxResults", value: maxResults)
            return self
        }
        
        public func setVideoId(videoId: String) -> List {
            putParam(key: "videoId", value: videoId)
            return self
        }
        
        override func getScheme() -> String {
            return "playlistItems"
        }
        
        public override func setKey(key: String) -> List {
            return super.setKey(key: key) as! List
        }
        
        public override func setFields(fields: String) -> List {
            return super.setFields(fields: fields) as! List
        }
        
        public override func setAuthAccessToken(token: String) -> List {
            return super.setAuthAccessToken(token: token) as! List
        }
    }
}
