//
//  MyTableVC.swift
//  
//
//  Created by macadmin on 2016-03-12.
//
//

import UIKit

class MyTableVC: UITableViewController {

    //Var
    
    var globalIndex: Int = 0;
    var ContactArray1: [ContactInfo] = [];
    
    
    var DetailObj = ContactInfo();
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        ContactArray1 = DetailObj.generateMyContacts();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //2
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        globalIndex = (indexPath as NSIndexPath).row;
        self.performSegue(withIdentifier: "go2DetailsVC", sender: self)
        
    }
    

    //1
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return ContactArray1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go2DetailsVC"{
            let myUserDetails = segue.destination as! DetailsVC;
            myUserDetails.myUserID = globalIndex;
            myUserDetails.imgUserInfo = ContactArray1[globalIndex].profilePic; //Picture
            myUserDetails.myUserName = ContactArray1[globalIndex].firstName; //Name
            myUserDetails.myUserLastName = ContactArray1[globalIndex].lastName; //LasName
            myUserDetails.myCellPhone = ContactArray1[globalIndex].cellPhone; //CellPhone
            myUserDetails.myAddress = ContactArray1[globalIndex].address; //Address
            
            
            
        }
    }
    
    //3
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) 

        //*******************
        cell.imageView?.image = ContactArray1[(indexPath as NSIndexPath).row].profilePic;
        cell.textLabel?.text = ContactArray1[(indexPath as NSIndexPath).row].firstName + " " + ContactArray1[(indexPath as NSIndexPath).row].lastName;
        cell.detailTextLabel?.text = ContactArray1[(indexPath as NSIndexPath).row].cellPhone;
        
        //*******************

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
