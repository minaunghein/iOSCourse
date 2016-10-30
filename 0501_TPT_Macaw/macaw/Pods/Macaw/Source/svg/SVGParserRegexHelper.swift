import Foundation

class SVGParserRegexHelper {
    
    fileprivate static let transformAttributePattern = "([a-z]+)\\(((\\-?\\d+\\.?\\d*\\s*,?\\s*)+)\\)"
    fileprivate static let transformPattern = "\\-?\\d+\\.?\\d*"
    fileprivate static let textElementPattern = "<text.*?>((?s:.*))<\\/text>"
    
    fileprivate static var transformMatcher: NSRegularExpression?
    fileprivate static var transformAttributeMatcher: NSRegularExpression?
    fileprivate static var textElementMatcher: NSRegularExpression?
    
    class func getTransformAttributeMatcher() -> NSRegularExpression? {
        if self.transformAttributeMatcher == nil {
            do {
                self.transformAttributeMatcher = try NSRegularExpression(pattern: transformAttributePattern, options: .caseInsensitive)
            } catch {
                
            }
        }
        return self.transformAttributeMatcher
    }
    
    class func getTransformMatcher() -> NSRegularExpression? {
        if self.transformMatcher == nil {
            do {
                self.transformMatcher = try NSRegularExpression(pattern: transformPattern, options: .caseInsensitive)
            } catch {
                
            }
        }
        return self.transformMatcher
    }
    
    class func getTextElementMatcher() -> NSRegularExpression? {
        if self.textElementMatcher == nil {
            do {
                self.textElementMatcher = try NSRegularExpression(pattern: textElementPattern, options: .caseInsensitive)
            } catch {
                
            }
        }
        return self.textElementMatcher
    }
    
}
