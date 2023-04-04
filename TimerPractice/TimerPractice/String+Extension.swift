//
//  String+Extension.swift
//  TimerPractice
//
//  Created by Арсентий Халимовский on 04.04.2023.
//

import Foundation

extension String {
    
    /// With this method we wan't cut date label by 10 symbols to make it clean and concise
    func formateArticleDate() -> String {
        let maxLenght = 2
        let result = String(self.prefix(maxLenght))
        return result
        
    }
}
