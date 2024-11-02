part of 'cavalo.dart';

mixin MovimentosDoCavalo {
  void salvarMovimentosPossiveisDoCavalo({required Cavalo cavalo}) {
    var posicaoAux = Posicao(
      linha: cavalo.posicao!.linha - 1,
      coluna: cavalo.posicao!.coluna - 2,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha - 2,
      coluna: cavalo.posicao!.coluna - 1,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha - 2,
      coluna: cavalo.posicao!.coluna + 1,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha - 1,
      coluna: cavalo.posicao!.coluna + 2,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha + 1,
      coluna: cavalo.posicao!.coluna + 2,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha + 2,
      coluna: cavalo.posicao!.coluna + 1,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha + 2,
      coluna: cavalo.posicao!.coluna - 1,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }

    posicaoAux = Posicao(
      linha: cavalo.posicao!.linha + 1,
      coluna: cavalo.posicao!.coluna - 2,
    );
    if (cavalo.tabuleiro.posicaoValida(posicaoAux) &&
        cavalo.podeMover(posicaoAux)) {
      cavalo.setMovimentoPossivel(posicaoAux);
    }
  }
}
