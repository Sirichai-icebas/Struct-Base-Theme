//
//  Theme.swift
//  Roche
//
//  Created by Sirichai Monhom on 1/4/18.
//  Copyright © 2018 Sirichai Monhom. All rights reserved.
//

import UIKit

struct FontSet {
    
    internal let regularName: String
    
    internal let boldName: String
    
    internal let italic: String
    
    internal let light: String
    
    internal let medium: String
    
    func regular(of size:CGFloat) -> UIFont {
        return UIFont(name: regularName, size: size)!
    }
    
    func bold(of size:CGFloat) -> UIFont {
        return UIFont(name: boldName, size: size)!
    }
    
    func italic(of size:CGFloat) -> UIFont {
        return UIFont(name: italic, size: size)!
    }
    
    func light(of size:CGFloat) -> UIFont {
        return UIFont(name: light, size: size)!
    }
    
    func medium(of size:CGFloat) -> UIFont {
        return UIFont(name: medium, size: size)!
    }
    
    // Default Font Set.
    static let `default` = FontSet(regularName: "Quicksand-Regular",
                                   boldName: "Quicksand-Bold",
                                   italic:   "Quicksand-Italic",
                                   light: "Quicksand-Light",
                                   medium: "Quicksand-Medium")
}

struct ColorSet {
    
    /**
     * Positive Accent Color of the App
     */
    let primary: UIColor
    
    /**
     * Alternate Positive Accent Color of the App
     */
    let secondary: UIColor
    
    /**
     * Negative Color of the App
     */
    let negative: UIColor
    
    /**
     * Subtle Color of the App
     *  - Use with Label, DarkText
     */
    let subtle: UIColor
    
    /**
     * White Background
     */
    let background: UIColor
    
    let greenBorder: UIColor
    
    let redBorder: UIColor
    
    let darkBlue: UIColor
    
    let yellow: UIColor
    
    
    // Default Color Set
    static let `default` = ColorSet(primary:    .rgb(0x006FBA),
                                    secondary:  .rgb(0x4a4a4a),
                                    negative:   .orange,
                                    subtle:     .rgb(0x4a4a4a),
                                    background: .rgb(0xF9F9F9),
                                    greenBorder:.rgb(0x5CD38E),
                                    redBorder:  .rgb(0xE94D2B),
                                    darkBlue:  .rgb(0x08558A),
                                    yellow: .rgb(0xFFDA44))
}



class Theme: NSObject {
    
    static var `default`:Theme = Theme(colors: .default, fonts: .default)
    
    static var current = Theme.default
    
    var colors:ColorSet
    
    var fonts:FontSet
    
    init(colors:ColorSet, fonts:FontSet) {
        self.colors = colors
        self.fonts = fonts
        super.init()
    }
}

extension Theme {
    static var colors:ColorSet {
        return Theme.current.colors
    }
    
    static var fonts:FontSet {
        return Theme.current.fonts
    }
}
