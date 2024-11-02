import 'peca.dart';
import 'torre.dart';
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';

part 'movimentos_rei.dart';

class Rei extends Peca with MovimentosDoRei {
  late bool emXeque;
  Rei({
    super.nome = 'Rei',
    required super.cor,
    required super.tabuleiro,
  }) : emXeque = false;

  factory Rei.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var rei = Rei(
      cor: cor,
      tabuleiro: tabuleiro,
    );
    rei.posicao = posicao;
    return rei;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDoRei(rei: this);
  }
}
