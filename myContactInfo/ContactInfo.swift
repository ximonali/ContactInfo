//
//  ContactInfo.swift
//  
//
//  Created by macadmin on 2016-03-12.
//
//

import UIKit

class ContactInfo {

    var firstName: String; //EN VES DE STRING PUEDEN SER tipo: UILabel!
    var lastName: String;
    var address: String;
    var cellPhone: String;
    var profilePic: UIImage;
    var localArray = [ContactInfo]()

    
    init(){
        firstName = "";
        lastName = "";
        address = "";
        cellPhone = "";
        profilePic = UIImage();
    }
    
    init(pFirstName: String, pLastName: String, pAddress: String, pCellPhone: String,pProfilePic: UIImage){
        firstName = pFirstName;
        lastName = pLastName;
        address = pAddress;
        cellPhone = pCellPhone;
        profilePic = pProfilePic;
    
    }
    
  func generateMyContacts ()-> [ContactInfo]{
    
    let a = ContactInfo(pFirstName: "Simon", pLastName: "Gonzalez", pAddress: "28 Blakemanor Blv", pCellPhone: "416-8352266", pProfilePic: UIImage(named: "male")!)
    let b = ContactInfo(pFirstName: "Diana", pLastName: "Abreu", pAddress: "28 Blakemanor Blv", pCellPhone: "416-7896542", pProfilePic: UIImage(named: "female")!)
    let c = ContactInfo(pFirstName: "Julian", pLastName: "Ru", pAddress: "Address 3", pCellPhone: "416-1234578", pProfilePic: UIImage(named: "loginimage")!)
    let d = ContactInfo(pFirstName: "Diego", pLastName: "lala", pAddress: "Address 4", pCellPhone: "416-5978822", pProfilePic: UIImage(named: "male2")!)
    let e = ContactInfo(pFirstName: "Daniela", pLastName: "perez", pAddress: "Address 5", pCellPhone: "416-5556698", pProfilePic: UIImage(named: "female2")!)

    localArray.append(a);
    localArray.append(b);
    localArray.append(c);
    localArray.append(d);
    localArray.append(e);
    
        
    return localArray
    }
    
    

}
