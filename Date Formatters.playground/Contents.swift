import UIKit

let dateFormatter = DateFormatter()

print("short")
dateFormatter.dateStyle = .short
dateFormatter.timeStyle = .short
print(dateFormatter.string(from: Date()))

print("\nmedium")
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .medium
print(dateFormatter.string(from: Date()))

print("\nlong")
dateFormatter.dateStyle = .long
dateFormatter.timeStyle = .long
print(dateFormatter.string(from: Date()))

print("\nfull")
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .full
print(dateFormatter.string(from: Date()))

print("\nnone")
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .none
print(dateFormatter.string(from: Date()))

print(Date())
