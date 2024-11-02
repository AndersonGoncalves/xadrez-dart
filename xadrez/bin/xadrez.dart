import 'cor.dart';
import 'pecas/bispo.dart';
import 'pecas/cavalo.dart';
import 'pecas/peao.dart';
import 'pecas/rainha.dart';
import 'posicao.dart';
import 'pecas/rei.dart';
import 'tabuleiro.dart';
import 'pecas/torre.dart';

void main(List<String> arguments) {
  Tabuleiro tabuleiro = Tabuleiro(linhas: 8, colunas: 8);

  // var rei = Rei.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.preto,
  //   posicao: Posicao(linha: 2, coluna: 1),
  // );
  // tabuleiro.colocarPeca(rei, rei.posicao!);

  // var rei2 = Rei.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 3),
  // );
  // tabuleiro.colocarPeca(rei2, rei2.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[2][3]?.movimentosPossiveis.forEach(print);

  // var peca = Bispo.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 2, coluna: 3),
  // );
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[2][3]?.movimentosPossiveis.forEach(print);

  // var peca = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 2, coluna: 3),
  // );
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[2][3]?.movimentosPossiveis.forEach(print);

  // var peca = Rainha.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 2, coluna: 3),
  // );
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[2][3]?.movimentosPossiveis.forEach(print);

  // var torre = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 7),
  // );
  // tabuleiro.colocarPeca(torre, torre.posicao!);

  // var peca = Rei.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 4),
  // );
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[7][4]?.movimentosPossiveis.forEach(print);

  // var torre1 = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 7),
  // );
  // tabuleiro.colocarPeca(torre1, torre1.posicao!);

  // var torre2 = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 0),
  // );
  // tabuleiro.colocarPeca(torre2, torre2.posicao!);

  // var peca = Rei.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 7, coluna: 4),
  // );
  // // peca.incrementarQuantidadeMovimento();
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[7][4]?.movimentosPossiveis.forEach(print);

  // var torre1 = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 0, coluna: 7),
  // );
  // tabuleiro.colocarPeca(torre1, torre1.posicao!);

  // var torre2 = Torre.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 0, coluna: 0),
  // );
  // tabuleiro.colocarPeca(torre2, torre2.posicao!);

  // var peca = Rei.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 0, coluna: 4),
  // );
  // // peca.incrementarQuantidadeMovimento();
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[0][4]?.movimentosPossiveis.forEach(print);

  // var peca = Cavalo.create(
  //   tabuleiro: tabuleiro,
  //   cor: Cor.branco,
  //   posicao: Posicao(linha: 3, coluna: 4),
  // );
  // tabuleiro.colocarPeca(peca, peca.posicao!);

  // tabuleiro.pecas?.forEach(print);
  // print('---------------------------------------------------');
  // peca.salvarMovimentosPossiveis();
  // tabuleiro.pecas?[3][4]?.movimentosPossiveis.forEach(print);

  var peca = Peao.create(
    tabuleiro: tabuleiro,
    cor: Cor.branco,
    posicao: Posicao(linha: 6, coluna: 1),
  );
  tabuleiro.colocarPeca(peca, peca.posicao!);

  tabuleiro.pecas?.forEach(print);
  print('---------------------------------------------------');
  peca.salvarMovimentosPossiveis();
  tabuleiro.pecas?[6][1]?.movimentosPossiveis.forEach(print);
}
