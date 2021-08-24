# ✅ DiffLog

Easy print-debugging

```swift
import DiffLog

class ViewController: UIViewController {
    @DiffLog private var didLoad = false

    func viewDidLoad() {
        super.viewDidLoad()

        didLoad = true
    }
}
//- false
//+ true
```

Compound data types like structs, enum, and classes also work.

```diff
  Person(
    name: nil,
-   email: nil,
+   email: "email@email.com",
    id: UUID(D6946807-70DA-421B-B448-95D0D94B246E)
  )
```
