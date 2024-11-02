import 'peca.dart';
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';

part 'movimentos_cavalo.dart';

class Cavalo extends Peca with MovimentosDoCavalo {
  Cavalo({
    super.nome = 'Cavalo',
    required super.cor,
    required super.tabuleiro,
  });

  factory Cavalo.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var cavalo = Cavalo(
      cor: cor,
      tabuleiro: tabuleiro,
    );
    cavalo.posicao = posicao;
    return cavalo;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDoCavalo(cavalo: this);
  }
}
