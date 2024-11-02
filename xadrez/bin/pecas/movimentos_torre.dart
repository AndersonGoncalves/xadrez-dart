part of 'torre.dart';

mixin MovimentosDaTorre {
  void _movimentosParaEsquerda(Peca torre) {
    var posicaoAux = Posicao(
      linha: torre.posicao!.linha,
      coluna: torre.posicao!.coluna - 1,
    );
    while (torre.tabuleiro.posicaoValida(posicaoAux) &&
        torre.podeMover(posicaoAux)) {
      torre.setMovimentoPossivel(posicaoAux);
      if (torre.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha,
        coluna: posicaoAux.coluna - 1,
      );
    }
  }

  void _movimentosParaDireita(Peca torre) {
    var posicaoAux = Posicao(
      linha: torre.posicao!.linha,
      coluna: torre.posicao!.coluna + 1,
    );
    while (torre.tabuleiro.posicaoValida(posicaoAux) &&
        torre.podeMover(posicaoAux)) {
      torre.setMovimentoPossivel(posicaoAux);
      if (torre.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha,
        coluna: posicaoAux.coluna + 1,
      );
    }
  }

  void _movimentosParaCima(Peca torre) {
    var posicaoAux = Posicao(
      linha: torre.posicao!.linha - 1,
      coluna: torre.posicao!.coluna,
    );
    while (torre.tabuleiro.posicaoValida(posicaoAux) &&
        torre.podeMover(posicaoAux)) {
      torre.setMovimentoPossivel(posicaoAux);
      if (torre.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha - 1,
        coluna: posicaoAux.coluna,
      );
    }
  }

  void _movimentosParaBaixo(Peca torre) {
    var posicaoAux = Posicao(
      linha: torre.posicao!.linha + 1,
      coluna: torre.posicao!.coluna,
    );
    while (torre.tabuleiro.posicaoValida(posicaoAux) &&
        torre.podeMover(posicaoAux)) {
      torre.setMovimentoPossivel(posicaoAux);
      if (torre.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha + 1,
        coluna: posicaoAux.coluna,
      );
    }
  }

  void salvarMovimentosPossiveisDaTorre({required Peca peca}) {
    _movimentosParaEsquerda(peca);
    _movimentosParaDireita(peca);
    _movimentosParaCima(peca);
    _movimentosParaBaixo(peca);
  }
}
