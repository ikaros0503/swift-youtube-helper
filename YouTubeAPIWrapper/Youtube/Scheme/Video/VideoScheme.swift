//
//  VideoScheme.swift
//  YouTubeDataAPI
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class VideoScheme {

    public func list(part: String) -> List {
        return List(part: part)
    }
    
    public class List: GenericScheme<VideoListResponse> {
        
        required public init(part: String) {
            super.init()
            self.putParam(key: "part", value: part)
        }
        
        override func getScheme() -> String {
            return "videos"
        }
        
        public func setId(id: String) -> List {
            putParam(key: "id", value: id)
            return self
        }
        
        public func setPageToken(pageToken: String) -> List {
            putParam(key: "pageToken", value: pageToken)
            return self
        }
        
        public func setMaxResults(maxResults: Int) -> List {
            putParam(key: "maxResults", value: maxResults)
            return self
        }
        
        public func setChart(chart: String) -> List {
            putParam(key: "chart", value: chart)
            return self
        }
        
        public func setRegionCode(regionCode: String) -> List {
            putParam(key: "regionCode", value: regionCode)
            return self
        }
        
        public func setVideoCategoryId(id: String) -> List {
            putParam(key: "videoCategoryId", value: id)
            return self
        }
        
        public override func setKey(key: String) -> List {
            return super.setKey(key: key) as! VideoScheme.List
        }
        
        public override func setFields(fields: String) -> List {
            return super.setFields(fields: fields) as! List
        }
        
        public override func setAuthAccessToken(token: String) -> GenericScheme<VideoListResponse> {
            return super.setAuthAccessToken(token: token) as! List
        }
    }
}
