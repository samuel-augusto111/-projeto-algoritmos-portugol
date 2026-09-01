programa
{
	funcao inicio()
	{
		cadeia nome[33]
		cadeia pos[33]
		inteiro ovr[33]
		logico usado[33]

		inteiro i, j, opcao

		// inicializa vetor
		para(i = 0; i < 33; i++)
		{
			usado[i] = falso
		}

		// =========================
		// JOGADORES (EXEMPLO)
		// =========================

		nome[0] = "Dudek"
		pos[0] = "GK"
		ovr[0] = 85

		nome[1] = "Finnan"
		pos[1] = "LD"
		ovr[1] = 76

		nome[2] = "Traore"
		pos[2] = "LE"
		ovr[2] = 81

		// (adicione os outros 30 depois)

		inteiro formacao1, formacao2

		escreva("PLAYER 1\n1 - 4-3-3\n2 - 4-2-3-1\n")
		leia(formacao1)

		escreva("\nPLAYER 2\n1 - 4-3-3\n2 - 4-2-3-1\n")
		leia(formacao2)

		cadeia pos1[11]
		cadeia pos2[11]

		// =========================
		// FORMAÇÃO 4-3-3
		// =========================

		se(formacao1 == 1)
		{
			pos1[0] = "GK"
			pos1[1] = "LD"
			pos1[2] = "LE"
			pos1[3] = "ZAG"
			pos1[4] = "ZAG"
			pos1[5] = "VOL"
			pos1[6] = "MC"
			pos1[7] = "MEI"
			pos1[8] = "PD"
			pos1[9] = "PE"
			pos1[10] = "ATA"
		}
		senao
		{
			pos1[0] = "GK"
			pos1[1] = "LD"
			pos1[2] = "LE"
			pos1[3] = "ZAG"
			pos1[4] = "ZAG"
			pos1[5] = "VOL"
			pos1[6] = "VOL"
			pos1[7] = "PD"
			pos1[8] = "PE"
			pos1[9] = "MEI"
			pos1[10] = "ATA"
		}

		// PLAYER 2
		se(formacao2 == 1)
		{
			pos2[0] = "GK"
			pos2[1] = "LD"
			pos2[2] = "LE"
			pos2[3] = "ZAG"
			pos2[4] = "ZAG"
			pos2[5] = "VOL"
			pos2[6] = "MC"
			pos2[7] = "MEI"
			pos2[8] = "PD"
			pos2[9] = "PE"
			pos2[10] = "ATA"
		}
		senao
		{
			pos2[0] = "GK"
			pos2[1] = "LD"
			pos2[2] = "LE"
			pos2[3] = "ZAG"
			pos2[4] = "ZAG"
			pos2[5] = "VOL"
			pos2[6] = "VOL"
			pos2[7] = "PD"
			pos2[8] = "PE"
			pos2[9] = "MEI"
			pos2[10] = "ATA"
		}

		inteiro time1[11]
		inteiro time2[11]

		// =========================
		// DRAFT PLAYER 1
		// =========================

		escreva("\n=== PLAYER 1 DRAFT ===\n")

		para(i = 0; i < 11; i++)
		{
			escreva("\nEscolha posição: ", pos1[i], "\n")

			para(j = 0; j < 33; j++)
			{
				se(usado[j] == falso)
				{
					se(pos[j] == pos1[i])
					{
						escreva(j, " - ", nome[j], "\n")
					}
				}
			}

			leia(opcao)

			time1[i] = opcao
			usado[opcao] = verdadeiro
		}

		// =========================
		// DRAFT PLAYER 2
		// =========================

		escreva("\n=== PLAYER 2 DRAFT ===\n")

		para(i = 0; i < 11; i++)
		{
			escreva("\nEscolha posição: ", pos2[i], "\n")

			para(j = 0; j < 33; j++)
			{
				se(usado[j] == falso)
				{
					se(pos[j] == pos2[i])
					{
						escreva(j, " - ", nome[j], "\n")
					}
				}
			}

			leia(opcao)

			time2[i] = opcao
			usado[opcao] = verdadeiro
		}

		// =========================
		// CALCULA OVR
		// =========================

		real soma1 = 0
		real soma2 = 0
		real media1, media2

		para(i = 0; i < 11; i++)
		{
			soma1 = soma1 + ovr[time1[i]]
			soma2 = soma2 + ovr[time2[i]]
		}

		media1 = soma1 / 11
		media2 = soma2 / 11

		escreva("\n====================\n")
		escreva("OVR TIME 1: ", media1, "\n")
		escreva("OVR TIME 2: ", media2, "\n")

		se(media1 > media2)
		{
			escreva("TIME 1 VENCEU!\n")
		}
		senao
		{
			se(media2 > media1)
			{
				escreva("TIME 2 VENCEU!\n")
			}
			senao
			{
				escreva("EMPATE!\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2007; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */