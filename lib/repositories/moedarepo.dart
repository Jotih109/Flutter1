import 'package:primeiro/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/Bitcoin.svg.png',
      nome: 'Bitcoin',
      preco: 164300.00,
      sigla: 'BTC',
    ),

    Moeda(
      icone: 'images/1027.png',
      nome: 'Ethereum',
      preco: 14300.00,
      sigla: 'ETH',
    ),

    Moeda(
      icone: 'images/Binance Coin.png',
      nome: 'Binance Coin',
      preco: 4300.00,
      sigla: 'BNB',
    ),

    Moeda(
      icone: 'images/sasd.png',
      nome: 'Solana',
      preco: 64300.00,
      sigla: 'SOL',
    ),

    Moeda(
      icone: 'images/usdt.png',
      nome: 'Tether',
      preco: 300.00,
      sigla: 'USDT',
    ),
  ];
}
