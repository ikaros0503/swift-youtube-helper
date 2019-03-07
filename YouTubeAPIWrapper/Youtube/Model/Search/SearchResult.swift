//
//  SearchResult.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class SearchResult: GenericJson {
    public var kind: String? = nil
    public var etag: String? = nil
    public var id: ResourceId? = nil
    public var snippet: SearchResultSnippet? = nil
}

public class SearchResultSnippet: GenericJson {
    public var channelId: String? = nil
    public var channelTitle: String? = nil
    public var title: String? = nil
    public var description: String? = nil
    public var thumbnails: ThumbnailDetails? = nil
}

