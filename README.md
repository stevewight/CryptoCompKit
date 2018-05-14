# CryptoCompKit
Unofficial client library for accessing *cryptocompare.com*'s market data

## Getting Started
[CryptoCompare.com](https://www.cryptocompare.com/)

### The Docs
Take a look at their [API docs](https://www.cryptocompare.com/api) for an overview and more information on the publicly available currency data.

Note: CryptoCompKit currently makes a limited subset of api endpoints available.  More to be added.

## Installation

## Usage
All market end points are accesed through the *CryptoCompKit* class:

```swift
let cryptoCompKit = CryptoCompKit()
```

Once you have a ``CryptoCompKit()`` object instance, you can call an end point:

```swift
cryptoCompKit.coinList { list, result in
  switch result {
  case .success(_):
    updateUI(coins:list.coins)
  case let .failure(error):
    handle(error:error)
  }
}

```


## Pre-Release Version

## License
*CryptoCompKit* is released under the **MIT** license
