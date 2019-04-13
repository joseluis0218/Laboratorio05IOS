//
//  TareaSeleccionadaViewController.swift
//  ProyectoTareas
//
//  Created by Jose Luis Cristobal on 12/04/19.
//  Copyright © 2019 Jose Luis Cristobal. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {
    @IBOutlet weak var tareaLabel: UILabel!
    
    var tarea : Tarea? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if tarea!.importante{
            tareaLabel.text = "🙀\(String(describing: tarea!.nombre!))"
        }else{
            tareaLabel.text = tarea!.nombre!
        }
    }
    
    
    @IBAction func completarTarea(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(tarea!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
}
