# Simple-Swift-Alert

Just a simple extension for UIViewController to make creating alerts easier.

# How to use

* Add UIViewControllerAlert.swift to your project.
* In your view controller you can call `createBtn` or `showAlert` directly.


# Example

```
let myBtn = createBtn("Ok?", .cancel)
let myBtn2 = createBtn("Cancel", .destructive)
showAlert("This is a test Title", "This is a test Message :) ", [myBtn, myBtn2])
```


![](extensionPhoto.png)
