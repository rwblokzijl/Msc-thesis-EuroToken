---
title: EuroToken
subtitle: A Stable Digital Euro Based on TrustChain
date: TODO
author:
  name: R. W. Blokzijl
  affiliation: Technische Universiteit Delft
  email: R.W.Blokzijl@student.tudelft.nl
  student_number: 4269519
defence_date: TODO
thesis_committee:
  - name: Dr.ir. J.A. Pouwelse,
    role: TU Delft, supervisor
  - name: Member 1
    role: TU Delft
  - name: Member 2
    role: TU Delft
duration:
  from: November 11, 2020
  to: TODO
keywords:
  - Stablecoin
  - Blockchain
  - Cryptocurrencies
  - TrustChain
  - CBDC
preface: |
  TODO: Add preface
---

# Introduction

Libra bad, CBDC better.

# Problem description

## Background

## What is a stablecoin / how to peg a currency

## Stablecoins in the wild

## Terms used

 - Token
 - Gateway
 - Wallet
 - CBDC - Central Bank Digital Currency

# Design

## System architecture

2 sides

## Token exchange

### Automating bank transactions

## TrustChain as an accounting platform for financial transactions

### Day to day money transfer in the 21 century

## System considerations

### Security

### Scalability

### Usability

### Audibility

# Implementation

The implementation of the stablecoin system consists of 2 code bases: the wallet
Android app, and the gateway REST API. A web front end for the rest API has also
been created.

## Gateway (Central Bank API)

The only way tokens are created is when a central bank creates them. In our
implementation this only happens when a user has transfered an equal amount of
euro into the central bank account.

The gateway is responsible for the exchange of euro for tokens and vice versa.
This involves taking payments in both tokens and euros, and payments in both
currencies.

### Bank integration

When a user wants to convert a euro to a stablecoin token, a transaction is
initiated with the gateway API.

### TrustChain

## Android Wallet

### Trustchain

# Field trial

# Discussion

## System dangers

### Under-collateralization

Causes:

- By central bank printing without collateral
- Licenced gateway banks going bust, taking collateral with them

Effects:

Future bank runs could leave some token holders without their collateral, this
makes token holders less confident in tokens. This would lower their value, but
the direct exchange peg maintains the price. This hides the problem while
undermining trust in the value of the tokens.

Solution:

- Don't print without collateral.
- Short term:
    * Keep collateral liquid at all times (also stops inflation)
* long term:
    + see system future

## System future

* euros are deleted by banks on euro2token exchange, and created on
token2euro exchange.
* Banks don't manange the collateral, only the CBDC exchange.
* Banks get a place in trust instead of investment.


# Conclusion

# Related Work

