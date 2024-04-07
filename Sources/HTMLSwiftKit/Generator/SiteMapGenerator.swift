//
//  SiteMapGenerator.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


struct SiteMapGenerator {
    
    var context: SiteGenerator

    func generateSiteMap() -> String {
        
        let locations = context.siteMaps.map {
            "<url><loc>\($0.url)</loc><priority>\($0.priority)</priority></url>"
        }.joined()

        return """
        <?xml version="1.0" encoding="UTF-8"?>\
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\
        \(locations)\
        </urlset>
        """
    }
}
