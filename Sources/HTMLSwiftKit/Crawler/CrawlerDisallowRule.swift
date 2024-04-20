//
//  CrawlerDisallowRule.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 03/04/24.
//

import Foundation

/// Crawler disallow rule
public struct CrawlerDisallowRule {
    
    /// Agent/Crawler name
    var agent: String
    /// Paths to disallow crawling
    var paths: [String]
    
    
    public init(agent: String, paths: [String]) {
        self.agent = agent
        self.paths = paths
    }

    public init(agent: String) {
        self.agent = agent
        self.paths = ["*"]
    }

    public init(robot: Crawler, paths: [String]) {
        self.agent = robot.rawValue
        self.paths = paths
    }

    public init(robot: Crawler) {
        self.agent = robot.rawValue
        self.paths = ["*"]
    }
}
