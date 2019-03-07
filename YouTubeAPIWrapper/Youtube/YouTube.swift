//
//  YouTube.swift
//  YouTubeDataAPI
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class YouTube {
    public static func video() -> VideoScheme {
        return VideoScheme()
    }
    
    public static func playlist() -> PlaylistScheme {
        return PlaylistScheme()
    }
    
    public static func playlistItem() -> PlaylistItemScheme {
        return PlaylistItemScheme()
    }
    
    public static func search() -> SearchScheme {
        return SearchScheme()
    }
    
    public static func channel() -> ChannelScheme {
        return ChannelScheme()
    }
}

