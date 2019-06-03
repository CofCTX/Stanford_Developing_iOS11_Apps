//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Rahimi, Meena Nichole (Student) on 5/28/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import UIKit

class EmojiArtDocument: UIDocument {
	
	var emojiArt: EmojiArt? // need model as well
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode document with an instance of Data or NSFileWrapper
        return emojiArt?.json ?? Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load document from contents
		if let json = contents as? Data {
			emojiArt = EmojiArt(json: json)
		}
    }
	
	var thumbnail: UIImage?
	
	// set up thumbnail image for document
	override func fileAttributesToWrite(to url: URL, for saveOperation: UIDocumentSaveOperation) throws -> [AnyHashable : Any] {
		var attributes = try super.fileAttributesToWrite(to: url, for: saveOperation)
		if let thumbnail = self.thumbnail {
			attributes[URLResourceKey.thumbnailDictionaryKey] = [URLThumbnailDictionaryItem.NSThumbnail1024x1024SizeKey: thumbnail]
		}
		return attributes
	}
}
