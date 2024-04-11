//
//  Extensions+URL.swift
//
//
//  Created by Gokul Nair on 11/04/24.
//

import Foundation


extension URL {
  
    public static func packageDirectory(from file: StaticString) throws -> URL {
        var currentURL = URL(filePath: file.description)
///www.google.com/text/help/new
        ////*
        ///www.google.com/text/help
        ///*/
        repeat {
            currentURL = currentURL.deletingLastPathComponent()
            let packageURL = currentURL.appending(path: "Package.swift")

            if FileManager.default.fileExists(atPath: packageURL.path) {
                return packageURL.deletingLastPathComponent()
            }
        } while currentURL.path().isEmpty == false

        throw PageGeneratorError.packageDirectoryMissing
    }
}
