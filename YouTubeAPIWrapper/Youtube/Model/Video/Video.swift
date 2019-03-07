//
//  Video.swift
//  YouTubeDataAPI
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class Video: GenericJson {
    public var kind: String? = nil
    public var id: String? = nil
    public var snippet: VideoSnippet? = nil
    public var contentDetails: VideoContentDetails? = nil
    public var status: VideoStatus? = nil
    public var statistics: VideoStatistics? = nil
}

public class VideoSnippet: GenericJson {
    public var description: String? = nil
    public var channelId: String? = nil
    public var title: String? = nil
    public var channelTitle: String? = nil
    public var categoryId: String? = nil
    public var thumbnails: ThumbnailDetails? = nil
}

public class VideoContentDetails: GenericJson {
    public var duration: String? = nil
}

public class VideoStatus: GenericJson {
    public var embeddable: Bool? = nil
}

public class VideoStatistics: GenericJson {
    public var viewCount: UInt64? = nil
    public var likeCount: UInt64? = nil
    public var dislikeCount: UInt64? = nil
    public var favoriteCount: UInt64? = nil
    public var commentCount: UInt64? = nil
}
