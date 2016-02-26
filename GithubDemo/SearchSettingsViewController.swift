//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by KaKin Chiu on 2/25/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func onSave(settings: GithubRepoSearchSettings)
    func onCancel()
}

class SearchSettingsViewController: UIViewController {
    
    var minimumStars: Int?

    
    @IBOutlet weak var onCancelButton: UIBarButtonItem!
    
    @IBOutlet weak var sliderStarts: UISlider!
    
    
    @IBOutlet weak var onSaveButton: UIBarButtonItem!
    

    weak var delegate: SettingsPresentingViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let navController = segue.destinationViewController as! UINavigationController
        let vc = navController.topViewController as! RepoResultsViewController
        
        print("pass settings")
    }
    
    @IBAction func onSave(sender: AnyObject) {
        minimumStars = sliderStarts.value as? Int
        // dismissViewController
        self.delegate?.onSaveButton(settings)
        self.dismissViewControllerAnimated(false, completion: nil)
        print("save")

    }

    @IBAction func onCancel(sender: AnyObject) {
        self.delegate?.onCancelButton()
        // dismissViewController
        self.dismissViewControllerAnimated(false, completion: nil)
        print("cancel")

    }
    
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    */

}
