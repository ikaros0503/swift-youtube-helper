//
//  SearchListResponse.swift
//  YouTubeAPIWrapper
//
//  Created by An Nguyen on 10/19/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation

public class SearchListResponse: GenericListResponse<SearchResult> {
    public var regionCode: String? = nil
}
