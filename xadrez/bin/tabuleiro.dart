import 'pecas/peca.dart';
import 'posicao.dart';

class Tabuleiro {
  final int linhas;
  final int colunas;
  late List<List<Peca?>>? pecas;

  Tabuleiro({
    required this.linhas,
    required this.colunas,
  }) : pecas = List<List<Peca?>>.generate(
          linhas,
          (index) => List<Peca?>.generate(
            colunas,
            (index) => null,
          ),
        );

  bool posicaoValida(Posicao posicao) {
    return posicao.linha >= 0 &&
        posicao.linha < linhas &&
        posicao.coluna >= 0 &&
        posicao.coluna < colunas;
  }

  bool existePeca(Posicao posicao) {
    if (posicaoValida(posicao)) {
      return (pegarPeca(posicao) != null);
    } else {
      return false;
    }
  }

  Peca? pegarPeca(Posicao posicao) {
    return pecas?[posicao.linha][posicao.coluna];
  }

  void colocarPeca(Peca peca, Posicao posicao) {
    if (!existePeca(posicao)) {
      pecas?[posicao.linha][posicao.coluna] = peca;
      pecas?[posicao.linha][posicao.coluna]?.posicao = posicao;
    }
  }

  Peca? retirarPeca(Posicao posicao) {
    var peca = pegarPeca(posicao);
    if (peca != null) {
      peca.posicao = null;
      pecas![posicao.linha][posicao.coluna] = null;
    }
    return peca;
  }

  @override
  bool operator ==(covariant Tabuleiro other) {
    if (identical(this, other)) return true;

    return other.linhas == linhas &&
        other.colunas == colunas &&
        other.pecas == pecas;
  }

  @override
  int get hashCode => linhas.hashCode ^ colunas.hashCode ^ pecas.hashCode;
}
