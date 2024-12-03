# WeSplit

Welcome to **WeSplit**! This is a simple and elegant SwiftUI app designed to help you split bills with ease. Whether you're dining out with friends or sharing expenses, WeSplit ensures fairness and transparency in dividing costs. 🍽️💵

## Features

- **Enter Bill Amount**: Input the total amount of your bill using a user-friendly text field.
- **Select Number of People**: Choose the number of people sharing the bill using a picker.
- **Tip Calculation**: Select a tip percentage to include in the total.
- **Grand Total**: View the total amount including tips.
- **Amount Per Person**: See how much each person needs to pay.
- **Localized Currency**: Displays amounts in your local currency format.

## Screenshots

![App Preview](https://via.placeholder.com/800x400?text=Add+Screenshots+Here)  
*Example of the WeSplit interface*

## How It Works

1. Enter the **bill amount** in the provided field.
2. Choose the **number of people** sharing the bill.
3. Pick the **tip percentage** you wish to include.
4. View the **grand total** and the **amount per person** instantly.

## Installation

To run this project locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/wesplit.git
   ```
2. Open the project in Xcode.
3. Build and run the app on a simulator or a physical device.

## Code Highlights

### Grand Total Calculation
```swift
var grandTotal: Double {
    let tipSelection = Double(tipPercentage)
    let tipValue = checkAmount / 100 * tipSelection
    let grandTotal = checkAmount + tipValue
    
    return grandTotal
}
```

### Total Per Person Calculation
```swift
var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    let amountPerPerson = grandTotal / peopleCount
    
    return amountPerPerson
}
```

## Requirements

- Xcode 15.0 or later
- iOS 17.0 or later

## Acknowledgments

This app is part of the [Hacking with Swift](https://www.hackingwithswift.com) learning series. Big thanks to the SwiftUI community for the incredible resources and support!

---

⭐ **Enjoy using WeSplit?** Feel free to star this repository and share your feedback! 🌟
