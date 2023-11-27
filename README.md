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

> Rotas Nomeadas é usada para passar parametros de navegação entre paginas. No page1.dart podemos ver como se usa uma rota nomeada atraves do pushNamed que é o metodo responsavel por passar o parametro da routa.

> ElevatedButton(

              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: Text('Page 2 via named'),
            ),

> E tambem pode se usar uma tipo de variavel para facilitar e evitar codicos duplicados como no caso no routeName que tem como resultado '/page2.dart' isso direciona para page2.

> > static final String routeName = '/page2';

> Mais para que isso funcione precisa-se passar todas as paginas por meio do routes pelo arquivo main.dart o inicial de todo o app.

> > routes: {

        '/': (_) => navegacao.HomePage(), 'Pagina Inicial'
        '/page1': (_) => Page1(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
      },

![](/assets/Rotas%20Nomeadas.gif)

#### Meta

Wesley Marques Saraiva - [Linkedlin](https://www.linkedin.com/in/wesley-marques-saraiva/).
Distribuido sobre a licença. Veja `LICENÇA` para mais informações.
