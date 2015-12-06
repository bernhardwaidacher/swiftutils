//
//  String+Utils.swift
//  swiftutils
//
//  Created by Bernhard Waidacher on 05.12.15.
//  Copyright © 2015 Bernhard Waidacher. All rights reserved.
//

import Foundation

extension String{
    var len:Int{
        return self.characters.count;
    }
    
    subscript(n:Int) ->String{
        if n < 0 || n >= self.len{
            return "";
        }else{
            return String(self[self.startIndex.advancedBy(n)])
        }
    }
    
    subscript(start:Int, end:Int)->String{
        var n1 = start
        var n2 = end
        
        if n1 < 0{
            n1 = 0
        }
        if n1 > self.len{
            n1 = self.len
        }
        
        if n2 < 0{
            n2 = 0
        }
        
        if n2 > self.len{
            n2 = self.len
        }
        
        if n2 < n1{
            return ""
        }else{
            return self[self.startIndex.advancedBy(n1) ..< self.startIndex.advancedBy(n2)]
        }
        
    }
    
    subscript(rng:Range<Int>)->String{
        return self[rng.startIndex, rng.endIndex]
    }
}