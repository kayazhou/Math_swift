//
//  ExamContent.swift
//  comeonjunior
//
//  Created by kaisya on 6/27/16.
//  Copyright © 2016 com.kaya. All rights reserved.
//

import UIKit

class ExamContent: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var examContentTable: UITableView!
    
    var questionContent = [Int:String]()
    var answerContent = [Int:String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initData()
        self.examContentTable.scrollEnabled = false
        let rightButton = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: #selector(ViewController.selectRightAction))
        self.navigationItem.rightBarButtonItem = rightButton;
        self.automaticallyAdjustsScrollViewInsets = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func initData() {
        var var1:Int = 0
        var var2:Int = 0
        var var3:Int = 0
        var temp:Int = 0
        
        if flagOfStyle1 {
            for i in 1...15 {
                if flagOfRange == 0 { // if the range is 0-10
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(10))+1
                    var3 = Int(arc4random_uniform(10))+1
                }else if flagOfRange == 1{// if the range is 0-100
                    var1 = Int(arc4random_uniform(100))+1
                    var2 = Int(arc4random_uniform(100))+1
                    var3 = Int(arc4random_uniform(100))+1
                }else{// if the range is 0-1000
                    var1 = Int(arc4random_uniform(1000))+1
                    var2 = Int(arc4random_uniform(1000))+1
                    var3 = Int(arc4random_uniform(1000))+1
                }
                if !flagOfLevel {
                    questionContent[i] = String(var1)+"+"+String(var2)
                    answerContent[i] = String(var1+var2)
                }else{
                    questionContent[i] = String(var1)+"+"+String(var2)+"+"+String(var3)
                    answerContent[i] = String(var1+var2+var3)
                }
//                NSLog("the question is %@", String(var1)+"+"+String(var2))
            }
        }else if flagOfStyle2 {
            for i in 1...15 {
                if flagOfRange == 0 { // if the range is 0-10
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(10))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(10))+1
                }else if flagOfRange == 1{// if the range is 0-100
                    var1 = Int(arc4random_uniform(100))+1
                    var2 = Int(arc4random_uniform(100))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(100))+1
                }else{// if the range is 0-1000
                    var1 = Int(arc4random_uniform(1000))+1
                    var2 = Int(arc4random_uniform(1000))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(1000))+1
                }
                if !flagOfLevel {
                    questionContent[i] = String(var1)+"-"+String(var2)
                    answerContent[i] = String(var1-var2)
                }else{
                    questionContent[i] = String(var1)+"-"+String(var2)+"+"+String(var3)
                    answerContent[i] = String(var1-var2+var3)
                }
