//
//  ViewController.swift
//  agc
//
//  Created by Malti Maurya on 29/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var catImageArray : [String] = ["ic_group","ic_group_2","ic_group_3","ic_group_4","ic_group_5","ic_group_6","ic_group_7"]
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewHeight.constant = CGFloat(250 * catImageArray.count)
        self.view.needsUpdateConstraints()
        self.view.setNeedsLayout()
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        registerBtn.layer.cornerRadius = 5.0
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func goToProfile(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
         
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catImageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryTableViewCell", for: indexPath) as! categoryTableViewCell
        
        cell.catImage.image = UIImage(named: catImageArray[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
}

