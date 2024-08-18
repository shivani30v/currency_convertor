import std.stdio;
import std.conv;
import std.array;
import std.string;

struct CurrencyRates {
    double EUR;
    double GBP;
    double JPY;
}

CurrencyRates rates = CurrencyRates(0.85, 0.75, 110.0);

double convertFromUSD(double amount, string currency) {
    switch (currency.toUpper) {
        case "EUR":
            return amount * rates.EUR;
        case "GBP":
            return amount * rates.GBP;
        case "JPY":
            return amount * rates.JPY;
        default:
            writeln("Currency not supported.");
            return double.nan;
    }
}

double convertCurrency(double amount, string fromCurrency, string toCurrency) {
    double amountInUSD = 0.0;
    if (fromCurrency.toUpper == "USD") {
        amountInUSD = amount;
    } else {
        amountInUSD = amount / convertFromUSD(1.0, fromCurrency);
    }

    return convertFromUSD(amountInUSD, toCurrency);
}

void main() {
    writeln("Currency Converter");
    write("Enter amount and base currency (e.g., 100 USD): ");
    string input = readln().strip();
    string[] parts = input.split();

    if (parts.length < 2) {
        writeln("Invalid input format.");
        return;
    }

    double amount;
    string baseCurrency = parts[$-1];
    try {
        amount = to!double(parts[0]);
    } catch (Exception e) {
        writeln("Error reading amount: ", e.msg);
        return;
    }

    write("Enter target currency (e.g., EUR): ");
    string targetCurrency = readln().strip();

    double convertedAmount = convertCurrency(amount, baseCurrency, targetCurrency);
    writeln(amount, " ", baseCurrency, " is equivalent to ", convertedAmount, " ", targetCurrency);
}