//                NSLog("the question is %@", String(var1)+"+"+String(var2))
            }
        }else if flagOfStyle3 {
            for i in 1...15 {
                if flagOfRange == 0 { // if the range is 0-10
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(10))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(10))+1
                }else if flagOfRange == 1{// if the range is 0-100
                    var1 = Int(arc4random_uniform(100))+1
                    var2 = Int(arc4random_uniform(100))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(100))+1
                }else{// if the range is 0-1000
                    var1 = Int(arc4random_uniform(1000))+1
                    var2 = Int(arc4random_uniform(1000))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(1000))+1
                }
                if !flagOfLevel {
                    questionContent[i] = String(var1)+"*"+String(var2)
                    answerContent[i] = String(var1*var2)
                }else{
                    questionContent[i] = String(var1)+"*"+String(var2)+"*"+String(var3)
                    answerContent[i] = String(var1*var2*var3)
                }
                //                NSLog("the question is %@", String(var1)+"+"+String(var2))
            }
        }else if flagOfStyle4 {
            for i in 1...15 {
                if flagOfRange == 0 { // if the range is 0-10
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(10))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(10))+1
                }else if flagOfRange == 1{// if the range is 0-100
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(100))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(100))+1
                }else{// if the range is 0-1000
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(1000))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(1000))+1
                }
                if !flagOfLevel {
                    questionContent[i] = String(var1*var2)+"/"+String(var1)
                    answerContent[i] = String(var1*var2/var1)
                }else{
                    questionContent[i] = String(var1*var2)+"/"+String(var1)+"*"+String(var3)
                    answerContent[i] = String(var1*var2/var1*var3)
                }
                //                NSLog("the question is %@", String(var1)+"+"+String(var2))
            }
        }else if flagOfStyle5 {
            for i in 1...15 {
                if flagOfRange == 0 { // if the range is 0-10
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(10))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(10))+1
                }else if flagOfRange == 1{// if the range is 0-100
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(100))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(100))+1
                }else{// if the range is 0-1000
                    var1 = Int(arc4random_uniform(10))+1
                    var2 = Int(arc4random_uniform(1000))+1
                    if var2 > var1 {
                        temp = var2
                        var2 = var1
                        var1 = temp
                    }
                    var3 = Int(arc4random_uniform(1000))+1
                }
                NSLog("var1 = %d  var2 = %d  var3 = %d ", var1,var2,var3)
                if !flagOfLevel {
                    switch Int(arc4random_uniform(4))+1 {
                    case 1:
                        questionContent[i] = String(var2)+"+"+String(var1)
                        answerContent[i] = String(var1+var2)
                    case 2:
                        questionContent[i] = String(var1)+"-"+String(var2)
                        answerContent[i] = String(var1-var2)
                    case 3:
                        questionContent[i] = String(var1*var2)+"/"+String(var1)
                        answerContent[i] = String(var1*var2/var1)
                    case 4:
                        questionContent[i] = String(var1)+"*"+String(var2)
                        answerContent[i] = String(var1*var2)
                    default:
                        questionContent[i] = String(var2)+"+"+String(var1)
                        answerContent[i] = String(var1+var2)
                    }
                }else{
                    switch Int(arc4random_uniform(6))+1 {
                    case 1:
                        questionContent[i] = "("+String(var1+var3)+"+"+String(var2)+")-"+String(var3)
                        answerContent[i] = String((var1+var2+var3)-var3)
                    case 2:
                        questionContent[i] = "("+String(var1)+"-"+String(var2)+")+"+String(var3)
                        answerContent[i] = String((var1-var2)+var3)
                    case 3:
                        questionContent[i] = "("+String(var1)+"+"+String(var2)+")*"+String(var3)
                        answerContent[i] = String((var1+var2)*var3)
                    case 4:
                        questionContent[i] = String(var1)+"+"+String(var2)+"*"+String(var3)
                        answerContent[i] = String(var1+var2*var3)
                    case 5:
                        questionContent[i] = "("+String(var1)+"-"+String(var2)+")*"+String(var3)
                        answerContent[i] = String((var1-var2)*var3)
                    case 6:
                        questionContent[i] = "("+String(var1*var3)+"+"+String(var2*var3)+")/"+String(var3)
                        answerContent[i] = String((var1*var3+var2*var3)/var3)
                    default:
                        questionContent[i] = String(var2)+"+"+String(var1)
                    }
                }
//                                NSLog("the question is %@", String(var1)+"+"+String(var2))
            }
        }
        for i in 1...15 {
            questionContent[i] = questionContent[i]! + " = "
        }
    }
    
    func selectRightAction(){
        for i in 1...15 {
            questionContent[i] = questionContent[i]! + answerContent[i]!
        }
        self.examContentTable .reloadData()
        self.navigationItem.rightBarButtonItem = nil
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("TableViewCellMenu", forIndexPath:indexPath)

        cell.textLabel?.text = ""
        cell.detailTextLabel?.text = questionContent[indexPath.row+1]
        cell.detailTextLabel?.textColor = UIColor.blackColor()
        cell.detailTextLabel?.textAlignment = NSTextAlignment.Left
        
        if indexPath.row % 2 == 1 {
            cell.backgroundColor = UIColorFromRGB(0xECECEC)
        }

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45;
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
