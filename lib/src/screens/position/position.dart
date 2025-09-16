import 'package:flutter/material.dart';

class PositionPage extends StatelessWidget {
  const PositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioScreen();
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Report'),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 16),
            Icon(Icons.account_circle_outlined),
            SizedBox(width: 16),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Positions'),
              Tab(text: 'Watch Lists'),
              Tab(text: 'Markets'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PositionsTab(),
            Center(child: Text('Watch Lists')),
            Center(child: Text('Markets')),
          ],
        ),
      ),
    );
  }
}

class PositionsTab extends StatelessWidget {
  const PositionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const [
        AccountCard(
          title: 'ROTH IRA',
          balance: '\$59,554.50',
          bp: '\$3,411.49',
          holdings: [
            Holding(
              symbol: 'SPY',
              shares: '100 shares',
              value: '\$56,069.00',
              change: '+\$615.00',
              percentChange: '+1.10%',
            ),
          ],
        ),
        AccountCard(
          title: 'TRADITIONAL IRA',
          balance: '\$52,836.11',
          bp: '\$168.64',
          holdings: [
            Holding(
              symbol: 'COST',
              shares: '52.663 shares',
              value: '\$52,625.08',
              change: '+\$251.72',
              percentChange: '+0.48%',
            ),
          ],
        ),
        AccountCard(
          title: 'SELF EMPLOYED 401K',
          balance: '\$331,110.26',
          bp: '\$2,018.73',
          holdings: [
            Holding(
              symbol: 'AAPL',
              shares: '100 shares',
              value: '\$21,189.61',
              change: '-\$60.39',
              percentChange: '-0.29%',
            ),
            Holding(
              symbol: 'BRKB',
              shares: '100 shares',
              value: '\$53,022.09',
              change: '-\$302.91',
              percentChange: '-0.57%',
            ),
            Holding(
              symbol: 'JPM',
              shares: '---',
              value: '\$24,696.00',
              change: '---',
              percentChange: '---',
            ),
          ],
        ),
      ],
    );
  }
}

class AccountCard extends StatelessWidget {
  final String title;
  final String balance;
  final String bp;
  final List<Holding> holdings;

  const AccountCard({
    super.key,
    required this.title,
    required this.balance,
    required this.bp,
    required this.holdings,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardColor = theme.cardColor;
    final textTheme = theme.textTheme;

    return Card(
      color: cardColor,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            Text(balance, style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
            Text('BP $bp', style: const TextStyle(color: Colors.green)),
            const SizedBox(height: 8),
            ...holdings.map((h) => HoldingRow(holding: h)),
          ],
        ),
      ),
    );
  }
}

class Holding {
  final String symbol;
  final String shares;
  final String value;
  final String change;
  final String percentChange;

  const Holding({
    required this.symbol,
    required this.shares,
    required this.value,
    required this.change,
    required this.percentChange,
  });
}

class HoldingRow extends StatelessWidget {
  final Holding holding;

  const HoldingRow({super.key, required this.holding});

  @override
  Widget build(BuildContext context) {
    bool isPositive = holding.percentChange.startsWith('+');
    bool isNeutral = holding.percentChange == '---';

    Color changeColor = isNeutral
        ? Colors.grey
        : isPositive
        ? Colors.green
        : Colors.redAccent;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              holding.symbol[0],
              style: const TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(holding.symbol, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(holding.shares, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(holding.value),
              Text(
                holding.change,
                style: TextStyle(color: changeColor),
              ),
              Text(
                holding.percentChange,
                style: TextStyle(color: changeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
