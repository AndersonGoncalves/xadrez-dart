part of 'peao.dart';

mixin MovimentosDoPeao {
  bool _livre(Tabuleiro tabuleiro, Posicao posicao) {
    return tabuleiro.pegarPeca(posicao) == null;
  }

  void _enPassantBranca(Peca peao) {
    if (peao.posicao!.linha == 3) {
      var posicaoAux = Posicao(
        linha: peao.posicao!.linha,
        coluna: peao.posicao!.coluna - 1,
      );
      var pecaEnPassant = peao.tabuleiro.pegarPeca(posicaoAux);
      if (pecaEnPassant is Peao) {
        if (peao.tabuleiro.posicaoValida(posicaoAux) &&
            peao.existeAdversario(posicaoAux) &&
            pecaEnPassant.vulneravelEnpassant) {
          var posicaoAux2 = Posicao(
            linha: peao.posicao!.linha - 1,
            coluna: peao.posicao!.coluna,
          );
          peao.setMovimentoPossivel(posicaoAux2);
        }
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha,
        coluna: peao.posicao!.coluna + 1,
      );
      pecaEnPassant = peao.tabuleiro.pegarPeca(posicaoAux);
      if (pecaEnPassant is Peao) {
        if (peao.tabuleiro.posicaoValida(posicaoAux) &&
            peao.existeAdversario(posicaoAux) &&
            pecaEnPassant.vulneravelEnpassant) {
          var posicaoAux2 = Posicao(
            linha: peao.posicao!.linha - 1,
            coluna: peao.posicao!.coluna,
          );
          peao.setMovimentoPossivel(posicaoAux2);
        }
      }
    }
  }

  void _enPassantPreta(Peca peao) {
    if (peao.posicao!.linha == 4) {
      var posicaoAux = Posicao(
        linha: peao.posicao!.linha,
        coluna: peao.posicao!.coluna - 1,
      );
      var pecaEnPassant = peao.tabuleiro.pegarPeca(posicaoAux);
      if (pecaEnPassant is Peao) {
        if (peao.tabuleiro.posicaoValida(posicaoAux) &&
            peao.existeAdversario(posicaoAux) &&
            pecaEnPassant.vulneravelEnpassant) {
          var posicaoAux2 = Posicao(
            linha: peao.posicao!.linha + 1,
            coluna: peao.posicao!.coluna,
          );
          peao.setMovimentoPossivel(posicaoAux2);
        }
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha,
        coluna: peao.posicao!.coluna + 1,
      );
      pecaEnPassant = peao.tabuleiro.pegarPeca(posicaoAux);
      if (pecaEnPassant is Peao) {
        if (peao.tabuleiro.posicaoValida(posicaoAux) &&
            peao.existeAdversario(posicaoAux) &&
            pecaEnPassant.vulneravelEnpassant) {
          var posicaoAux2 = Posicao(
            linha: peao.posicao!.linha + 1,
            coluna: peao.posicao!.coluna,
          );
          peao.setMovimentoPossivel(posicaoAux2);
        }
      }
    }
  }

  void _corBranca(Peca peao) {
    if (peao.cor == Cor.branco) {
      var posicaoAux = Posicao(
        linha: peao.posicao!.linha - 1,
        coluna: peao.posicao!.coluna,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          _livre(peao.tabuleiro, posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha - 2,
        coluna: peao.posicao!.coluna,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          _livre(peao.tabuleiro, posicaoAux) &&
          (peao.quantidadeMovimentos == 0)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha - 1,
        coluna: peao.posicao!.coluna - 1,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          peao.existeAdversario(posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha - 1,
        coluna: peao.posicao!.coluna + 1,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          peao.existeAdversario(posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      _enPassantBranca(peao);
    }
  }

  void _corPreta(Peca peao) {
    if (peao.cor == Cor.preto) {
      var posicaoAux = Posicao(
        linha: peao.posicao!.linha + 1,
        coluna: peao.posicao!.coluna,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          _livre(peao.tabuleiro, posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha + 2,
        coluna: peao.posicao!.coluna,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          _livre(peao.tabuleiro, posicaoAux) &&
          (peao.quantidadeMovimentos == 0)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha + 1,
        coluna: peao.posicao!.coluna - 1,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          peao.existeAdversario(posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }

      posicaoAux = Posicao(
        linha: peao.posicao!.linha + 1,
        coluna: peao.posicao!.coluna + 1,
      );
      if (peao.tabuleiro.posicaoValida(posicaoAux) &&
          peao.existeAdversario(posicaoAux)) {
        peao.setMovimentoPossivel(posicaoAux);
      }
      _enPassantPreta(peao);
    }
  }

  void salvarMovimentosPossiveisDoPeao({required Peao peao}) {
    _corBranca(peao);
    _corPreta(peao);
  }
}
