//
//  ChannelScheme.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 11/15/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class ChannelScheme {
    public func list(part: String) -> List {
        return List(part: part)
    }
    
    public class List: GenericScheme<ChannelListResponse> {
        required public init(part: String) {
            super.init()
            self.putParam(key: "part", value: part)
        }
        
        override func getScheme() -> String {
            return "channels"
        }
        
        public func setCategoryId(_ categoryId: String) -> List {
            putParam(key: "categoryId", value: categoryId)
            return self
        }
        
        public func setForUserName(_ username: String) -> List {
            putParam(key: "forUsername", value: username)
            return self
        }
        
        public func setId(_ id: String) -> List {
            putParam(key: "id", value: id)
            return self
        }
        
        public func setManagedByMe(_ managedByMe: Bool) -> List {
            putParam(key: "managedByMe", value: managedByMe ? "true" : "false")
            return self
        }
        
        public func setMine(_ mine: Bool) -> List {
            putParam(key: "mine", value: mine ? "true" : "false")
            return self
        }
        
        public func setMaxResults(maxResults: Int) -> List {
            putParam(key: "maxResults", value: maxResults)
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
