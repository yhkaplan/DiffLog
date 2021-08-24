import CustomDump

@propertyWrapper
public struct DiffLog<Value> {
    private var value: Value
    public var wrappedValue: Value {
        get { value }
        set {
            #if DEBUG
            print(diff(value, newValue) ?? "No changes")
            #endif
            value = newValue
        }
    }

    public init(wrappedValue: Value) {
        value = wrappedValue
    }
}
