# Getting Started

Creating a site is pretty simple with HTMLSwiftKit:

### 1. Create HTML Page
   
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

### 2. Create CSS

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
   Create a struct implement the ```CSSBlock``` protocol and provide the [CSS type]() and start adding your styling modifiers.

> Make sure you add your CSS block into your HTMLContent block to allow HTML to get context of it

```swift
 var htmlContent: [HTMLBlock] {
        Style({ BasicCSS() })
 }
```
   
### 3. Configure Website

Once the HTMLPages and CSS are ready, now its tme to configure your website

   ```swift
    struct MyWebSite: WebSite {
    
        var baseUrl: URL = URL(string: "www.htmlswiftkit.com")!
    
        var author: String = "Gokul"
    
        var pages: [HTMLSwiftKit.HTMLPage] = [FirstPage(), SecondPage()]
    
        var crawlerConfiguration: CrawlerConfiguration = CrawlerConfig()
    }
   ```
Create a struct implement the ```website``` protocol and provide the necessary data and you have configured your website.

### 4. Generate/Publish

Once you are ready with your Website configuration now its time to generate the Site source code. 

So HTMLSwiftKit provides two way to generate your source code:

### 1. Using SPM

To generate the site via SPM, create your own new SPM, add HTMLSwiftKit as a dependency and configure the above mentioned things. Once you have done all the stpes mentioned create an instance of the website and trigger the ```publishViaSPM()``` method

```swift
@main
struct StartWebsite {
    static func main() {
        let site = MyWebSite()
        
        do {
            try site.publishViaSPM()
        } catch {
            print(error.localizedDescription)
        }
    }
}
```
On generating Site via SPM, the kit creates a Build folder into your existing package.

Check this starter project to understand more.

### 2. Using iOS Device

To generate the site via Device, create a new project and add HTMLSwiftKit as a dependency and configure the above mentioned things. Once you have done all the stpes mentioned create an instance of the website and trigger the ```publishViaDevice()``` method

```swift
@main
struct StartWebsite {
    static func main() {
        let site = MyWebSite()
        
        do {
            try site.publishViaDevice()
        } catch {
            print(error.localizedDescription)
        }
    }
}
```


Check this starter project to understand more.

By following the given procedure you can build your static site easily.
