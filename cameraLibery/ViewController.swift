//Importando fotos da Bilioteca ou câmera

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @IBOutlet weak var minhaImagem: UIImageView!
    @IBAction func clicaBotao(sender: AnyObject) {
        
        let pegaImagem = UIImagePickerController()
        pegaImagem.delegate = self
        
        pegaImagem.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        pegaImagem.allowsEditing = true
        
         self.presentViewController(pegaImagem, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        }
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo:[NSObject]!) {
        self.dismissViewControllerAnimated(true, completion: nil)
        minhaImagem.image = image
    }


}

