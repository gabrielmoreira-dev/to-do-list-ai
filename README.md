# to_do_list_ai

Este código foi escrito com o auxílio da ferramenta Chat GPT. Para obter este resultado, primeiramente foi adiconada a entrada:

```
Gostaria de obter o código em Flutter de uma funcionalidade de uma tela de lista de tarefas escolares, divididas por disciplina. Nesta tela, o aluno pode cadastrar novas tarefas e visualizar as tarefas existentes. A funcionalidade deve seguir o padrão de arquitetura MVVM, devendo ser forncedios os códigos referentes a todas as camadas do modelo. Os dados devem ser persistidos localmente.
```

## Impressões sobre a ferramenta

A ferramenta foi capaz de processar os requisitos principais e fornecer como saída um aplicativo simples atendendo os principais requisitos.

A arquitetura do código fornecido segue corretamente o padrão MVVM, conforme foi solicitado no script. E a organização com a qual a ferramenta trouxe o resultado, separando o código já por arquivos a serem implementados, foi um ponto positivo.

Em relação às funcionalidades, foram realizados testes para adição e leitura das tarefas e foi possível verificar o correto funcionamento e persistência dos dados, sem bugs significativos ao menos em primeira análise.

Sobre a interface de usuário, a ferramenta forneceu uma UI funcional mas bem rudimentar, sem aplicação de nenhum tema específico, o que não foi solicitado no script.

Analisando o código mais a fundo, é possível notar que na classe TaskViewModel não foi utilizado nenhum tipo de injeção de dependências, o que é recomendado para os casos em que se necessita implementar testes unitários. Este é um ponto que deveria ser melhorado pelo desenvolvedor.

## Conclusão

A ferramenta Chat GPT se mostrou eficiente na geração de uma funcionalidade simples com Flutter, sendo capaz de fornecer um código que compila e atende aos requisitos básicos.

Em relação a UI, a ferramenta forneceu o design mais simples possível. Caso seja necessário obter uma interface mais elaborada, é preciso alterar o script de entrada e fornecer mais especificações.

Além disso, o código obtido não segue algumas boas práticas como injeção de dependências, portanto é necessário um trabalho de revisão de código para corrgir estes pontos e garantir a qualidade da implementação.

Assim, ferraamentas como Chat GPT podem ser bastante úteis no processo de desenvolvimento de funcionalidades, mas ainda é necessário o trabalho do desenvolvedor tanto para projetar a entrada a ser fornecida para a ferramenta quanto para revisar o resultado para garantir sua corretude e atendimento dos requisitos de qualidade.