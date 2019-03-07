//
//  Playlist.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class Playlist: GenericJson {
    public var kind: String? = nil
    public var etag: String? = nil
    public var id: String? = nil
    public var snippet: PlaylistSnippet? = nil
    public var contentDetails: PlaylistContentDetails? = nil
    public var status: PlaylistStatus? = nil
}

public class PlaylistSnippet: GenericJson {
    public var channelId: String? = nil
    public var title: String? = nil
    public var description: String? = nil
    public var channelTitle: String? = nil
    public var thumbnails: ThumbnailDetails? = nil
}

public class PlaylistContentDetails: GenericJson {
    public var itemCount: UInt32? = nil
}

public class PlaylistStatus: GenericJson {
    public var privacyStatus: String? = nil
}
