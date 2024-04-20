//
//  SiteMapGenerator.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


/// SiteMap Generator
struct SiteMapGenerator {
    
    /// Sitemap Generator context
    var context: SiteGenerator

    /// Sitemap generation
    func generateSiteMap() -> String {
        
        let locations = context.siteMaps.map {
            "<url><loc>https://\(context.site.baseUrl)\($0.path)</loc><priority>\($0.priority)</priority> <changefreq>\($0.changeFrequency.rawValue)</changefreq></url>"
        }.joined()

        return """
        <?xml version="1.0" encoding="UTF-8"?>\
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\
        \(locations)\
        </urlset>
        """
    }
}
