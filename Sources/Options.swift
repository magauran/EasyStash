//
//  Options.swift
//  EasyStash
//
//  Created by khoa on 27/05/2019.
//  Copyright © 2019 Khoa Pham. All rights reserved.
//

import Foundation

public struct Options {
    public enum Directory {
        case searchPath(_ searchPathDirectory: FileManager.SearchPathDirectory)
        case sharedContainer(appGroupName: String)
    }

    public var directory: Directory = .searchPath(.cachesDirectory)
    public var folder: String = (Bundle.main.bundleIdentifier ?? "").appending("/Default")
    public var encoder: JSONEncoder = JSONEncoder()
    public var decoder: JSONDecoder = JSONDecoder()

    public init() {}
}
