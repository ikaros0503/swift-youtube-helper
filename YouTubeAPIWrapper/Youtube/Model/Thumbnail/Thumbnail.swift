//
//  Thumbnail.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/18/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class ThumbnailDetails: GenericJson {
    public var `default`: Thumbnail? = nil
    public var high: Thumbnail? = nil
    public var medium: Thumbnail? = nil
    public var maxres: Thumbnail? = nil
    public var standard: Thumbnail? = nil
    
}

public class Thumbnail: GenericJson {
    public var height: Int64?
    public var width:  Int64?
    public var url: String?
}
