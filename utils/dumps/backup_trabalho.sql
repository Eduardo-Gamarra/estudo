-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: trabalho
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `opcao`
--

DROP TABLE IF EXISTS `opcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `pergunta_id` bigint(20) NOT NULL,
  `correta` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`pergunta_id`),
  KEY `fk_opcao_pergunta_idx` (`pergunta_id`),
  CONSTRAINT `fk_opcao_pergunta` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcao`
--

LOCK TABLES `opcao` WRITE;
/*!40000 ALTER TABLE `opcao` DISABLE KEYS */;
INSERT INTO `opcao` VALUES (1,'O objetivo I e II são falsos.',1,0),(2,'Somente o objetivo II e verdadeiro.',1,0),(3,'O objetivo I e verdadeiro e o II e falso.',1,0),(4,'O objetivo II e verdadeiro e complementa o objetivo I.',1,0),(5,'O objetivo I e II e verdadeiro, e não se complementam.',1,1),(6,'Art. 15. Os sistemas de ensino assegurarão às unidades escolares públicas de educação básica que os integram progressivos graus de autonomia pedagógica e administrativa e de gestão financeira, observadas as normas gerais de direito financeiro público.',2,1),(7,'Art. 22. A educação básica tem por finalidades desenvolver o educando, assegurar-lhe a formação comum indispensável para o exercício da cidadania e fornecer-lhe meios para progredir no trabalho e em estudos posteriores.',2,0),(8,'Art. 23. A educação básica poderá organizar-se em séries anuais, períodos semestrais, ciclos, alternância regular de períodos de estudos, grupos não-seriados, com base na idade, na competência e em outros critérios, ou por forma diversa de organização, se',2,0),(9,'Art. 28. Na oferta de educação básica para a população rural, os sistemas de ensino promoverão as adaptações necessárias à sua adequação às peculiaridades da vida rural e de cada região, especialmente:',2,0),(10,'Art. 5o O acesso à educação básica obrigatória é direito público subjetivo, podendo qualquer cidadão, grupo de cidadãos, associação comunitária, organização sindical, entidade de classe ou outra legalmente constituída e, ainda, o Ministério Público, acion',2,0),(11,'I e II.',3,0),(12,'II e IV.',3,0),(13,'I, III, V.',3,0),(14,'II, II, IV, V.',3,0),(15,'Todas estão corretas.',3,1),(16,'Somente a I esta correta',4,0),(17,'Nenhuma resposta certa.',4,0),(18,'Somente a II esta correta.',4,0),(19,'Todas as respostas estão corretas.',4,1),(20,'Todas as respostas estão erradas.',4,0),(21,'O desenvolvimento da capacidade de aprender, tendo como meios básicos o pleno domínio da leitura, da escrita e do cálculo;',5,0),(22,'A compreensão do ambiente natural e social, do sistema político, da tecnologia, das artes e dos valores em que se fundamenta a sociedade;',5,0),(23,'O desenvolvimento da capacidade de aprendizagem, tendo em vista a aquisição de conhecimentos e habilidades e a formação de atitudes e valores;',5,0),(24,'O fortalecimento dos vínculos de família, dos laços de solidariedade humana e de tolerância recíproca em que se assenta a vida social.',5,0),(25,'Todas as alternativas estão corretas.',5,1),(26,'Apenas a questão I está correta.',6,0),(27,'Apenas a questão IV está correta.',6,0),(28,'Apenas as questões I, II e III estão corretas.',6,1),(29,'Apenas as questões I e IV estão corretas.',6,0),(30,'Apenas as questões II e III estão corretas.',6,0),(31,'\r\n	Valorização da experiência extraescolar.\r\n\r\n	',7,0),(32,'\r\n	Pluralismo de ideias e de concepções pedagógicas.\r\n\r\n	',7,0),(33,'\r\n	Gratuidade do ensino público em estabelecimentos oficiais.\r\n\r\n	',7,0),(34,'\r\n	Igualdade de condições para o acesso e permanência na escola.\r\n	',7,0),(35,'\r\n	Educação básica, formada pela educação infantil, ensino fundamental e ensino médio.\r\n	',7,1),(36,'\r\n	Coordenar o trabalho dos professores na elaboração do projeto pedagógico da escola.\r\n	',8,0),(37,'\r\n	Coordenar o processo de organização das pessoas no interior da escola, buscando a convergência dos interesses dos vários segmentos e a superação dos conflitos deles decorrentes.\r\n	',8,1),(38,'\r\n	Coordenar o trabalho de professores, alunos e funcionários administrativos na elaboração do projeto pedagógico da escola, evitando, assim, que interesses particulares se sobreponham aos interesses coletivos.\r\n	',8,0),(39,'\r\n	Impor as determinações legais aos seus subordinados, para evitar interferência direta dos órgãos centrais.\r\n	',8,0),(40,'\r\n	Manter pais e responsáveis afastados da elaboração do projeto pedagógico da escola, pois esta é uma atribuição que cabe aos profissionais da educação, pois assim o gestor evita conflitos de interesses.\r\n	',8,0),(41,'\r\n	Determina a carga horária mínima para cada nível de ensino.\r\n	',9,0),(42,'\r\n	Apresenta diretrizes curriculares básicas.\r\n	',9,0),(43,'\r\n	Aponta funções e obrigações dos profissionais da educação.\r\n	',9,0),(44,'\r\n	Determina a função somente dos Estados e Municípios no tocante a gestão da área de educação.\r\n	',9,1),(45,'\r\n	Estabelece as obrigações das instituições de ensino.\r\n	',9,0),(46,'\r\n	I e II.\r\n	',10,0),(47,'\r\n	II e IV.\r\n	',10,0),(48,'\r\n	III e IV.\r\n	',10,0),(49,'\r\n	I, II e III.\r\n	',10,0),(50,'\r\n	I, III e IV.\r\n	',10,1),(51,'\r\n	I.\r\n	',11,0),(52,'\r\n	II.\r\n	',11,0),(53,'\r\n	III.\r\n	',11,1),(54,'\r\n	I e II.\r\n	',11,0),(55,'\r\n	I e III\r\n	',11,0),(56,'\r\n	Os itens I, II e II.\r\n	',12,1),(57,'\r\n	Apenas o item I.\r\n	',12,0),(58,'\r\n	Apenas o item III.\r\n\r\n	',12,0),(59,'\r\n	Apenas os itens I e II.\r\n	',12,0),(60,'\r\n	Nenhum item está correto.\r\n	',12,0),(61,'\r\n	Os itens I, II e IV.\r\n\r\n	',13,1),(62,'\r\n	Apenas os itens I e II.\r\n\r\n	',13,0),(63,'\r\n	Apenas os itens I e III.\r\n\r\n\r\n	',13,0),(64,'\r\n	Apenas os itens III e IV.\r\n\r\n	',13,0),(65,'\r\n	Nenhum item está correto.\r\n\r\n	',13,0),(66,'\r\n	Garantia de padrão de qualidade, prioritariamente, nas instituições de ensino privadas e filantrópicas.\r\n	',14,1),(67,'\r\n	Respeito à liberdade e apreço à tolerância.\r\n	',14,0),(68,'\r\n	Vinculação entre a educação escolar, o trabalho e as práticas sociais.\r\n	',14,0),(69,'\r\n	Consideração com a diversidade étnico-racial.\r\n	',14,0),(70,'\r\n	Ensino fundamental e ensino médio.\r\n	',15,0),(71,'\r\n	Educação infantil e ensino fundamental.\r\n	',15,0),(72,'\r\n	Educação infantil, ensino fundamental e ensino médio.\r\n	',15,1),(73,'\r\n	Ensino médio, educação especial e educação tecnológica.\r\n	',15,0),(74,'\r\n	Todas as alternativas.\r\n	',15,0),(75,'\r\n	Corretas I, II.\r\n	',16,0),(76,'\r\n	Somente III.\r\n	',16,0),(77,'\r\n	Corretas II e IV.\r\n	',16,1),(78,'\r\n	Corretas I, II e III.\r\n	',16,0),(79,'\r\n	V F V F V\r\n	',17,1),(80,'\r\n	V V F V V\r\n	',17,0),(81,'\r\n	F V F V V\r\n	',17,0),(82,'\r\n	V F V V F\r\n	',17,0),(83,'\r\n	F V V F V\r\n	',17,0),(84,'\r\n	Somente a I II III estão corretas.\r\n	',18,0),(85,'\r\n	Somente a II e III estão corretas.\r\n	',18,0),(86,'\r\n	Somente a II e IV estão corretas.\r\n	',18,0),(87,'\r\n	Todas afirmativas estão erradas.\r\n	',18,0),(88,'\r\n	Todas afirmativas estão corretas.\r\n	',18,1),(89,'\r\n	I e V\r\n	',19,0),(90,'\r\n	III e IV\r\n	',19,0),(91,'\r\n	II\r\n	',19,1),(92,'\r\n	III\r\n	',19,0),(93,'\r\n	II e V.\r\n	',19,0),(94,'\r\n	I\r\n	',20,0),(95,'\r\n	II\r\n	',20,0),(96,'\r\n	II e III\r\n	',20,0),(97,'\r\n	III\r\n	',20,0),(98,'\r\n	Todas as alternativas estão corretas.\r\n	',20,1);
/*!40000 ALTER TABLE `opcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pergunta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,'Art. 78º. O Sistema de Ensino da União, com a colaboração das agências federais de fomento à cultura e de assistência aos índios, desenvolverá programas integrados de ensino e pesquisa, para oferta de educação escolar bilíngue e intercultural aos povos indígenas, com os seguintes objetivos:\r\nProporcionar aos índios, suas comunidades e povos, a recuperação de suas memórias históricas; a reafirmação de suas identidades étnicas; a valorização de suas línguas e ciências;\r\nPORQUE\r\nGarantir aos índios, suas comunidades e povos, o acesso às informações, conhecimentos técnicos e científicos da sociedade nacional e demais sociedades indígenas e não-índias.\r\nAssine a questão correta:'),(2,'As escolas podem criar seus projetos políticos, há forma de gerirem parte dos recursos financeiros que recebem desde que o façam de acordo com as normas. \nIsto é correto afirmar de acordo com artigo:'),(3,'rt. 68º. Serão recursos públicos destinados à educação os originários de:\r\nReceita de impostos próprios da União, dos Estados, do Distrito Federal e dos Municípios;\r\nReceita de transferências constitucionais e outras transferências;\r\nReceita do salário-educação e de outras contribuições sociais;\r\nReceita de incentivos fiscais;\r\nOutros recursos previstos em lei.\r\nEstão CORRETAS apenas '),(4,'Art. 61º. A formação de profissionais da educação, de modo a atender aos objetivos dos diferentes níveis e modalidades de ensino e às características de cada fase do desenvolvimento do educando, terá como fundamentos:\r\nA associação entre teorias e práticas, inclusive mediante a capacitação em serviço;\r\nAproveitamento da formação e experiências anteriores em instituições de ensino e outras atividades.\r\nConsiderando as informações a cima qual delas esta CORRETA.'),(5,'Lei de Diretrizes e Bases da Educação Brasileira (LDB 9394/96) é a legislação que regulamenta o sistema educacional (público ou privado) do Brasil (da educação básica ao ensino superior). Segundo o Art. 32. O ensino fundamental, com duração mínima de oito anos, obrigatório e gratuito na escola pública, terá por objetivo a formação básica do cidadão, mediante:'),(6,'O Art. 28. Da Lei de Diretrizes e Bases diz que na oferta de educação básica para a população rural, os sistemas de ensino promoverão as adaptações necessárias à sua adequação às peculiaridades da vida rural e de cada região, especialmente:\r\nI-Conteúdos curriculares e metodologias apropriadas às reais necessidades e interesses dos alunos da zona rural;\r\nII-Organização escolar própria, incluindo adequação do calendário escolar às fases do ciclo agrícola e às condições climáticas;\r\nIII-Adequação à natureza do trabalho na zona rural;\r\nIV-Serão ensinadas apenas praticas de plantio e colheita, pois essa é a realidade das crianças que vivem na zona rural.'),(7,'\r\nDe acordo com a LDB - Lei 9394/96- É INCORRETO AFIRMAR QUE:\r\nArt. 3º O ensino será ministrado com base nos seguintes princípios:\r\n'),(8,'\r\nArt. 1º A educação abrange os processos formativos que se desenvolvem na vida familiar, na convivência humana, no trabalho, nas instituições de ensino e pesquisa, nos movimentos sociais e organizações da sociedade civil e nas manifestações culturais.\r\n§ 2º A educação escolar deverá vincular-se ao mundo do trabalho e à prática social.\r\nSegundo o documento Progestão, existe a autonomia legal e a autonomia construída. A primeira refere-se à autonomia prevista na LDB (Lei n.º 9.394/96), já a segunda refere-se à autonomia construída na escola. Segundo o mesmo documento, o papel do gestor no processo de elaboração do projeto pedagógico da escola, visando ajudar na construção de sua autonomia, é:\r\n'),(9,'\r\nNas principais características da Lei de Diretrizes e Bases da Educação, é incorreto afirmar que:\r\n'),(10,'\r\nNos termos da Lei de Diretrizes e Bases ? LDB, Lei no 9.394/1996, são atribuições docentes:\r\nI-Participar da elaboração da proposta pedagógica do estabelecimento de ensino.\r\nII-Elaborar e cumprir plano de trabalho, segundo a proposta do Conselho Tutelar do Município.\r\nIII-Zelar pela aprendizagem dos alunos.\r\nIV-Estabelecer estratégias de recuperação para os alunos de menor rendimento.\r\nEstá correto o que se afirma APENAS em:\r\n'),(11,'\r\nA Lei de Diretrizes e Bases da Educação LDB, Lei nº 9.394, de 20 de dezembro de 1996, estabelece que educação abrange, além da educação escolar, aquela obtida no desenvolvimento familiar, na convivência humana, no trabalho, nas instituições de ensino e pesquisa, nos movimentos sociais e organizações da sociedade civil e nas manifestações culturais. Regulamenta que a legislação tratará, no entanto, apenas da educação escolar. Sobre a educação escolar, conforme a LDB, leia as seguintes assertivas:\r\nI-A educação escolar compreende a ofertada de ensino fundamental e médio, exclusivamente em instituições públicas, de acordo com as regulamentações específicas.\r\nII-A educação escolar é dever do estado, estando a família e a sociedade isentos de responsabilidade no que toca à matricula e permanência nos diferentes níveis de ensino.\r\nIII-A educação escolar básica é direito subjetiva, podendo qualquer cidadão ou entidade exigir do poder público seu cumprimento, acionando para tanto os órgãos necessários.\r\nEstá correto apenas o que se afirma em:\r\n'),(12,'\r\nA lei n° 9394/1996 (Diretrizes e Bases da Educação Nacional) no seu artigo 5, e 1, sobre o acesso ao ensino fundamental, determina que compete aos Estados e Municípios, em regime de colaboração com a assistência da União:\r\n\r\nI-Recensear a população em idade escolar fundamental e os jovens e adultos que a eles não tiveram acesso.\r\nII-Fazer-lhes a chamada pública.\r\nIII-Zelar, junto aos pais ou responsáveis, pela frequência à escola.\r\nEstá (ao) correto(s):\r\n'),(13,'\r\nSegundo a lei n° 9394/1996(Lei de Diretrizes e Base da Educação Nacional), no seu art. 27, os conteúdos curriculares da educação básica observarão os seguintes princípios:\r\nI-A difusão de valores fundamentais ao interesse social, aos direitos e deveres dos cidadãos, ao respeito ao bem comum e à ordem democrática.\r\nII-Consideração das condições de escolaridade dos alunos em cada estabelecimento.\r\nIII-Orientação para a vida.\r\nIV-Promoção do desporto educacional e apoio as práticas desportivas não formais.\r\n\r\nEstão corretos:\r\n'),(14,'\r\nArt. 2º A educação, dever da família e do Estado, inspirada nos princípios de liberdade e nos ideais de solidariedade humana, tem por finalidade o pleno desenvolvimento do educando, seu preparo para o exercício da cidadania e sua qualificação para o trabalho.\r\nArt. 3º O ensino será ministrado com base nos seguintes princípios:\r\nI – igualdade de condições para o acesso e permanência na escola;\r\nII – liberdade de aprender, ensinar, pesquisar e divulgar a cultura, o pensamento, a arte e o sabe. \r\nDe acordo com a Lei de Diretrizes e Bases da Educação Nacional (LDB N.º 9.394/1996), NÃO é princípio da Educação Nacional:\r\n'),(15,'\r\nA Lei de Diretrizes e Bases da Educação Nacional (LDB N.º 9.394/1996), ao tratar da composição dos níveis escolares, estabelece que a educação básica compõe-se de:\r\n'),(16,'\r\nA lei de diretrizes e bases da Educação brasileira á ( LDB 9394/96 ) é a legislação que regulamenta o sistema  educacional ( público ou privado ) do Brasil (da educação básica ao ensino superior) e é dividida em dois níveis: a educação básica e o ensino superior. É correto o que se afirma em.\r\n\r\nI-Educação infantil – creches (0 a 3 anos ) e pré-escolas (4 á 5 anos), gratuita mas não obrigatória.\r\nII-Ensino fundamental – anos iniciais (1º ao 5º ano) e anos finais (6º ao 9º ano), obrigatório e gratuito.\r\nIII-Ensino médio – o antigo 2º grau (do 1º ao 3º ano), de responsabilidade dos estados. Pode ser técnica profissionalizante, ou não obrigatória e gratuita.\r\nIV-Ensino superior: É de competência da união, podendo ser oferecida por estados e municípios, desde que tenham atendido os níveis pelos quais é responsável. Em sua totalidade.\r\n'),(17,'\r\nA Lei de Diretrizes e Bases da Educação Nacional (LDB) 9394/96, em vigor apresentam os princípios e os fins da educação nacional, assim como o dever do Estado e dos pais em relação à educação. De acordo com essas informações, julguem os itens subsequentes como verdadeiro (V) falso (F).\r\n\r\n*A educação, dever da família e do Estado, inspirada nos princípios de liberdade e nos ideais de solidariedade humana, tem por finalidade o pleno desenvolvimento do educando, seu preparo para o exercício da cidadania e sua qualificação para o trabalho. \r\n*A LDB define que as formas de desenvolvimento da educação profissional e técnica de nível médio são desarticuladas do Ensino Médio. \r\n*A diversidade étnico-racial deve ser valorizada como objeto de estudo e prática social, nos diferentes níveis de ensino. \r\n*As instituições de educação básica, ou superior, criadas e mantidas pela iniciativa privada devem apresentar capacidade de autofinanciamento e sustentabilidade, por isso são autônomas em relação aos diferentes sistemas de ensino. \r\n*O Estado tem o dever de garantir educação escolar pública, obrigatória e gratuita, em todos os níveis de ensino. \r\n'),(18,'\r\nConsideram-se profissionais da educação escolar básica os que, nela estando em efetivo exercício e tendo sido formados em cursos reconhecidos, são:          \r\n\r\nI-Professores habilitados em nível médio ou superior para a docência na educação infantil e nos ensinos fundamental e médio;             \r\n \r\nII-Trabalhadores em educação portadores de diploma de pedagogia, com habilitação em administração, planejamento, supervisão, inspeção e orientação educacional, bem como com títulos de mestrado ou doutorado nas mesmas áreas;             \r\n \r\nIII-Trabalhadores em educação, portadores de diploma de curso técnico ou superior em área pedagógica ou afim; e (Redação dada pela Medida Provisória nº 746, de 2016) \r\n \r\nIV-Profissionais com notório saber reconhecido pelos respectivos sistemas de ensino para ministrar conteúdos de áreas afins à sua formação para atender o disposto no inciso V do caput do art. 36.   \r\n\r\n'),(19,'\r\nDocente (professor) para nós é aquele que ENSINA - no Brasil - é o profissional que ministra aulas ou cursos em todos os níveis educacionais: Educação infantil, Educação fundamental, Ensino médio e superior, além do Ensino profissionalizante e técnico. Nos EUA e Reino Unido professores do ensino fundamental e médio são denominados (teachers), nunca (professors). \r\nDe acordo com a LDB, é obrigação do docente: \r\nI-Informar o Conselho Tutelar sempre que o direito público dos alunos não for respeitado.\r\nII-Ministrar os dias letivos e horas-aula estabelecidos, além de participar integralmente dos períodos dedicados ao planejamento, à avaliação e ao desenvolvimento profissional.\r\nIII-Participar da elaboração da proposta pedagógica do estabelecimento de ensino, garantindo sua adequação às Diretrizes Nacionais Curriculares fixadas na forma da lei. \r\nIV-Estabelecer estratégias de recuperação para os alunos de menor rendimento por meio de projeto aprovado pelo Conselho de Escola.\r\nV-Definir, juntamente com seus pares, o calendário escolar, respeitado o número mínimo de dias letivos e da jornada escolar definidos na lei.\r\nÉ correto o que se afirma em:\r\n'),(20,'\r\nAs universidades são instituições pluridisciplinares de formação dos quadros profissionais de nível superior, de pesquisa, de extensão e de domínio e cultivo do saber humano, que se caracterizam por: \r\nI-Produção intelectual institucionalizada mediante o estudo sistemático dos temas e problemas mais relevantes, tanto do ponto de vista científico e cultural, quanto regional e nacional.\r\nII-Um terço do corpo docente, pelo menos, com titulação acadêmica de mestrado ou doutorado.\r\nIII-Um terço do corpo docente em regime de tempo integral.\r\nÉ correto o que se afirma em:\r\n');
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','123'),(2,'root','0'),(15,'login','senha'),(16,'b','b');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-31 18:50:41