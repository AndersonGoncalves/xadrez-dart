import '../cor.dart';
import '../posicao.dart';
import '../tabuleiro.dart';

abstract class Peca {
  final String nome;
  final Cor cor;
  final Tabuleiro tabuleiro;
  late Posicao? posicao;
  late List<List<bool>> movimentosPossiveis;
  late int _quantidadeMovimentos;

  Peca({
    required this.nome,
    required this.cor,
    required this.tabuleiro,
  })  : _quantidadeMovimentos = 0,
        movimentosPossiveis = List<List<bool>>.generate(
          tabuleiro.linhas,
          (index) => List<bool>.generate(
            tabuleiro.colunas,
            (index) => false,
          ),
        );

  int get quantidadeMovimentos => _quantidadeMovimentos;

  void incrementarQuantidadeMovimento() => _quantidadeMovimentos++;

  void decrementarQuantidadeMovimento() => _quantidadeMovimentos--;

  void setMovimentoPossivel(Posicao posicao) =>
      movimentosPossiveis[posicao.linha][posicao.coluna] = true;

  bool movimentoPossivel(Posicao posicao) =>
      movimentosPossiveis[posicao.linha][posicao.coluna];

  bool existeMovimentoPossivel() {
    for (List<bool> linhas in movimentosPossiveis) {
      for (bool coluna in linhas) {
        if (coluna) {
          return true;
        }
      }
    }
    return false;
  }

  bool podeMover(Posicao posicao) {
    var pecaDoTabuleiro = tabuleiro.pegarPeca(posicao);
    return pecaDoTabuleiro == null || pecaDoTabuleiro.cor != cor;
  }

  bool existeAdversario(Posicao posicao) {
    var pecaDoTabuleiro = tabuleiro.pegarPeca(posicao);
    return pecaDoTabuleiro != null && pecaDoTabuleiro.cor != cor;
  }

  void salvarMovimentosPossiveis() {
    movimentosPossiveis = List<List<bool>>.generate(
      tabuleiro.linhas,
      (index) => List<bool>.generate(
        tabuleiro.colunas,
        (index) => false,
      ),
    );
  }

  @override
  bool operator ==(covariant Peca other) {
    if (identical(this, other)) return true;
    return other.nome == nome &&
        other.cor == cor &&
        other.tabuleiro == tabuleiro &&
        other.posicao == posicao &&
        other.movimentosPossiveis == movimentosPossiveis &&
        other._quantidadeMovimentos == _quantidadeMovimentos;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cor.hashCode ^
        tabuleiro.hashCode ^
        posicao.hashCode ^
        movimentosPossiveis.hashCode ^
        _quantidadeMovimentos.hashCode;
  }
}
