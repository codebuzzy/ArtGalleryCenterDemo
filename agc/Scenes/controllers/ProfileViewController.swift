//
//  ProfileViewController.swift
//  agc
//
//  Created by Malti Maurya on 29/06/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var artGalleryCollectionView: UICollectionView!
    @IBOutlet weak var artGalleryHeight: NSLayoutConstraint!
    @IBOutlet weak var palleteCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setToolbarHidden(true, animated: false)
        artGalleryHeight.constant = 200 * 8
        self.view.needsUpdateConstraints()
        self.view.setNeedsLayout()
        navigationController?.setNavigationBarHidden(true, animated: false)


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
}

extension ProfileViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == palleteCollectionView {
            return 10

        }else{
            return 18
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == artGalleryCollectionView {
          let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
          let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
          let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
          return CGSize(width: size, height: size)
        }else{
            return CGSize(width: 150, height: 60)
        }
        
      }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == palleteCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "palleteCollectionViewCell", for: indexPath)
            cell.backgroundColor = UIColor.random
            
             
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "artGalleryCollectionViewCell", for: indexPath)
            cell.backgroundColor = UIColor.random
            return cell
            
        }
        
    }
    
    
}
