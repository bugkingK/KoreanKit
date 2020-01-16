//
//  KoreanKit.swift
//  KoreanKit
//
//  Created by BugkingK on 2020/01/16.
//  Copyright © 2020 bugkingK. All rights reserved.
//

import Foundation

public class KoreanKit {
    
    public enum Syllable:Int { case initial = 0, medial, final }
    
    private let arrConsonant = [
        ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"],
        ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"],
        ["", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    ]
    
    public init() { }
    
    public func split(_ query:String, syllable:Syllable) -> String {
        var syl:String = ""
        
        for scalar in query.unicodeScalars {
            let unicode = scalar.value
            if !(unicode >= 0xAC00 && unicode <= 0xD7A3) {
                syl.append(String(scalar))
                continue
            }
            
            let index = Int(unicode - 0xAC00)
            switch syllable {
                case .initial:  syl.append(arrConsonant[0][index/28/21])
                case .medial:   syl.append(arrConsonant[1][(index/28%21)])
                case .final:    syl.append(arrConsonant[2][index%28])
            }
        }
        
        return syl
    }
    
    public func isSyllable(_ query:String.Element, syllable:Syllable) -> Bool {
        return self.arrConsonant[syllable.rawValue].contains(self.split(String(query), syllable: syllable))
    }
    
}
