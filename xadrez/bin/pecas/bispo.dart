import 'peca.dart';
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';

part 'movimentos_bispo.dart';

class Bispo extends Peca with MovimentosDoBispo {
  Bispo({
    super.nome = 'Bispo',
    required super.cor,
    required super.tabuleiro,
  });

  factory Bispo.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var bispo = Bispo(
      cor: cor,
      tabuleiro: tabuleiro,
    );
    bispo.posicao = posicao;
    return bispo;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDoBispo(peca: this);
  }
}
