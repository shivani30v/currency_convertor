
# Currency Converter

A simple currency converter written in the D programming language. This tool allows you to convert an amount from one currency to another, specifically between USD and the supported currencies (EUR, GBP, JPY).

## Features

- Convert from USD to EUR, GBP, or JPY.
- Supports reverse conversions using USD as the intermediary.

## Usage

To use the currency converter, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/shivani30v/currency_convertor.git
   cd currency_convertor
   ```

2. Run the project:

   ```bash
   dub
   ```

3. Enter the amount and the base currency (e.g., `100 USD`), then enter the target currency (e.g., `JPY`). The application will output the equivalent amount in the target currency.

### Example

```bash
Enter amount and base currency (e.g., 100 USD): 100 USD
Enter target currency (e.g., EUR): JPY
100 USD is equivalent to 11000 JPY
```

## Project Structure

- **`source/app.d`**: The main source file containing the currency conversion logic.
- **`dub.json`**: The project configuration file.

## Requirements

- [D Programming Language](https://dlang.org/download.html)
- [DUB Package Manager](https://dub.pm/)

## License

This project is licensed under the MIT License.