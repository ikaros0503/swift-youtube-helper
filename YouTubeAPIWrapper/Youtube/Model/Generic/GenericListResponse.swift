//
//  GenericListResponse.swift
//  YouTubeDataAPI
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class GenericListResponse<T: GenericJson>: GenericJson {
    public var kind: String? = nil
    public var etag: String? = nil
    public var pageInfo: PageInfo? = nil
    public var nextPageToken: String? = nil
    public var prevPageToken: String? = nil
    public var items: [T] = []
    
    public init() {
        
    }
    
}

public class PageInfo: GenericJson {
    public var totalResults: Int? = nil
    public var resultsPerPage: Int? = nil
}
