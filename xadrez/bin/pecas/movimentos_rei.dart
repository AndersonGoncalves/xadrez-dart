part of 'rei.dart';

mixin MovimentosDoRei {
  void _movimentoParaCima(Rei rei) {
    var posicaoAux = Posicao(
      linha: rei.posicao!.linha - 1,
      coluna: rei.posicao!.coluna - 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: rei.posicao!.linha - 1,
      coluna: rei.posicao!.coluna,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: rei.posicao!.linha - 1,
      coluna: rei.posicao!.coluna + 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }
  }

  void _movimentoParaMesmaLinha(Rei rei) {
    var posicaoAux = Posicao(
      linha: rei.posicao!.linha,
      coluna: rei.posicao!.coluna - 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: rei.posicao!.linha,
      coluna: rei.posicao!.coluna + 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }
  }

  void _movimentoParaBaixo(Rei rei) {
    var posicaoAux = Posicao(
      linha: rei.posicao!.linha + 1,
      coluna: rei.posicao!.coluna - 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: rei.posicao!.linha + 1,
      coluna: rei.posicao!.coluna,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: rei.posicao!.linha + 1,
      coluna: rei.posicao!.coluna + 1,
    );
    if (rei.tabuleiro.posicaoValida(posicaoAux) && rei.podeMover(posicaoAux)) {
      rei.setMovimentoPossivel(posicaoAux);
    }
  }

  bool _isTorre(Rei rei, Posicao posicao) {
    var peca = rei.tabuleiro.pegarPeca(posicao);
    if (peca != null) {
      return (peca is Torre) &&
          (peca.cor == rei.cor) &&
          (peca.quantidadeMovimentos == 0);
    } else {
      return false;
    }
  }

  void _movimentoRoque(Rei rei) {
    if (rei.quantidadeMovimentos == 0 && !rei.emXeque) {
      var posicaoTorre1 = Posicao(
        linha: rei.posicao!.linha,
        coluna: rei.posicao!.coluna + 3,
      );
      if (_isTorre(rei, posicaoTorre1)) {
        var p1 = Posicao(
          linha: rei.posicao!.linha,
          coluna: rei.posicao!.coluna + 1,
        );
        var p2 = Posicao(
          linha: rei.posicao!.linha,
          coluna: rei.posicao!.coluna + 2,
        );
        if ((rei.tabuleiro.pegarPeca(p1) == null) &&
            (rei.tabuleiro.pegarPeca(p2) == null)) {
          rei.setMovimentoPossivel(p2);
        }
      }

      var posicaoTorre2 = Posicao(
        linha: rei.posicao!.linha,
        coluna: rei.posicao!.coluna - 4,
      );
      if (_isTorre(rei, posicaoTorre2)) {
        var p1 = Posicao(
          linha: rei.posicao!.linha,
          coluna: rei.posicao!.coluna - 1,
        );
        var p2 = Posicao(
          linha: rei.posicao!.linha,
          coluna: rei.posicao!.coluna - 2,
        );
        var p3 = Posicao(
          linha: rei.posicao!.linha,
          coluna: rei.posicao!.coluna - 3,
        );
        if ((rei.tabuleiro.pegarPeca(p1) == null) &&
            (rei.tabuleiro.pegarPeca(p2) == null) &&
            (rei.tabuleiro.pegarPeca(p3) == null)) {
          rei.setMovimentoPossivel(p2);
        }
      }
    }
  }

  void salvarMovimentosPossiveisDoRei({required Rei rei}) {
    _movimentoParaCima(rei);
    _movimentoParaMesmaLinha(rei);
    _movimentoParaBaixo(rei);
    _movimentoRoque(rei);
  }
}
