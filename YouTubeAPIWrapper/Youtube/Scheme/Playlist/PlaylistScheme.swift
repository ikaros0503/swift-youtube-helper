//
//  PlaylistScheme.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class PlaylistScheme {
    public func list(part: String) -> List {
        return List(part: part)
    }
    
    public class List: GenericScheme<PlaylistListResponse> {
        
        required public init(part: String) {
            super.init()
            self.putParam(key: "part", value: part)
        }
        
        override func getScheme() -> String {
            return "playlists"
        }
        
        public func setId(id: String) -> List {
            putParam(key: "id", value: id)
            return self
        }
        
        public func setChannelId(channelId: String) -> List {
            putParam(key: "channelId", value: channelId)
            return self
        }
        
        public func setMine(isMine: Bool) -> List {
            var mine = "false"
            if (isMine) {
                mine = "true"
            }
            putParam(key: "mine", value: mine)
            return self
        }
        
        public func setPageToken(pageToken: String) -> List {
            putParam(key: "pageToken", value: pageToken)
            return self
        }
        
        public func setMaxResults(maxResult: Int) -> List {
            putParam(key: "maxResults", value: maxResult)
            return self
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
