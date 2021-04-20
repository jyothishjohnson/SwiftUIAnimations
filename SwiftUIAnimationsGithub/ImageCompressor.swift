//
//  ImageCompressor.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 20/04/21.
//

import SwiftUI

struct ImageCompressor {
    
    static func compressedImage(imageName: String, frame : CGSize, scale : CGFloat = UIScreen.main.scale) -> Image?{
        
        let imageSourceOptions = [kCGImageSourceShouldCache: false] as CFDictionary
        
        
        guard let imageSource = CGImageSourceCreateWithData(getImageFromDir("\(imageName)_\(imageName)")! as CFData, imageSourceOptions) else{
            return nil
        }
        
        let compressOptions = [
            kCGImageSourceCreateThumbnailFromImageAlways: true,
            kCGImageSourceCreateThumbnailWithTransform: true,
            kCGImageSourceShouldCacheImmediately: true,
            kCGImageSourceThumbnailMaxPixelSize: max(frame.width, frame.height) * scale
        ] as CFDictionary
        
        guard let compressedImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, compressOptions) else{
            return nil
        }
        
        return Image(compressedImage, scale: scale, orientation: .up, label: Text("image"))
        
    }
    
    static func getImageFromDir(_ imageName: String) -> Data? {
        
        guard let path = Bundle.main.path(forResource: imageName, ofType:"jpg") else {
            return nil
        }
        let url = URL(fileURLWithPath: path)
        return try! Data(contentsOf: url)
    }
    
}
