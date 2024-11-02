part of 'bispo.dart';

mixin MovimentosDoBispo {
  void _movimentosParaEsquerdaAcima(Peca bispo) {
    var posicaoAux = Posicao(
      linha: bispo.posicao!.linha + 1,
      coluna: bispo.posicao!.coluna - 1,
    );
    while (bispo.tabuleiro.posicaoValida(posicaoAux) &&
        bispo.podeMover(posicaoAux)) {
      bispo.setMovimentoPossivel(posicaoAux);
      if (bispo.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha + 1,
        coluna: posicaoAux.coluna - 1,
      );
    }
  }

  void _movimentosParaDireitaAcima(Peca bispo) {
    var posicaoAux = Posicao(
      linha: bispo.posicao!.linha + 1,
      coluna: bispo.posicao!.coluna + 1,
    );
    while (bispo.tabuleiro.posicaoValida(posicaoAux) &&
        bispo.podeMover(posicaoAux)) {
      bispo.setMovimentoPossivel(posicaoAux);
      if (bispo.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha + 1,
        coluna: posicaoAux.coluna + 1,
      );
    }
  }

  void _movimentosParaEsquerdaAbaixo(Peca bispo) {
    var posicaoAux = Posicao(
      linha: bispo.posicao!.linha - 1,
      coluna: bispo.posicao!.coluna - 1,
    );
    while (bispo.tabuleiro.posicaoValida(posicaoAux) &&
        bispo.podeMover(posicaoAux)) {
      bispo.setMovimentoPossivel(posicaoAux);
      if (bispo.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha - 1,
        coluna: posicaoAux.coluna - 1,
      );
    }
  }

  void _movimentosParaDireitaAbaixo(Peca bispo) {
    var posicaoAux = Posicao(
      linha: bispo.posicao!.linha - 1,
      coluna: bispo.posicao!.coluna + 1,
    );
    while (bispo.tabuleiro.posicaoValida(posicaoAux) &&
        bispo.podeMover(posicaoAux)) {
      bispo.setMovimentoPossivel(posicaoAux);
      if (bispo.existeAdversario(posicaoAux)) break;
      posicaoAux = Posicao(
        linha: posicaoAux.linha - 1,
        coluna: posicaoAux.coluna + 1,
      );
    }
  }

  void salvarMovimentosPossiveisDoBispo({required Peca peca}) {
    _movimentosParaEsquerdaAcima(peca);
    _movimentosParaDireitaAcima(peca);
    _movimentosParaEsquerdaAbaixo(peca);
    _movimentosParaDireitaAbaixo(peca);
  }
}
