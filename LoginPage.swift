//
//  LoginPage.swift
//  SelfCare
//
//  Created by Albana on 14/04/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {

    
    //connessione dalla viewController al codice
    @IBOutlet weak var userNameCasellaTesto: UITextField!
    @IBOutlet weak var passwordCasellaTesto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SigninButtonTapped(_ sender: Any) {
        
        //metto nelle variabili dichiarate il valore inserito nelle caselle di testo
        let username = userNameCasellaTesto.text;
        let password = passwordCasellaTesto.text;
        
        //controllare che le caselle di testo non siano vuote
        if ((username?.isEmpty)! || (password?.isEmpty)!)
        {
            //dispaly alert message
            displayMyAlertMessage(userMessage: "Tutti i campi devono essere inseriti!");
            return;
        }
        
        //memorizzazione dati (per il momento facciamo in locale)
        UserDefaults.standard.set(username, forKey: "userName");
        UserDefaults.standard.set(password, forKey: "Password");
        UserDefaults.standard.synchronize();
        
        
        // Save data to file
        let fileName = "login"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        print("FilePath: \(fileURL.path)")
        
        let writeString = username!
        do {
            // Write to the file
            try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch _ as NSError {
            
        }
        
        //display successful registration; non posso usare la funzione sotto creata per l'alert
        //perchè in questo caso devo passargli altri dati e deve poi far aprire la ViewController successiva
        let myAlert = UIAlertController(title:"Messaggio", message: "Registrazione andata a buon fine!", preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
            self.dismiss(animated:true, completion:nil);
        }
        
        myAlert.addAction(okAction);
        
        UserDefaults.standard.set(true,forKey:"isUserLoggedIn");
        UserDefaults.standard.synchronize();
        
        //let vc = self.storyboard?.instantiateViewControllerWithIdentifier("myVCId") as! MyVCName
        //self.presentViewController(vc, animated: true, completion: nil)
        //let vc = ViewController();
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "pagina") as UIViewController!
        self.present(vc!, animated:true, completion:nil);
        
        
        
    
    }

    
    
    //funzione per mostrare il messaggio di alert
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Attenzione", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
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
