import 'peca.dart';
import 'torre.dart';
import 'bispo.dart';
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';

class Rainha extends Peca with MovimentosDaTorre, MovimentosDoBispo {
  Rainha({
    super.nome = 'Rainha',
    required super.cor,
    required super.tabuleiro,
  });

  factory Rainha.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var rainha = Rainha(
      tabuleiro: tabuleiro,
      cor: cor,
    );
    rainha.posicao = posicao;
    return rainha;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDaTorre(peca: this);
    salvarMovimentosPossiveisDoBispo(peca: this);
  }
}
