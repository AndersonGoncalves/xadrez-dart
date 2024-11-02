// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';
import 'peca.dart';

part 'movimentos_peao.dart';

class Peao extends Peca with MovimentosDoPeao {
  late bool vulneravelEnpassant;

  Peao({
    super.nome = 'Peão',
    required super.cor,
    required super.tabuleiro,
  }) : vulneravelEnpassant = false;

  factory Peao.create({
    required Cor cor,
    required Tabuleiro tabuleiro,
    required Posicao posicao,
  }) {
    var peao = Peao(
      cor: cor,
      tabuleiro: tabuleiro,
    );
    peao.posicao = posicao;
    return peao;
  }

  @override
  void salvarMovimentosPossiveis() {
    super.salvarMovimentosPossiveis();
    salvarMovimentosPossiveisDoPeao(peao: this);
  }
}
