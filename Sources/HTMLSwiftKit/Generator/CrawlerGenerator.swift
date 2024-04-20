//
//  CrawlerGenerator.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


/// Crawler file generator
struct CrawlerGenerator {
    
    /// Uses the Website data to get the Crawler details
    var site: any WebSite

    /// Generates crawler rules
    func generateCrawlers() -> String {
        
        let disallowRules = site.crawlerConfiguration.disallowRules.map { rule in
            var ruleText = "User-agent: \(rule.agent)\n"

            ruleText += rule.paths.map {
                "Disallow: \($0)\n"
            }.joined()

            return "\(ruleText)\n"
        }.joined()

        let result = """
        \(disallowRules)\
        User-agent: *
        Allow: /

        Sitemap: \(site.baseUrl.absoluteString)/sitemap.xml
        """

        return result
    }
}
