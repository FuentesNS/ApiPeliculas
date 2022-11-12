//
//  ViewController.swift
//  ApiPeliculasSFuentes
//
//  Created by MacBookMBA1 on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callAPI()
        getAll()

    }

    
    
    func callAPI(){
        guard let url = URL(string: "https://api.themoviedb.org/3/authentication/token/new?api_key=583dbd688a1811cd5bc8fad24a69b65f") else{
            return
        }


        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            if let data = data, let string = String(data: data, encoding: .utf8){
                print(string)
            }
        }

        task.resume()
    }
    
    
    
    func getAll() {
        
        let result = Result()
        
        let url = URL(string: "https://api.themoviedb.org/3/authentication/token/new?api_key=583dbd688a1811cd5bc8fad24a69b65f")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let _ = error {
                print("Error")
            }
            
            if let data = data,
               let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                
                    do{
                        let tasks = try JSONDecoder().decode(Token.self, from: data)
                        
                        print(tasks.request_token)
                        
                    }catch{
                        print(error)
                    }
                
//                DispatchQueue.main.async {
//                   // print(dataUser.requestToken)
//
//                }
            }
            
        }.resume()
    }
}

