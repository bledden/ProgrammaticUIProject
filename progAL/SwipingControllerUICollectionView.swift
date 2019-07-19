//
//  SwipingControllerDelegate.swift
//  progAL
//
//  Created by Blake Ledden on 7/18/19.
//  Copyright © 2019 Blake Ledden. All rights reserved.
//

import UIKit

extension SwipingController {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return pages.count
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        let page = pages[indexPath.item]
        cell.page = page
        
        // replacing below with above
        //        cell.bearImageView.image = UIImage(named: page.imageName)
        //        cell.descriptionTextView.text = page.headerText
        // replacing below with above
        //        let imageName = imageNames[indexPath.item]
        //        cell.bearImageView.image = UIImage(named: imageName)
        //        cell.descriptionTextView.text = headerStrings[indexPath.item]
        
        //        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        
        return cell
        
    }
    
}
