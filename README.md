### HTMLSwiftKit

HTMLSwiftKit is a Swift based wrapper on HTML that simplifies the creation of static sites, making the process easy and straightforward. The kit includes all the essential HTML tags that can be directly used in Swift.

HTMLSwiftKit aims to convert your Swift written code to HTML, thus making your site generation process easy with Swift and handeling the HTML complexities under the hood. The goal of HTMLSwiftKit is to enable anyone with basic HTML knowledge to develop websites in Swift.

### Getting Started

Creating a site is pretty simple with HTMLSwiftKit:

1. Create HTML Page
   
   Every website have few pages associated with it, lets see how to make a HTMLPage using HTMLKit

   ```swift
     struct FirstPage: HTMLPage {

       /// Your HTMLContent
        var htmlContent: [HTMLBlock] {
        
            Heading(.h1, "Random Image")
   
            Image(src: "https://picsum.photos/200/300", alt: "Test")
   
            HorizontalRule()
        }
     }
   ```
   Create a struct and implement the ```HTMLPage``` protocol, and you are good to start building your page.

2. Create CSS

 Now just like every normal HTML page you need to give some CSS to it, so HTMLSwiftKit covers that too.

 ```swift
    struct BasicCSS: CSSBlock {
    
      var cssType: CSSType = .custom
    
      var content: [CSSModifier] {
          Border(5, border: .dotted, color: "orange")
          BackgroundColor(color: "yellow")
          FontSize(22)
          Color("Red")
          Padding(200)
      }
    }
 ```
   Create a struct implement the ```CSSBlock``` protocol and provide the CSS type and you start adding your styling modifiers.

> [!Note]
> Make sure you add your CSS block into your HTMLContent block to allow HTML to get context of it

```swift
 var htmlContent: [HTMLBlock] {
        Style({ BasicCSS() })
 }
```
   
3. Configure your Website

Once the HTMLPages and CSS are ready, now its tme to configure your website
   ```swift
    struct MyWebSite: WebSite {
    
        var baseUrl: URL = URL(string: "www.gokul.com")!
    
        var author: String = "Gokul"
    
        var pages: [HTMLSwiftKit.HTMLPage] = [FirstPage(), SecondPage()]
    
        var crawlerConfiguration: CrawlerConfiguration = CrawlerConfig()
    }
   ```
5. Provide all the 
