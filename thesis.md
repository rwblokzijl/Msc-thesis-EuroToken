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
publish_date: TODO
thesis_committee:
  - name: Dr.ir. J.A. Pouwelse
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

# State of the art

Digital currencies

## Money, its requirements and benefits

## problems with money and how digital money solves them

## Problems with digital money and how Bitcoin solved them

## Problems with Bitcoin and how TrustChain solved them

## Stablecoins

- Intro: Leftover discrepancies between traditional and digital money (stability)
- What is a stablecoin
- What makes a digital currency unstable, real question: what makes a normal
currency stable
- What is a peg
- Other stablecoins in the wild
- Vision of the future of the euro zone

## Terms used in this report

- Token
- Gateway
- Wallet
- CBDC - Central Bank Digital Currency

# Problem description

## Problem Description proper

|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| The eurozone is missing an option for a digital currency that mirrors all features of the euro, while providing the benefits of distributed accounting and programmable money. |

## Requirements for a re-imagined Euro system

### Requirements for money

In "On the Origin of Money" [@On_the_Origin_of_Money] Karl Menger describes how
people settle on a currency as a method of exchange. He describes that the
willingness of people to exchange their goods for a commodity depends upon:

1. The ability to trade the currency for goods and services
2. The scarcity of the commodity
3. The uniformity, divisibility, durability and practicality of the
   commodity.
4. The development of the market, and how others speculate.
5. The limitations imposed politically and socially upon exchange,
   consumption and transfer from one period of time to another

All these aspects must be managed in any successful currency. Points 1 and 4,
the future usefulness of the currency and it's market demand, are where digital
currencies still fall short of traditional currencies. Because of the price
volatility there is no way to know whether the coin you have today can still be
used to buy the same amount tomorrow.

Anything that aims to replace the euro needs to be as price stable as the euro.
Adding guarantees about the price, will make merchants more willing to accept
the currency, thus providing the ability to trade the currency for goods.

The EuroToken system needs to satisfy all 5 requirements in order to be a
viable currency. However, points 2 and 5 are dependent on the real world
implementation, legal guarantees and political backing. And are thus out of
scope for this project.

Point 3 is where crypto-currencies add their value, through their digital and
distributed natures.

### Requirements for digital assets

The usefulness and viability of a currency is still dependent on its functional
aspects. With traditional currencies the issues of uniformity, divisibility,
durability and practicality have long been solved. However in digital currencies
these aspects bring with them many sub-requirements. In "On the Origin of Money"
[@On_the_Origin_of_Money] Menger uses the concepts of spacial and "time" limits.

**Space limits** - The space limits of a currency is how costly a currency is to
store, transport, and manage across multiple 'market places'. Because of the
digital nature of crypto currencies, the price of storing any amount of money is
the price of storing some data. However, the transport and transfer
(practicality) of the currency is dependent on having access to the data and
equipment needed to do the transfer. For many digital currencies an internet
connection is also required to facilitate a transfer.


**Time limits** - For digital currencies the time limits of a currency brings
with it more complexity than physical money. While A users guarantee that their
money is durable and will not be lost becomes a problem of IT systems, backups
and cyber-security. As such any protocol and edge implementations need to be
secure / securable in order for the currency to be properly durable.

Finally there is one more requirement of money that needs to be maintained in
a digital system. That is the uniformity of money, also known as the fungibility
of money. This is the concept that any 2 individual units of the commodity are
essentially interchangeable. This is very important and

- Secure
- Scalabile
- Open
- Privacy aware

### Requirements for a future of money

Ultimate internal conflict

- P2P in nature
- Central handle

### Final thoughts on requirements

Internal conflict, no right answer, new area for humanity, much opportunity, but
much can go wrong.

# Design

## System architecture


- Central component
- Distributed component


## How does this solve the requirements

## Multiple perspectives

- Stablecoin or tokenised euro?
- tokenised euro or standardised, distributed bank ledger accounting?

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
of the gate the system needs to be able to create/send, and destroy/receive
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

In order to use the EuroToken system on a daily basis, users need a way to send
and receive the token. Because the added value of the system is its
distributed nature, a way to send and receive the asset in a convenient and
peer to peer way is needed. The TrustChain team has recently come out with an

Android super-app[TODO, cite] that showcases some of the IPv8 [@ipv8] and
TrustChain[TODO CITE] capabilities. This app provides the perfect platform to
showcase the EuroToken capabilities.

### PeerChat Extension

The super-app already includes a number of applications, including PeerChat. A
chat application that uses IPv8s peer to peer capabilities to communicate. In
order to show that the EuroToken can be used in a modern context, the PeerChat
app has been expanded to include the capacity to send money attached to a
message.

To send money, the user simply selects the option to send money, and is taken to
a screen where a transaction can be created. The message is then sent to the
receiver who within a few moments sees the transaction appear as a message in
their shared chat. The transaction amount is also added to their balance.

[send_money]: ../images/peerchat_send_money2.jpg
![Attach money in PeerChat \label{send_money_label}][send_money]

The capacity to send transactions as shown in Figure \ref{send_money_label} is not tied to PeerChat messaging. When money
is sent, a transaction is created and transferred to the receiver using the
TrustChain main community. The transaction hash is then sent as part of the
PeerChat message. The receiver then fetches the transaction it received earlier
via TrustChain.

- [TODO diagram of TrustChain and PeerChat interaction]

This implementation demonstrates the simple way in which EuroToken allows
monetary transactions to be seamlessly and programmatically inserted into any
application.

### EuroToken app

The PeerChat app is one specific use case. In reality different applications
would simultaneously use the EuroToken system. This would leave the user with a
splintered record of their financial life.

In order to solve this, a EuroToken accounting app has been added to the
super-app. The purpose of this is to show that the systems data can be
reorganized in whatever way. The EuroToken app shows a history of all
transactions, and provides another interface to the gateway.

[transaction_history]: ../images/eurotoken_transaction_history.jpg
![EuroToken Transaction History \label{transaction_history_label}][transaction_history]


### EuroToken transactions in depth

- Validation (TODO)
    * Creation/destruction:
        + Trust Central Bank only
    * Transactions (prevent double spend)
        + Trusted users (based on identity later)
        + Validated by bank
        + Bami double-spend protection

### EuroToken Settings

In addition to providing convenient services to the user, the EuroToken app has
some configuration options to give the user control over their role in the
EuroToken network.

**Trusted Minters** - Since the network has a central component that regulates
the creation and destruction of the tokens, a demo requires a running server.
Since there is no party to maintain such a server indefinitely right now, an
option is added to allow the user to specify public keys of trusted "central
banks". If this option is enabled, the wallet in the super-app does only accepts
blocks signed by the configured public keys.

- [TODO: image of minter config]

**Trusted validators** - Validation of transactions and prevention of double
spending is unsolved in TrustChain but is an important part of any currency.
Solving this problem in general is being worked on [TODO CITE bami] and is out
of scope for this project. However the issue of transaction finality being
important to a EuroToken system, a way to prevent double spending has been
added. A transaction is not considered final until a trusted entity has signed a
block in the senders chain that comes after the send block. This means that the
trusted entity is responsible for the validation of the block and its
dependencies. These validators can be configured in the app in order to make de
demo repeatable.

- [TODO: image of validator config]

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

