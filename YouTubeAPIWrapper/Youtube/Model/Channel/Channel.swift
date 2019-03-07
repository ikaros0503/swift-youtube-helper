//
//  Channel.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 11/15/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class Channel: GenericJson {
    public var kind: String? = nil
    public var etag: String? = nil
    public var id: String? = nil
    public var snippet: ChannelSnippet? = nil
    public var contentDetails: ChannelContentDetails? = nil
    public var statistics: ChannelStatistics? = nil
    public var brandingSettings: ChannelBrandSettings? = nil
}

public class ChannelSnippet: GenericJson {
    public var title: String? = nil
    public var description: String? = nil
    public var thumbnails: ThumbnailDetails? = nil
    public var country: String? = nil
}

public class ChannelContentDetails: GenericJson {
    public var relatedPlaylists: ChannelRelatedPlaylist? = nil
}

public class ChannelRelatedPlaylist: GenericJson {
    public var likes: String? = nil
    public var favorites: String? = nil
    public var uploads: String? = nil
    public var watchHistory: String? = nil
    public var watchLater: String? = nil
}

public class ChannelStatistics: GenericJson {
    public var viewCount: UInt32? = nil
    public var commentCount: UInt32? = nil
    public var subscriberCount: UInt32? = nil
    public var hiddenSubscriberCount: UInt32? = nil
    public var videoCount: UInt32? = nil
}

public class ChannelBrandSettings: GenericJson {
    public var channel: ChannelBrandSettings.Channel? = nil
    public var watch: Watch? = nil
    public var image: Image? = nil
}

extension ChannelBrandSettings {
    
    public class Channel: GenericJson {
        public var title: String? = nil
        public var description: String? = nil
        public var keywords: String? = nil
        public var defaultTab: String? = nil
    }
    
    public class Watch: GenericJson {
        public var textColor: String? = nil
        public var backgroundColor: String? = nil
        public var featuredPlaylistId: String? = nil
    }
    
    public class Image: GenericJson {
       public var bannerImageUrl : String? = nil
       public var bannerMobileImageUrl : String? = nil
       public var watchIconImageUrl : String? = nil
       public var trackingImageUrl : String? = nil
       public var bannerTabletLowImageUrl : String? = nil
       public var bannerTabletImageUrl : String? = nil
       public var bannerTabletHdImageUrl : String? = nil
       public var bannerTabletExtraHdImageUrl : String? = nil
       public var bannerMobileLowImageUrl : String? = nil
       public var bannerMobileMediumHdImageUrl : String? = nil
       public var bannerMobileHdImageUrl : String? = nil
       public var bannerMobileExtraHdImageUrl : String? = nil
       public var bannerTvImageUrl : String? = nil
       public var bannerTvLowImageUrl : String? = nil
       public var bannerTvMediumImageUrl : String? = nil
       public var bannerTvHighImageUrl : String? = nil
       public var bannerExternalUrl : String? = nil
    }
}

public class ChannelListResponse: GenericListResponse<Channel> {
    
}




