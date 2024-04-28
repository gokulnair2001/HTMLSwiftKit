#  Crawlers

HTMLSwiftKit supports the functionality of Robots/Crawlers. So you can restrict certain crawlers from crawling your website. All you need to do is mention the crawlers you don't want to allow crawling and add paths if there is any.

```swift
class CrawlerConfig: CrawlerConfiguration {
    
    var disallowRules: [CrawlerDisallowRule] = [CrawlerDisallowRule(robot: .google)]
    
}
```

### Configuration
- <doc:CrawlerConfiguration>
- <doc:CrawlerDisallowRule>
