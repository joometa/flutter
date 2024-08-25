import 'package:flutter/material.dart';
import 'package:toonflix2/basic-study/button.dart';
import 'package:toonflix2/basic-study/currency_card.dart';

void markup() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Selena',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: "Transfer",
                            textColor: Colors.black,
                            bgColor: Color(0xfff1b33b)),
                        Button(
                          text: 'Request',
                          textColor: Colors.white,
                          bgColor: Color(0xff1f2123),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: "EUR",
                      amount: '6 423',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      order: 1,
                    ),
                    const CurrencyCard(
                      name: 'Bitcoin',
                      code: "BTC",
                      amount: '9 341',
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      order: 2,
                    ),
                    const CurrencyCard(
                      name: 'Dollar',
                      code: "USD",
                      amount: '1 423',
                      icon: Icons.attach_money_rounded,
                      isInverted: false,
                      order: 3,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
