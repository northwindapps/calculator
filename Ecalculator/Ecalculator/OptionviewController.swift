//
//  OptionviewController.swift
//  Ecalculator
//
//  Created by 矢野悠人 on 2017/02/07.
//  Copyright © 2017年 yumiya. All rights reserved.
//

import UIKit
import GoogleMobileAds

class OptionviewController: UIViewController,GADBannerViewDelegate {
    
    @IBOutlet weak var blselector: UISegmentedControl!

    let mainview = ViewController()
    var interstitial: GADInterstitial!
    
    @IBOutlet weak var prtext: UITextView!
    override func viewDidLoad() {
        
        //
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if appDelegate.appbl == false{
            
            blselector.selectedSegmentIndex = 1
            
        }
        
        prtext.text = "Video Tutorials\nhttps://www.youtube.com/channel/UCzhiGM_2DmbKdgDJjbyYfAQ"
        
        //
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-5284441033171047/6362833613")
        let request = GADRequest()
        interstitial.load(request)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func blchanger(_ sender: Any) {
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.appbl = !appDelegate.appbl
        
        
    }

    @IBAction func ad(_ sender: Any) {
        
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
            interstitial = createAd()
        }
        
    }
    
    func createAd() -> GADInterstitial {
        
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-5284441033171047/6362833613")
        interstitial.load(GADRequest())
        return interstitial
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
