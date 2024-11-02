import 'peca.dart';
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';
part 'movimentos_torre.dart';

class Torre extends Peca with MovimentosDaTorre {
  Torre({
    super.nome = 'Torre',
    required super.cor,
    required super.tabuleiro,
  });

  factory Torre.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var torre = Torre(
      cor: cor,
      tabuleiro: tabuleiro,
    );
    torre.posicao = posicao;
    return torre;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDaTorre(peca: this);
  }
}
