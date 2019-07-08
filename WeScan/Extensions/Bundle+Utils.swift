//
//  Bundle+Utils.swift
//  WeScan
//
//  Created by Hafeez Ahmed on 7/8/19.
//  Copyright © 2019 WeTransfer. All rights reserved.
//

import Foundation


extension Bundle {
    
    class func localizedString(aClass: AnyClass, key: String, value: String?) -> String? {
        guard let bundle = Bundle(for: aClass).path(forResource: "WeScan", ofType: "bundle"), let finalBundle = Bundle(path: bundle) else {
            return Bundle.main.localizedString(forKey: key, value: value, table: nil)
        }
        
        return finalBundle.localizedString(forKey: key, value: value, table: nil)
    }
}
