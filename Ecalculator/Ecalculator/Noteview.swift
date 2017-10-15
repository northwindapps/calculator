//
//  Noteview.swift
//  Ecalculator
//
//  Created by 矢野悠人 on 2017/02/17.
//  Copyright © 2017年 yumiya. All rights reserved.
//http://stackoverflow.com/questions/35439041/how-to-send-values-to-a-parent-view-controller-in-swift

import UIKit

class Noteview: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var entrycopy: UISegmentedControl!
    
    @IBOutlet weak var tableview: UITableView!
    var recover_int : Int!
    
    var bl : Bool!
    
    
    @IBAction func recoveraction(_ sender: Any) {
        
        
        switch recover_int {
        case 0:
            if (recover0.isEmpty)
            {
                
                
            }
            else
            {
                array0 = recover0
                array1 = recover1
                array2 = recover2
                
                
                save()
                
                recover_int = 1
                
            }
            break
        case 1:
            if (recover00.isEmpty)
            {
                
                
            }
            else
            {
                array0 = recover00
                array1 = recover01
                array2 = recover02
                
                save()
                
                recover_int = 2
                
            }
            break
            
        case 2:
            if (recover000.isEmpty)
            {
                
                
            }
            else
            {
                array0 = recover000
                array1 = recover001
                array2 = recover002
                
                
                save()
                
                recover_int = 3
                
                
            }
            break
            
            
            
        default:
            break
        }
        
        tableview.reloadData()
    }
    
    
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
    
    
    
    var textfrommain = ""

    override func viewDidLoad() {
        
        //
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        bl = appDelegate.appbl

        
        recover_int = 0

        
        
        
        if (UserDefaults.standard.object(forKey: "A0") != nil) {
            
            
            
            array0 = UserDefaults.standard.object(forKey: "A0") as! Array
            array1 = UserDefaults.standard.object(forKey: "A1") as! Array
            array2 = UserDefaults.standard.object(forKey: "A2") as! Array
            
            
            
        }
        else
        {
            //IF NODATA MAKE A NEW FILE
            arrayinit()
        }
        
        if(array0.isEmpty)
        {
            //IF NODATA MAKE A NEW FILE
            arrayinit()
        }
        
        
        let label = UITapGestureRecognizer(target: self, action: #selector(Noteview.tappedcell(_:)))
        tableview.addGestureRecognizer(label)

        
        
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        washing()
        
        return array0.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        // Configure the cell...
        
        cell.label0.text = array0[indexPath.row]
        cell.label1.text = array1[indexPath.row]
        cell.label2.text = array2[indexPath.row]
        
        
        cell.label0.isUserInteractionEnabled = true
        cell.label1.isUserInteractionEnabled = true
        cell.label2.isUserInteractionEnabled = true
        
        
        cell.label0.numberOfLines = 2
        cell.label0.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.label0.layer.borderWidth = 0.5
        cell.label0.layer.borderColor = UIColor.lightGray.cgColor
        
        cell.label1.numberOfLines = 2
        cell.label1.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.label1.layer.borderWidth = 0.5
        cell.label1.layer.borderColor = UIColor.lightGray.cgColor
        
        cell.label2.numberOfLines = 2
        cell.label2.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.label2.layer.borderWidth = 0.5
        cell.label2.layer.borderColor = UIColor.lightGray.cgColor
        
        
        
        //
        cell.label0.backgroundColor = UIColor.white;
        cell.label1.backgroundColor = UIColor.white;
        cell.label2.backgroundColor = UIColor.white;
        
        cell.label0.textColor = UIColor.black;
        cell.label1.textColor = UIColor.black;
        cell.label2.textColor = UIColor.black;
        
        
        
        
        
        return cell
    }
    
    func tappedcell(_ sender : UITapGestureRecognizer ){
        
        
        //
        textfrommain = UserDefaults.standard.object(forKey: "Textbox") as! String
        print(textfrommain)
        
        //
        let selectorInt = entrycopy.selectedSegmentIndex
        print(selectorInt)
        //
        recover_int = 0
        
        
        //recover point
        
        recover000 = recover00
        recover001 = recover01
        recover002 = recover02
        
        
        
        recover00 = recover0
        recover01 = recover1
        recover02 = recover2
        
        
        recover0 = array0
        recover1 = array1
        recover2 = array2
        
        
        
        
        let tableview = sender.view as! UITableView
        let p = sender.location(in: sender.view)
        let indexPath = tableview .indexPathForRow(at: p)
        
        if indexPath != nil{
        
        tableview .deselectRow(at: indexPath!, animated: false)
        
        let cell = tableview.cellForRow(at: indexPath!) as! TableViewCell
        let pointInCell = sender.location(in: cell) as CGPoint
        
        
        //http://qiita.com/kaorumori/items/d770eb35f162b6fd012e
        var  replaced = textfrommain.replacingOccurrences(of: "，", with: ",")
        
        replaced = replaced.replacingOccurrences(of: "、", with: ",")
        
        
        
        
        
        
        
        if (cell.label0.frame.contains(pointInCell))
        { // user tapped image
            
            
            
            NSLog("A2")
            
            
            let element  = textfrommain
            
            switch selectorInt {
            case 0:
                
                array0[indexPath!.row] = element
                
                save()
                
                tableview.reloadData()
                
                
                break
            case 1:
                let tempstr = textfrommain + array0[indexPath!.row]
                
                
                
                textfrommain = tempstr
                
                
                cell.label0.backgroundColor = UIColor.yellow;
                //cell.label0.textColor = UIColor.whiteColor();
                
                //http://stackoverflow.com/questions/24670290/how-to-copy-text-to-clipboard-pasteboard-with-swift
                UIPasteboard.general.string = array0[indexPath!.row]//textfrommain
                
                break
                
            default:
                break
            }
        }
        else if (cell.label1.frame.contains(pointInCell))
        { // user tapped image
            
            
            
            NSLog("B2")
            
            
            
            let element  = textfrommain
            
            switch selectorInt {
            case 0:
                
                array1[indexPath!.row] = element
                
                save()
                
                tableview.reloadData()
                
                
                break
            case 1:
                let tempstr = textfrommain + array1[indexPath!.row]
                
                
                
                textfrommain = tempstr
                
                
                cell.label1.backgroundColor = UIColor.magenta;
                //cell.label0.textColor = UIColor.whiteColor();
                UIPasteboard.general.string = array1[indexPath!.row]//textfrommain
                
                break
                
            default:
                break
            }
            
        }
        else if (cell.label2.frame.contains(pointInCell))
        { // user tapped image
            
            
            
            NSLog("C2")
            
            
            
            let element  = textfrommain
            
            switch selectorInt {
            case 0:
                
                array2[indexPath!.row] = element
                
                save()
                
                tableview.reloadData()
                
                
                break
            case 1:
                let tempstr = textfrommain + array2[indexPath!.row]
                
                
                
                textfrommain = tempstr
                
                
                cell.label2.backgroundColor = UIColor.cyan;
                //cell.label0.textColor = UIColor.whiteColor();
                UIPasteboard.general.string = array2[indexPath!.row]//textfrommain
                
                break
                
            default:
                break
            }
        }
            
        }
        
    }
    
    
    //http://stackoverflow.com/questions/35894001/uitableview-deleting-row-swift-2
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        
        
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if bl == true {
            
            array0.insert("", at : indexPath.row)
            array1.insert("", at : indexPath.row)
            array2.insert("", at : indexPath.row)
            
            
            tableView.insertRows(at: [indexPath], with: .fade)//delete
            
        }
        else
        {
            
            
            array0.remove(at: indexPath.row)
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            
            
            
            
            
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)//delete
            
        }
        
        
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
        
        
        
        
    }
    

    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        
        var title = "Remove"
        
        if(bl == true)
        {
            title = "Insert"
        }
        else
        {
            
        }
        return title
        
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func arrayinit (){
        
        
        array0.removeAll()
        array1.removeAll()
        array2.removeAll()
        
        
        array0.append(" ")
        
        
        array1.append(" ")
        
        array2.append(" ")
       
        
        
        
        
        
    }
    
    func save(){
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
        
        
    }
    
    
    func washing(){
        
        
        var temp_int :Int = 0
        
        var cake = [String]()
        
        if(array0.count > temp_int)
        {
            temp_int = array0.count
            
            cake = array0
        }
        
        if(array1.count > temp_int)
        {
            temp_int = array1.count
            
            cake = array1
        }
        
        if(array2.count > temp_int)
        {
            temp_int = array2.count
            
            cake = array2
        }
        
        
        //washing cake
        
        for i in 0..<cake.count {
            
            cake[i] = " "
        }
        
        for i in 0..<array0.count {
            
            cake[i] = array0[i]
        }
        
        array0 = cake
        
        //washing cake
        
        for i in 0..<cake.count {
            
            cake[i] = " "
        }
        
        for i in 0..<array1.count {
            
            cake[i] = array1[i]
        }
        
        array1 = cake
        
        
        //washing cake
        
        for i in 0..<cake.count {
            
            cake[i] = " "
        }
        
        for i in 0..<array2.count {
            
            cake[i] = array2[i]
        }
        
        array2 = cake
        
        
        
        
    }

    @IBAction func close(_ sender: Any) {
    }



}
