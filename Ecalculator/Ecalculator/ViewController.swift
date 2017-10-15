//
//  ViewController.swift
//  Ecalculator
//
//  Created by 矢野悠人 on 2017/02/05.
//  Copyright © 2017年 yumiya. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController,UITextViewDelegate,GADBannerViewDelegate,UITableViewDelegate,UITableViewDataSource {
    
    var numberview :numberkey!
    
    var noteview : Noteview!
    
    @IBOutlet weak var mytv: UITableView!

    
    
    @IBOutlet weak var bannerview: GADBannerView!
    
    var tag_int :Int!
    
    var recover_int : Int!
    
    var array0 = [String]()
    var array1 = [String]()
    var array2 = [String]()
 
    
    
    var recover0 = [String]()
    var recover1 = [String]()
    var recover2 = [String]()
    
    
    
    
    var recover00 = [String]()
    var recover01 = [String]()
    var recover02 = [String]()
 
   
    
    var recover000 = [String]()
    var recover001 = [String]()
    var recover002 = [String]()
    
    
    var entry = [String]()

  
    
    var data: Data? = nil
    
    
    var device_size : Int = 0
    
    
    
    var bl : Bool!
    
    var global = NilController()
    
    var interstitial: GADInterstitial!
    
    var varibaletab = 0


    //
    @IBOutlet weak var `var`: UIButton!
    @IBOutlet weak var var2: UIButton!
    @IBOutlet weak var X: UIButton!
    @IBOutlet weak var Y: UIButton!
    @IBOutlet weak var option: UIButton!
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var del: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var PLUS: UIButton!
    @IBOutlet weak var MINUS: UIButton!
    @IBOutlet weak var MULTIPLY: UIButton!
    @IBOutlet weak var DIVIDE: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var brace: UIButton!
    @IBOutlet weak var brace_end: UIButton!
    @IBOutlet weak var sqrt: UIButton!
    @IBOutlet weak var pi: UIButton!
    @IBOutlet weak var e: UIButton!
    @IBOutlet weak var exp: UIButton!
    @IBOutlet weak var pow: UIButton!
    @IBOutlet weak var log: UIButton!
    @IBOutlet weak var cursorback: UIButton!
    @IBOutlet weak var cursorforward: UIButton!
    @IBOutlet weak var point: UIButton!
    @IBOutlet weak var sin: UIButton!
    @IBOutlet weak var cos: UIButton!
    @IBOutlet weak var tan: UIButton!
    @IBOutlet weak var arc: UIButton!
    @IBOutlet weak var logten: UIButton!
    @IBOutlet weak var enter: UIButton!
    @IBOutlet weak var degradlabel: UIButton!

    
    
    override func viewDidLoad() {
        
        
        
        
        
        UITableViewCell.appearance().backgroundColor = UIColor.lightGray


        recover_int = 0
        
        
        //
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        bl = appDelegate.appbl
        
        //
        //back.addTarget(self, action: #selector(ViewController.backaction(_:)), for: UIControlEvents.touchUpInside)
        //numberview.cancel.addTarget(self, action: #selector(ViewController.recoveraction(_:)), for: UIControlEvents.touchUpInside)
        
        zero.addTarget(self, action: #selector(ViewController.num0(_:)), for: UIControlEvents.touchUpInside)
        
        zero.layer.borderWidth = 1
        zero.layer.borderColor = UIColor.black.cgColor
        
        one.addTarget(self, action: #selector(ViewController.num1(_:)), for: UIControlEvents.touchUpInside)
        
        one.layer.borderWidth = 1
        one.layer.borderColor = UIColor.black.cgColor
        
        two.addTarget(self, action: #selector(ViewController.num2(_:)), for: UIControlEvents.touchUpInside)
        
        two.layer.borderWidth = 1
        two.layer.borderColor = UIColor.black.cgColor
        
        three.addTarget(self, action: #selector(ViewController.num3(_:)), for: UIControlEvents.touchUpInside)
        
        three.layer.borderWidth = 1
        three.layer.borderColor = UIColor.black.cgColor
        
        four.addTarget(self, action: #selector(ViewController.num4(_:)), for: UIControlEvents.touchUpInside)
        
        four.layer.borderWidth = 1
        four.layer.borderColor = UIColor.black.cgColor
        
        five.addTarget(self, action: #selector(ViewController.num5(_:)), for: UIControlEvents.touchUpInside)
        
        five.layer.borderWidth = 1
        five.layer.borderColor = UIColor.black.cgColor
        
        six.addTarget(self, action: #selector(ViewController.num6(_:)), for: UIControlEvents.touchUpInside)
        
        six.layer.borderWidth = 1
        six.layer.borderColor = UIColor.black.cgColor
        
        seven.addTarget(self, action: #selector(ViewController.num7(_:)), for: UIControlEvents.touchUpInside)
        
        seven.layer.borderWidth = 1
        seven.layer.borderColor = UIColor.black.cgColor
        
        eight.addTarget(self, action: #selector(ViewController.num8(_:)), for: UIControlEvents.touchUpInside)
        
        eight.layer.borderWidth = 1
        eight.layer.borderColor = UIColor.black.cgColor
        
        nine.addTarget(self, action: #selector(ViewController.num9(_:)), for: UIControlEvents.touchUpInside)
        
        nine.layer.borderWidth = 1
        nine.layer.borderColor = UIColor.black.cgColor
        
        point.addTarget(self, action: #selector(ViewController.dot(_:)), for: UIControlEvents.touchUpInside)
        
        point.layer.borderWidth = 1
        point.layer.borderColor = UIColor.black.cgColor
        
        brace.addTarget(self, action: #selector(ViewController.brace(_:)), for: UIControlEvents.touchUpInside)
        
        brace.layer.borderWidth = 1
        brace.layer.borderColor = UIColor.black.cgColor
        
        brace_end.addTarget(self, action: #selector(ViewController.brace_end(_:)), for: UIControlEvents.touchUpInside)
        
        brace_end.layer.borderWidth = 1
        brace_end.layer.borderColor = UIColor.black.cgColor
        
        e.addTarget(self, action: #selector(ViewController.e(_:)), for: UIControlEvents.touchUpInside)
        
        e.layer.borderWidth = 1
        e.layer.borderColor = UIColor.black.cgColor
        
        exp.addTarget(self, action: #selector(ViewController.exp(_:)), for: UIControlEvents.touchUpInside)
        
        exp.layer.borderWidth = 1
        exp.layer.borderColor = UIColor.black.cgColor
        
        log.addTarget(self, action: #selector(ViewController.logaction(_:)), for: UIControlEvents.touchUpInside)
        
        log.layer.borderWidth = 1
        log.layer.borderColor = UIColor.black.cgColor
        
        sqrt.addTarget(self, action: #selector(ViewController.sqrtaction(_:)), for: UIControlEvents.touchUpInside)
        
        sqrt.layer.borderWidth = 1
        sqrt.layer.borderColor = UIColor.black.cgColor
        
        pow.addTarget(self, action: #selector(ViewController.powaction(_:)), for: UIControlEvents.touchUpInside)
        pow.layer.borderWidth = 1
        pow.layer.borderColor = UIColor.black.cgColor
        
        pi.addTarget(self, action: #selector(ViewController.pi(_:)), for: UIControlEvents.touchUpInside)
        
        pi.layer.borderWidth = 1
        pi.layer.borderColor = UIColor.black.cgColor
        
        del.addTarget(self, action: #selector(ViewController.deleteaction(_:)), for: UIControlEvents.touchUpInside)
        
        del.layer.borderWidth = 1
        del.layer.borderColor = UIColor.black.cgColor
        
        PLUS.addTarget(self, action: #selector(ViewController.add(_:)), for: UIControlEvents.touchUpInside)
        
        PLUS.layer.borderWidth = 1
        PLUS.layer.borderColor = UIColor.black.cgColor
        
        MINUS.addTarget(self, action: #selector(ViewController.substract(_:)), for: UIControlEvents.touchUpInside)
        
        MINUS.layer.borderWidth = 1
        MINUS.layer.borderColor = UIColor.black.cgColor
        
        MULTIPLY.addTarget(self, action: #selector(ViewController.multiply(_:)), for: UIControlEvents.touchUpInside)
        
        MULTIPLY.layer.borderWidth = 1
        MULTIPLY.layer.borderColor = UIColor.black.cgColor
        
        DIVIDE.addTarget(self, action: #selector(ViewController.divide(_:)), for: UIControlEvents.touchUpInside)
        
        DIVIDE.layer.borderWidth = 1
        DIVIDE.layer.borderColor = UIColor.black.cgColor
        
               
      
        
        logten.addTarget(self, action: #selector(ViewController.logtenaction(_:)), for: UIControlEvents.touchUpInside)
        
        logten.layer.borderWidth = 1
        logten.layer.borderColor = UIColor.black.cgColor
        
        sin.addTarget(self, action: #selector(ViewController.sinaction(_:)), for: UIControlEvents.touchUpInside)
        
        sin.layer.borderWidth = 1
        sin.layer.borderColor = UIColor.black.cgColor
        
        arc.addTarget(self, action: #selector(ViewController.arcaction(_:)), for: UIControlEvents.touchUpInside)
        
        arc.layer.borderWidth = 1
        arc.layer.borderColor = UIColor.black.cgColor
        
        cos.addTarget(self, action: #selector(ViewController.cosaction(_:)), for: UIControlEvents.touchUpInside)
        
        cos.layer.borderWidth = 1
        cos.layer.borderColor = UIColor.black.cgColor
        
        tan.addTarget(self, action: #selector(ViewController.tanaction(_:)), for: UIControlEvents.touchUpInside)

        tan.layer.borderWidth = 1
        tan.layer.borderColor = UIColor.black.cgColor
 
 
        
        enter.layer.borderWidth = 1
        enter.layer.borderColor = UIColor.black.cgColor
        
        
        self.mytv.delegate = self
        super.viewDidLoad()
        
        entry.removeAll()
        entry.append("")
        // Do any additional setup after loading the view, typically from a nib.
    
        bannerview.isHidden = true
        bannerview.delegate = self
        bannerview.adUnitID = "ca-app-pub-5284441033171047/4272718019"
        bannerview.adSize = kGADAdSizeSmartBannerPortrait
        bannerview.rootViewController = self
        bannerview.load(GADRequest())
 
        
        //interstitial = GADInterstitial(adUnitID: "ca-app-pub-5284441033171047/6362833613")
        //let request = GADRequest()
        //interstitial.load(request)
 
    }
    
   
   
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerview.isHidden = false
    }
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        bannerview.isHidden = true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

   



//*********************Action************************************************************

    @IBAction func enteraction(_ sender: Any) {
        
        var tempStr = "sin(PI/4)^2"//"3*(3^-1)"//"sin(PI/3+PI/6)"//"((sin3)^2+(cos3)^2)"//"1/((1-0)/(2-0))"//"((30+3)*23-3)/5-1"//30 3 + 23 3 - *  count the number of
        
        //tempStr = textbox.text
        tempStr = entry[entry.count-1]
            
        let question = tempStr
        
        //Feb 9
        var elements = [String]()
        var bracketsize_local = 0
        var startindex = -1
        
        var loopcounter = 10
        
        //PREPARATION
        tempStr = global.REPLACE_WITH_CONSTANT(source: tempStr)
        
        if tempStr.contains("(") {
            
        }else{
            loopcounter = 0
        }
        
        
        while loopcounter > 0  {
            
            
            tempStr = tempStr.replacingOccurrences(of: "(", with: " ( ")
            tempStr = tempStr.replacingOccurrences(of: ")", with: " ) ")//これで中は数字だけ
            
            elements = tempStr.characters.split{$0 == " "}.map(String.init)
            bracketsize_local = 0
            startindex = -1
            
            
            for i in 0..<elements.count {
                
                if elements[i] == "(" {
                    bracketsize_local += 1
                }
                
                
            }
            
            
            
            while bracketsize_local > 0 {
                
                startindex = global.BRACKET_INDEX(source: tempStr, bracketsize: bracketsize_local)
                
                print(startindex)
                
                elements[startindex] = global.CALCULATION_OPERATION(source: elements[startindex])
                
                
                //elements = elements.filter{$0 != "nil"}
                
                //print("start")
                //print(elements[startindex])
                
                bracketsize_local -= 1
            }
            
            
            if elements.count > 2 {//(9.5)->9.5
                
                
                for i in 2..<elements.count {
                    if elements[i] == ")" && elements[i-2] == "("{
                        elements[i] = "nil"
                        elements[i-2] = "nil"
                    }
                }
                
            }
            
            
            elements = elements.filter{$0 != "nil"}
            
            tempStr = elements.joined(separator: "")
            
            //ここでnext calculation (sin0.7853+1.75)、sin、sqrtを置換
            tempStr = global.SCIENTIFIC_OPERATION(source: tempStr)
            
            print(tempStr)//next calculation (sin0.7853+1.75)
            
            if Double(tempStr) != nil{
                loopcounter = 0
            }
            
            print(loopcounter)
            loopcounter -= 1
            
            
        }
        
        
        //()がない場合も考えないといけない。その場合は
        if Double(tempStr) == nil{
            
            tempStr = global.SCIENTIFIC_OPERATION(source: tempStr)
            tempStr = global.BASIC_OPERATION(source: tempStr)
            
            print("tempStr")
            print(tempStr)
            
        }
        else{
            //Ok that's it
        }

        
        
        
        if Double(tempStr) != nil{
            
            //http://swift-salaryman.com/round.php
            var calculated = Double(tempStr)! * 10000
            calculated = round(calculated) / 10000
            
            //print(calculated!)
            
            
            if (UserDefaults.standard.object(forKey: "A0") != nil) {
                
                
                
                array0 = UserDefaults.standard.object(forKey: "A0") as! Array
                array1 = UserDefaults.standard.object(forKey: "A1") as! Array
                array2 = UserDefaults.standard.object(forKey: "A2") as! Array
                
                
                
            }

            //
            array0.append(entry[entry.count-1])
            array1.append("\(calculated)")
            array2.append(" ")
            
            //
            let defaults0 = UserDefaults.standard
            defaults0.set(array0, forKey: "A0")
            defaults0.synchronize()
            
            let defaults1 = UserDefaults.standard
            defaults1.set(array1, forKey: "A1")
            defaults1.synchronize()
            
            let defaults2 = UserDefaults.standard
            defaults2.set(array2, forKey: "A2")
            defaults2.synchronize()

            
            entry[entry.count-1] = question + "=" + ("\(calculated)")//! unraps optional values
            
            entry.append("")
            
            
            
            

            
        }else{
            
            if tempStr.contains("=") || tempStr == ""{
                entry.append("")
            }
            
            
            
        }
        
        mytv.reloadData()
        
        let path = IndexPath.init(row: entry.count-1, section: 0)
        mytv.selectRow(at: path, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        
       
        
    }
    
      @IBAction func alldelete(_ sender: Any) {
        
        entry[entry.count-1] = ""
        
        let defaults4 = UserDefaults.standard
        defaults4.set(entry[entry.count-1], forKey: "Textbox")
        defaults4.synchronize()
        
        
        
    }
    @IBAction func insterstitialaction(_ sender: Any) {
        
        let string = "*PI/180"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        
        
        //textbox.insertText(string)
        mytv.reloadData()
        

              
    }
    
    func createAd() -> GADInterstitial {
        
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-5284441033171047/6362833613")
        interstitial.load(GADRequest())
        return interstitial
        
        
    }

    
    
    //**********************BUTTONS*************************************************//
    
    func backaction(_ sender:UIButton)
    {
        
        
        numberview.removeFromSuperview()
        
        
    }
    
    func backaction2(_ sender:UIButton)
    {
        
        
        //scienceview.removeFromSuperview()
        
        
    }
    
    
    
    func num0(_ sender:UIButton){
        
        let string = "0"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        
        
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    
    func num1(_ sender:UIButton){
        
        let string = "1"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num2(_ sender:UIButton){
        
        let string = "2"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num3(_ sender:UIButton){
        
        let string = "3"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num4(_ sender:UIButton){
        
        let string = "4"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num5(_ sender:UIButton){
        
        let string = "5"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num6(_ sender:UIButton){
        
        let string = "6"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num7(_ sender:UIButton){
        
        let string = "7"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num8(_ sender:UIButton){
        
        let string = "8"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func num9(_ sender:UIButton){
        
        let string = "9"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func dot(_ sender:UIButton){
        
        let string = "."
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    
    func add(_ sender:UIButton){
        
        let string = "+"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func substract(_ sender:UIButton){
        
        let string = "-"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func multiply(_ sender:UIButton){
        
        let string = "*"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func divide(_ sender:UIButton){
        
        let string = "/"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func brace(_ sender:UIButton){
        
        let string = "("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        
        mytv.reloadData()
        
        
        
    }
    func brace_end(_ sender:UIButton){
        
        let string = ")"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    func deleteaction(_ sender:UIButton){
        
        
        let string = entry[entry.count-1]
        
        if string.characters.count != 0{
        let index = string.index(string.startIndex, offsetBy: string.characters.count-1)
        
        entry[entry.count-1] = string.substring(to: index)
        
        mytv.reloadData()
        
            
        //textbox.deleteBackward()
        }
        
    }
    func pi(_ sender:UIButton){
        
        let string = "PI"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    func exp(_ sender:UIButton){
        
        let string = "exp("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    func e(_ sender:UIButton){
        
        let string = "E"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    func sqrtaction(_ sender:UIButton){
        
        let string = "sqrt("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    func powaction(_ sender:UIButton){
        
        let string = "^"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    func logaction(_ sender:UIButton){
        
        let string = "log("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }

    
    func logtenaction(_ sender:UIButton){
        
        let string = "logd("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }

    func sinaction(_ sender:UIButton){
        
        let string = "sin("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }

    
    func cosaction(_ sender:UIButton){
        
        let string = "cos("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }
    
    func arcaction(_ sender:UIButton){
        
        let string = "a"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }

    
    func tanaction(_ sender:UIButton){
        
        let string = "tan("
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
        
    }


   

    
    
    func optionaction(_ sender:UIButton)
    {
        let targetViewController = self.storyboard!.instantiateViewController( withIdentifier: "Optionview" )
        self.present( targetViewController, animated: true, completion: nil)
        

    
    }
    
   

    //***************************************************************************//
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = entry[indexPath.row]
        cell.textLabel?.textColor=UIColor.white
        cell.textLabel?.backgroundColor = UIColor.black
        //cell.backgroundColor=UIColor.white
        return cell
        
        
    }
    
    func tableView(_: UITableView, numberOfRowsInSection: Int)-> Int{
        
        
        return entry.count
        
    }
    
    
    //http://stackoverflow.com/questions/35894001/uitableview-deleting-row-swift-2
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        
        
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        entry.remove(at: indexPath.row)
        
        
        
        tableView.deleteRows(at: [indexPath], with: .fade)//delete
        if entry.count == 0{
            entry.append("")
            
        }
        mytv.reloadData()
        
    
        
    }

    
    //Hiding Keyboard
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            
            let defaults4 = UserDefaults.standard
            defaults4.set(entry[entry.count-1], forKey: "Textbox")
            defaults4.synchronize()
            
            textView.resignFirstResponder()
            return false
        }
        
        
        
        return true
    }
    
    
    func textViewDidChange(_ textView: UITextView) { //Handle the text changes here
        let defaults4 = UserDefaults.standard
        defaults4.set(entry[entry.count-1], forKey: "Textbox")
        defaults4.synchronize()
        //the textView parameter is the textView where text was changed
    }
    
    func viewDidAppear(animated: Bool){
        super.viewDidAppear(animated)
        let path = IndexPath.init(row: 1, section: 0)
        mytv.selectRow(at: path, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
    }
    @IBAction func setmemoryX(_ sender: Any) {
        
        var tempStr = "sin(PI/4)^2"//"3*(3^-1)"//"sin(PI/3+PI/6)"//"((sin3)^2+(cos3)^2)"//"1/((1-0)/(2-0))"//"((30+3)*23-3)/5-1"//30 3 + 23 3 - *  count the number of
        
        //tempStr = textbox.text
        tempStr = entry[entry.count-1]
        
        let question = tempStr
        
        //Feb 9
        var elements = [String]()
        var bracketsize_local = 0
        var startindex = -1
        
        var loopcounter = 10
        
        //PREPARATION
        tempStr = global.REPLACE_WITH_CONSTANT(source: tempStr)
        
        if tempStr.contains("(") {
            
        }else{
            loopcounter = 0
        }
        
        
        while loopcounter > 0  {
            
            
            tempStr = tempStr.replacingOccurrences(of: "(", with: " ( ")
            tempStr = tempStr.replacingOccurrences(of: ")", with: " ) ")//これで中は数字だけ
            
            elements = tempStr.characters.split{$0 == " "}.map(String.init)
            bracketsize_local = 0
            startindex = -1
            
            
            for i in 0..<elements.count {
                
                if elements[i] == "(" {
                    bracketsize_local += 1
                }
                
                
            }
            
            
            
            while bracketsize_local > 0 {
                
                startindex = global.BRACKET_INDEX(source: tempStr, bracketsize: bracketsize_local)
                
                print(startindex)
                
                elements[startindex] = global.CALCULATION_OPERATION(source: elements[startindex])
                
                
                //elements = elements.filter{$0 != "nil"}
                
                //print("start")
                //print(elements[startindex])
                
                bracketsize_local -= 1
            }
            
            
            if elements.count > 2 {//(9.5)->9.5
                
                
                for i in 2..<elements.count {
                    if elements[i] == ")" && elements[i-2] == "("{
                        elements[i] = "nil"
                        elements[i-2] = "nil"
                    }
                }
                
            }
            
            
            elements = elements.filter{$0 != "nil"}
            
            tempStr = elements.joined(separator: "")
            
            //ここでnext calculation (sin0.7853+1.75)、sin、sqrtを置換
            tempStr = global.SCIENTIFIC_OPERATION(source: tempStr)
            
            print(tempStr)//next calculation (sin0.7853+1.75)
            
            if Double(tempStr) != nil{
                loopcounter = 0
            }
            
            print(loopcounter)
            loopcounter -= 1
            
            
        }
        
        
        //()がない場合も考えないといけない。その場合は
        if Double(tempStr) == nil{
            
            tempStr = global.SCIENTIFIC_OPERATION(source: tempStr)
            tempStr = global.BASIC_OPERATION(source: tempStr)
            
            print("tempStr")
            print(tempStr)
            
        }
        else{
            //Ok that's it
        }
        
        
        
        
        if Double(tempStr) != nil{
            
            //http://swift-salaryman.com/round.php
            var calculated = Double(tempStr)! * 10000
            calculated = round(calculated) / 10000
            
            //print(calculated!)
            
            
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            if varibaletab == 0 {

            appDelegate.variable = calculated
            
            entry[entry.count-1] =  "Variable X is now " + ("\(calculated)")//! unraps optional values
            
            }else{
                
                appDelegate.variable2 = calculated
                
                entry[entry.count-1] =  "Variable Y is now " + ("\(calculated)")//! unraps optional values

            }
                
            entry.append("")

            
            
            mytv.reloadData()
            
            let path = IndexPath.init(row: entry.count-1, section: 0)
            mytv.selectRow(at: path, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
            
            
        }else{
            
        }

        
        
    }

    @IBAction func inputvariableX(_ sender: Any) {
        
        let string = "X"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()

    }
    @IBAction func inputvariableY(_ sender: Any) {
        
        let string = "Y"
        
        entry[entry.count-1] = entry[entry.count-1].appending(string)
        //textbox.insertText(string)
        mytv.reloadData()
        
        
    }
    
    @IBAction func VAR2(_ sender: Any) {
        
        varibaletab = 1
        
    }
    @IBAction func VAR1(_ sender: Any) {
        
        varibaletab = 0
    }
}

