# Flutter Mão Na Massa

> Projeto desenvolvido em Flutter com linguagem Dart.

## Introdução

O Projeto `Flutter_mao_massa` foi desenvolvido com intuito de mostrar a navegação entre telas, tanto como rotas nomeadas ou não nomeadas.

### Tela Inicial (HomePage)

![](</assets/home_page(fluttermaonamassa).png>)

### Page 1(rota não nomeada)

![](/assets/Page%201.gif)

### Page 1(POP)

> O método pop() remove a rota atual da pilha de rotas gerenciadas pelo navegador. Usamos esse método na chamada de onPressed() quando o usuário clicar no botão.

![](</assets/Page%201(pop).gif>)

### Page 2

![](/assets/Page%202.gif)

### Page 3

![](/assets/Page%203.gif)

### Page 4

> Quando o botao da page4 e acionado ele automaticamnete volta para a tela inical no caso HomePage atraves do Navigator.of(context).pushAndRemoveUntil(). Ele remove todos os outros pages e retorna ao inicio do app.

    Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page 1'),
                      builder: (context) => HomePage(),
                    ),
                    (route) => route.isFirst);
              },

![](/assets/Page4.gif)

### Rotas Nomeadas

> Rotas Nomeadas é usada para passar parametros de navegação entre paginas. No page1.dart podemos ver como s eusa uma rota nomeada.

ElevatedButton(

              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: Text('Page 2 via named'),
            ),

![](/assets/Rotas%20Nomeadas.gif)

#### Meta

Wesley Marques Saraiva - [Linkedlin](https://www.linkedin.com/in/wesley-marques-saraiva/)
Distribuido sobre a licença. Veja `LICENÇA` para mais informações.
