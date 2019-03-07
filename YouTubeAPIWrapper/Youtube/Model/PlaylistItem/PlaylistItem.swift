//
//  PlaylistItem.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class PlaylistItem: GenericJson {
    public var kind: String? = nil
    public var etag: String? = nil
    public var id: String? = nil
    public var snippet: PlaylistItemSnippet? = nil
    public var contentDetails: PlaylistItemContentDetails? = nil
    public var status: PlaylistItemStatus? = nil
}

public class PlaylistItemSnippet: GenericJson {
    public var channelId: String? = nil
    public var channelTitle: String? = nil
    public var title: String? = nil
    public var description: String? = nil
    public var playlistId: String? = nil
    public var position: UInt? = nil
    public var resourceId: ResourceId? = nil
    public var thumbnails: ThumbnailDetails? = nil
}

public class PlaylistItemContentDetails: GenericJson {
    public var videoId: String? = nil
    public var startAt: String? = nil
    public var endAt: String? = nil
    public var note: String? = nil
}

public class PlaylistItemStatus: GenericJson {
    public var privacyStatus: String? = nil
}
