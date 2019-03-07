//
//  GenericScheme.swift
//  YouTubeDataAPI
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import Foundation
import Alamofire

public class GenericScheme<T: GenericJson> {
    
    let baseUrl = "https://www.googleapis.com/youtube/v3/"
    private var scheme: String {
        get { return getScheme() }
    }
    private var params: Parameters = [:]
    private var headers: HTTPHeaders = [:]
    
    internal func getScheme() -> String {
        return ""
    }
    
    public func setKey(key: String) -> GenericScheme<T> {
        putParam(key: "key", value: key)
        return self
    }
    
    public func setAuthAccessToken(token: String) -> GenericScheme<T> {
        putParam(key: "access_token", value: token)
        return self
    }
    
    public func execute() -> T? {
        var resp: T? = nil
        let group = DispatchGroup()
        let uri = buildURI()
        group.enter()
        Alamofire.request(uri, method: .get, parameters: params, encoding: URLEncoding.default, headers: headers).responseData { response in
            if let error = response.error {
                print(error)
            }
            if let data = response.result.value {
                do {
                    resp = try JSONDecoder().decode(T.self, from: data)
                } catch let err {
                    print("JSONDecoder Error: \(err.localizedDescription)")
                }
            }
            group.leave()
        }
        group.wait()
        return resp
    }
    
    public func putParam(key: String, value: Any) {
        params[key] = value
//        params.append("\(key)=\(String(describing: value))")
    }
    
    public func setFields(fields: String) -> GenericScheme<T> {
        putParam(key: "fields", value: fields)
        return self
    }
    
    private func buildURI() -> String {
        return "\(baseUrl)\(scheme)"
    }
}
