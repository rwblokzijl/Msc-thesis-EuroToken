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

[@ipv8]

Libra bad, CBDC better.

# Problem description

## Background

digital currencies

- Money, its requirements and benefits
- problems with money and how digital money solves them
- Problems with digital money and how bitcoin solved them
- Problems with bitcoin and how trustchain solved them

- Leftover discreppencies between traditional and digital money -> segue to next
chapter

## Stablecoin primer

- What makes a digital currency unstable, real question: what makes a normal
currency stable
- What is a stablecoin
- how to peg a currency
- Other stablecoins in the wild
- Vision of the future of the eurozone

## Goals

- Imagining a new accounting layer

## Terms used

 - Token
 - Gateway
 - Wallet
 - CBDC - Central Bank Digital Currency

# Design

## Design requirements

## System architecture

## How does this solve the requirements

## Multiple perspectives

- Stablecoin or tokenised euro?
- tokenised euro or standardised, decentralised bank ledger accounting?

## Theoretical expansion of the concepts

- Multi bank design
- Identity integration
-

## TrustChain as an accounting platform for financial transactions

### Day to day money transfer in the 21 century

## System considerations

### Security

### Scalability

### Usability

### Audibility

# Implementation

The implementation of the stablecoin system consists of 2 main elements: the
wallet Android app, and the gateway REST API. A web front end for the rest API
has also been created.

The wallet demonstrates the ability of TrustChain to handle the transfer of the
EuroTokens peer to peer without a central entity.

The Gateway demonstrates how a bridge can be created between the traditional
euro system and a blockchain based analog.

## Gateway (Central Bank API)

The only way tokens are created is when a central bank creates them. In our
implementation this only happens when a user has transfered an equal amount of
euro into the central bank account.

The gateway is responsible for the exchange of euro for tokens and vice versa.
This involves taking payments in both tokens and euros, and payments in both
currencies. This means the gateway needs to interface with the bank to allow a
user to make payments in euro when creating EuroTokens, as well as a mechanism
for paying out euro to the user when they trade in EuroTokens. On the other side
of the gate the system needs to be able to create/send, and destroy/recieve
tokens on TrustChain.

The gateway aims to automate and link all of this interaction, so EuroTokens can
be bought and sold at any time by anyone.

### EuroToken Creation

When a user wants to convert a euro to a EuroToken, a creation event is
initiated with the gateway API. The user sends their TrustChain wallet address
and amount to convert with the request.

The API will then create a payment request with the associated bank for the
specified amount, and store the information in its database. The payment link is
returned to the user.

When the user has paid the request, a transaction for the EuroTokens will be
created using TrustChain. The gateway will create a proposal half-block which
will be sent to the user, who will create an accepting half-block registering
the transaction on both chains.

The user is now free to send the EuroTokens to anyone they like, requiring only
a TrustChain transaction.

### EuroToken Destruction

When a user wants to trade in a EuroToken for a euro the process happens in
reverse. For the demo the user does a request to the API with the desired
amount, their TrustChain address and an IBAN.

The system creates a TrustChain transaction for negative the amount. This
transaction is sent for the user to accept.

When the user has then signed the accepting half-block. The system will
pay out the amount to the specified IBAN.

### Frontend

To aid everyday users in the purchase and sale of EuroTokens a web frontend is
created where the user can interact with the API. It demonstrates the ease of
use of the system.

[Screenshots]

### Implementation considerations

The design specified a general architecture for the EuroToken system. However
in order to make an implementation possible within the constraints of the
project some implementation trade-offs have been made.

#### Bank support

The EuroToken is designed to work with any bank account for euro collateral.
However in this implementation we only implemented the API for ABN AMRO. Adding
other banks is a simple as implementing the `Bank` class.

#### Euro Payment Initiation

The design specifies a requirement of automatic euro payout on EuroToken
destruction. In order to automate this, most banks (including ABN) requires
registration and use of the PSD2 payment initiation API. This API requires a
Payment Initiation Service Provider (PISP) licence, which in turn requires a
banking licence. Since both of these licences require you to be a fully
functioning bank, the payment initiation part of the ABN API has not been
implemented and is done manually in the field trial.

#### TrustChain

Since the main implementation if the TrustChain software [@ipv8] is build on
python so is the gateway API. The server is provided as a single docker
container that also provides the frontend.

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

