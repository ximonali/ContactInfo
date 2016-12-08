//
//  DetailsVC.swift
//  
//
//  Created by macadmin on 2016-03-12.
//
//

import UIKit

class DetailsVC: UIViewController {
    
    //Var
    var myUserID: Int = 0;
    var myUserName: String = "";
    var myUserLastName: String = "";
    var myCellPhone: String = "";
    var myAddress: String = "";
    var imgUserInfo: UIImage!;
    
    
    // Labels
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblCellPhone: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    
    //Texts
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtCellPhone: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    
    
    //Button
    
    @IBAction func btnEdit(_ sender: UIButton) {
        btnDelete.isEnabled = false;
        editContact();
        
        
    }

    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var btnEdit2: UIButton!


    func editContact(){
        
        if btnEdit2.currentTitle == "Edit" {
            mostrarCampos();
            
            txtFirstName.text = myUserName;
            txtLastName.text = myUserLastName;
            txtCellPhone.text = myCellPhone;
            txtAddress.text = myAddress;
            
            lblFirstName.text = "First Name: ";
            lblLastName.text = "Last Name: ";
            lblCellPhone.text = "Cell Phone: ";
            lblAddress.text = "Address: ";
            
            btnDelete.isEnabled = false;
            btnEdit2.setTitle("Save", for: UIControlState())
        }else
        {
            ocultarCampos();
            
            myUserName = txtFirstName.text!;
            myUserLastName = txtLastName.text!;
            myCellPhone = txtCellPhone.text!;
            myAddress = txtAddress.text!;
            
            lblFirstName.text = "First Name: \(myUserName)";
            lblLastName.text = "Last Name: \(myUserLastName)";
            lblCellPhone.text = "Cell Phone: \(myCellPhone)";
            lblAddress.text = "Address: \(myAddress)";
            
            btnDelete.isEnabled = true;
            btnEdit2.setTitle("Edit", for: UIControlState())
        
        }

        
        

    }
    
    
    @IBAction func Delet2(_ sender: UIButton) {
    
    
    }
    
    
    func deleteContact(){
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblID.isHidden = true;
        lblID.text = String(myUserID);
        profilePicture.image = imgUserInfo;
        lblFirstName.text = "First Name: \(myUserName)";
        lblLastName.text = "Last Name: \(myUserLastName)";
        lblCellPhone.text = "Cell Phone: \(myCellPhone)";
        lblAddress.text = "Address: \(myAddress)";
        ocultarCampos();

        
    }
    
    func ocultarCampos(){
        txtFirstName.isHidden = true;
        txtLastName.isHidden = true;
        txtCellPhone.isHidden = true;
        txtAddress.isHidden = true;
    
    }
    
    func mostrarCampos(){
        txtFirstName.isHidden = false;
        txtLastName.isHidden = false;
        txtCellPhone.isHidden = false;
        txtAddress.isHidden = false;
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
