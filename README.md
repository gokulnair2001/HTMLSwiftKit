
![HSK Logo](https://github.com/gokulnair2001/HTMLSwiftKit/assets/56252259/44a40489-fa65-49e7-b626-d2dc1ca36c30)

# HTMLSwiftKit

HTMLSwiftKit is a Swift framework that simplifies the creation of static sites. The kit aims to convert your Swift written code to HTML, thus making your site generation process easy with Swift and handeling the HTML complexities under the hood. The goal of HTMLSwiftKit is to enable anyone with basic HTML knowledge to develop websites in Swift. 

It includes all the essential HTML tags that are modifeied as per swift language whhich can be directly used. Now start generating your websites using swift.

# Getting Started

Creating a site is pretty simple with HTMLSwiftKit:

### 1. Create HTML Page
   
   Every website have few pages associated with it, lets see how to make a HTMLPage using HTMLSwiftKit

   Create a struct and implement the ```HTMLPage``` protocol, and you are good to start building your page.

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
> [!Tip]
> Start adding your HTML elements inside htmlContent block just like HTML without < > tag

### 2. Create CSS

Want to add CSS to your Webpage, HTMLSwiftKit covers that too.

Create a struct implement the ```CSSBlock``` protocol and provide the [CSS type](#css-type) and start adding your styling modifiers.

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
  
> [!Note]
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
Here once the build file is generated, the console will print the Build location. Checkout the location to get the Build file.

> [!Note]
> Console will print "HTMLSwiftKit: Build is available at ```pathURL``` "

Check this starter project to understand more.

By following the given procedure you can build your static site easily.

# Crawlers

HTMLSwiftKit supports the functionality of Robots. So you can restrict certain crawlers from crawling your website. All you need to do is mention the crawlers you dont want to allpow crawling and add paths if there is any.

```swift
class CrawlerConfig: CrawlerConfiguration {
    
    var disallowRules: [CrawlerDisallowRule] = [CrawlerDisallowRule(robot: .google)]
    
}
```

> [!Tip]
> The kit includes a variety of crawlers, you can also add a specific crawler by directly providing the agent name.

# CSSModifiers

Currently the kit supports the following of CSS modifiers:

| Modifiers | Modifiers |
| -- | -- |
| BackgroundColor | Border |
| Color | FontFamily |
| FontSize | FontWeight |
| Margins | Padding |
| TextAlignment | TextDecoration |
| TextTransform | Width |
| Height |  |

Raise an issue if you want to add any new modifier into the kit.

# HTML Blocks

Currently the kit supports the following of HTML elements:

| Elements | Elements | Elements | Elements |
| -- | -- | -- | -- |
| Address | BlockQuote | Body | Break |
| Button | Cite | Code | Delete |
| Description | DescriptionList | DescriptionTerm | Details |
| Dialouge | Division | Footer | Head |
| Heading | HorizontalRule | Hyperlink | Image |
| Insert | ListItem | Mark | Meta |
| NoScript | OrderedList | Paragraph | Script |
| Span | Style | UnorderedList | |

Raise an issue if you want to add any new element into the kit.

# Kit Specific Element

Now there are few elements which are very specific to this kit. These elements are made to bridge the gap that swift cant handle directly. 

Currently we only have one such element:

| Element | Description |
| -- | -- |
| Text | Used while interpolating texts |

# CSS Type

Primarily we have two kinds of CSS Type:

### 1. Source
   * Source type CSS are used when created CSS is applied on any source tag
   * Want to create CSS for Button, Divider, Heading etc, set CSS type to Source
     
### 2. Custom
   * Custom type CSS is used when created CSS is a custom class
   * Use this when any form of custom CSS needs to be used
  
   Providing a correct CSS type is important, since this will case change in Source code generation

# Block Builders

HTMLSwiftKit have three block builder:

### 1. HtmlBlockBuilder

   All the HTML blocks will be rendered by this block. When you are creating any HTML Content, the modifiers must be wrapped by this builder block.

### 2. CSSModifierBuilder 

   All the CSS styling blocks are rendered by this block. When adding any type of CSS styling make sure the modifiers are wrapped by this builder block.
 
### 3. CSSBlockBuilder

   While injecting a CSS into the HTMLBlock we will use Style block. Now style block can have various types of CSS. Thus to incorporate these multiple styles we have this block builder.

