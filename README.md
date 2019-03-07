# Simple-Swift-Alert

Just a simple extension for UIViewController to make creating alerts easier.

# How to use

* Add UIViewControllerAlert.swift to your project.
* In your view controller you can call `createBtn` or `showAlert` directly.


# Example

```
// You can Choose between .cancel or .default or .destructive 
let myBtn = createBtn(title: "Ok?", alertStyle: .default, completionHandler: { self.test() })
let myBtn2 = createBtn(title: "Cancel", alertStyle: .destructive, completionHandler: nil)
// You can choose between .actionSheet or .alert as an alert style. 
showAlert(title: "This is a test Title", message: "This is a test Message :) ", buttons: [myBtn, myBtn2], style: .actionSheet)
```

* You can use Clousers to do certain things when the User tabs on any button, and that's by passing the completionHandler parameters which could be nil or a function

```
func test() -> Void{
        print("Yup, the user Tapped me :)")
    }
```

![](alert.png)
![](actionSheet.png)
