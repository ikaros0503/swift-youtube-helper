//
//  SearchScheme.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class SearchScheme {
    
    public func list(part: String) -> List {
        return List(part: part)
    }
    
    public class List: GenericScheme<SearchListResponse> {
        
        required public init(part: String) {
            super.init()
            self.putParam(key: "part", value: part)
        }
        
        override func getScheme() -> String {
            return "search"
        }
        
        public func forContentOwner(forContentOwner: Bool) -> List {
            var data = "false"
            if (forContentOwner) {
                data = "true"
            }
            putParam(key: "forContentOwner", value: data)
            return self
        }
        
        public func setRelatedToVideoId(videoId: String) -> List {
            putParam(key: "relatedToVideoId", value: videoId)
            return self
        }
        
        public func setChannelId(channelId: String) -> List {
            putParam(key: "channelId", value: channelId)
            return self
        }
        
        public func setMaxResults(maxResults: Int) -> List {
            putParam(key: "maxResults", value: maxResults)
            return self
        }
        
        public func setQ(q: String) -> List {
            putParam(key: "q", value: q)
            return self
        }
        
        public func setOrder(order: String) -> List {
            putParam(key: "order", value: order)
            return self
        }
        
        public func setPageToken(pageToken: String) -> List {
            putParam(key: "pageToken", value: pageToken)
            return self
        }
        
        public func setType(type: String) -> List {
            putParam(key: "type", value: type)
            return self
        }
        
        public func setTopicId(topicId: String) -> List {
            putParam(key: "topicId", value: topicId)
            return self
        }
        
        public override func setKey(key: String) -> List {
            return super.setKey(key: key) as! List
        }
        
        public override func setFields(fields: String) -> List {
            return super.setFields(fields: fields) as! List
        }
        
        public override func setAuthAccessToken(token: String) -> GenericScheme<SearchListResponse> {
            return super.setAuthAccessToken(token: token) as! List
        }
    }
}
