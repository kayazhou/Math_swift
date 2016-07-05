//
//  ViewController.swift
//  comeonjunior
//
//  Created by kaisya on 6/4/16.
//  Copyright © 2016 com.kaya. All rights reserved.
//

import UIKit

var flagOfStyle1:Bool = true
var flagOfStyle2:Bool = false
var flagOfStyle3:Bool = false
var flagOfStyle4:Bool = false
var flagOfStyle5:Bool = false

var flagOfRange:Int = 0

var flagOfLevel:Bool = false

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rightButton = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.Play, target: self, action: #selector(ViewController.selectRightAction))
//        var rightButton = UIBarButtonItem.init(title: "Come On", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("selectRightAction"))
        let leftButton = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.Action, target: self, action: #selector(ViewController.selectLeftAction))
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.leftBarButtonItem = leftButton
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
//        NSLog("test--%d", flagOfStyle1)

    }
    
    func selectRightAction(){
        let examContent = self.storyboard?.instantiateViewControllerWithIdentifier("examContent") as! ExamContent
        self.navigationController?.pushViewController(examContent, animated: true)
    }
    func selectLeftAction(){
        let examContent = self.storyboard?.instantiateViewControllerWithIdentifier("examContent") as! ExamContent
        self.navigationController?.pushViewController(examContent, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    pragma mark 返回分组数
    func numberOfSectionsInTableView(tableView:UITableView) -> Int{
        return 4;
    }
    
//  pragma mark 返回每组头标题名称
    func tableView(tableView:UITableView, titleForHeaderInSection section:Int)-> String?{
        var sectionName:String
        switch section {
        case 0:
            sectionName = "Style"
        case 1:
            sectionName = "Range"
        case 2:
            sectionName = "Level"
        case 2:
            sectionName = "How to use?"
        default:
            sectionName = "Other"
        }
        return sectionName;
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        if cell.accessoryType == UITableViewCellAccessoryType.None {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }else{
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        if indexPath.section == 0 {
            let indexPath1 = NSIndexPath(forRow: 0, inSection: 0)
            let indexPath2 = NSIndexPath(forRow: 1, inSection: 0)
            let indexPath3 = NSIndexPath(forRow: 2, inSection: 0)
            let indexPath4 = NSIndexPath(forRow: 3, inSection: 0)
            let indexPath5 = NSIndexPath(forRow: 4, inSection: 0)
            if indexPath.row == 0 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath4)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath5)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfStyle1 = !flagOfStyle1
                flagOfStyle2 = false
                flagOfStyle3 = false
                flagOfStyle4 = false
                flagOfStyle5 = false
            }
            if indexPath.row == 1 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath4)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath5)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfStyle2 = !flagOfStyle2
                flagOfStyle1 = false
                flagOfStyle3 = false
                flagOfStyle4 = false
                flagOfStyle5 = false
            }
            if indexPath.row == 2 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath4)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath5)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfStyle3 = !flagOfStyle3
                flagOfStyle1 = false
                flagOfStyle2 = false
                flagOfStyle4 = false
                flagOfStyle5 = false
            }
            if indexPath.row == 3 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath4)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath5)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfStyle4 = !flagOfStyle4
                flagOfStyle1 = false
                flagOfStyle2 = false
                flagOfStyle3 = false
                flagOfStyle5 = false
            }
            if indexPath.row == 4 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath4)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath5)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                flagOfStyle5 = !flagOfStyle5
                flagOfStyle1 = false
                flagOfStyle2 = false
                flagOfStyle3 = false
                flagOfStyle4 = false
            }
        }
        
        if indexPath.section == 1 {
            let indexPath1 = NSIndexPath(forRow: 0, inSection: 1)
            let indexPath2 = NSIndexPath(forRow: 1, inSection: 1)
            let indexPath3 = NSIndexPath(forRow: 2, inSection: 1)
            if indexPath.row == 0 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfRange = 0
            }
            if indexPath.row == 1 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfRange = 1
            }
            if indexPath.row == 2 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath3)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                flagOfRange = 2
            }
        }
        
        if indexPath.section == 2 {
            let indexPath1 = NSIndexPath(forRow: 0, inSection: 2)
            let indexPath2 = NSIndexPath(forRow: 1, inSection: 2)
            if indexPath.row == 0 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.None
                flagOfLevel = false
            }
            if indexPath.row == 1 {
                tableView.cellForRowAtIndexPath(indexPath1)?.accessoryType = UITableViewCellAccessoryType.None
                tableView.cellForRowAtIndexPath(indexPath2)?.accessoryType = UITableViewCellAccessoryType.Checkmark
                flagOfLevel = true
            }
        }
        if indexPath.section == 3 {
            if indexPath.row == 0 {
                cell.accessoryType = UITableViewCellAccessoryType.None
                let examContent = self.storyboard?.instantiateViewControllerWithIdentifier("examContent") as! ExamContent
                self.navigationController?.pushViewController(examContent, animated: true)
            }
        }
        
//        NSLog("the cell you click is %d", indexPath.row)
//        NSLog("the section you click is %d", indexPath.section)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        var cell:UITableViewCell
        cell=tableView.dequeueReusableCellWithIdentifier("TableViewCellQuestion")!
        cell.accessoryType = UITableViewCellAccessoryType.None
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text="Addition"
                cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            case 1:
                cell.textLabel?.text="Subtraction"
            case 2:
                cell.textLabel?.text="Multiplication"
            case 3:
                cell.textLabel?.text="Division"
            case 4:
                cell.textLabel?.text="Complex"
            default:
                cell.textLabel?.text="Other"
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text="0-10"
                cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            case 1:
                cell.textLabel?.text="0-100"
            case 2:
                cell.textLabel?.text="0-1000"
            default:
                cell.textLabel?.text="Other"
            }
        case 2:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text="Easy"
                cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            case 1:
                cell.textLabel?.text="Difficult"
            default:
                cell.textLabel?.text="Other"
            }
        case 3:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text="Help"
            case 1:
                cell.textLabel?.text="Share"
            default:
                cell.textLabel?.text="Other"
            }
        default:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text="Other"
            default:
                cell.textLabel?.text="Other"
            }
        }

        
        return cell
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        var numOfLine = 0
        switch section {
        case 0:
            numOfLine = 5
        case 1:
            numOfLine = 3
        case 2:
            numOfLine = 2
        case 3:
            numOfLine = 1
        default:
            numOfLine = 1
        }
        return numOfLine
    }

//  pragma mark 设置分组标题内容高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 50;
        }else{
            return 40;
        }
    }

//    #pragma mark 设置每行高度（每行高度可以不一样）
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45;
    }

}

