create database cellBytes;
use cellBytes;
create table product(
	id int not null auto_increment primary key,
    nameProduct varchar(50) not null,
    imageAdress1 varchar(500) default null,
    imageAdress2 varchar(500) default null,
    descricao varchar(2000) default null,
    price varchar(10) not null,
    isInCarrinho int default 0
);
create table logins(
	id int not null auto_increment primary key,
    loginName varchar(15) not null, 
    password varchar(200) not null
);
create table carrinho(
	id int not null auto_increment primary key,
    compra int not null,
    nameProduct varchar(50) not null,
    price varchar(10) not null,
    aux int default 0,
    quant int default 1
);
create table vendaProduct(
	idaux int not null primary key auto_increment,
	id int not null,
    nameProduct varchar(50) not null,
    price varchar(10) not null,
    quant int default 1
);
create table vendaClient(
	idaux int not null primary key auto_increment,
	id int not null,
    nameClient varchar(50) not null,
    phone varchar(20) not null,
    endereco varchar(50) not null,
    numeroCasa varchar(8) not null,
    bairro varchar(40) not null,
    estado varchar(20) not null
);
insert into logins (loginName, password) values ("admin", MD5("admin"));
insert into product (nameProduct, imageAdress1, imageAdress2, descricao, price) values("Computador Intel I5", "img1/Product1.png", "img1/Product2.png", "Placa Mãe LGA 1150 Intel Pcware IPMH81 TG-H81 DDR3 VGA HDMI DVI
			</br>
			Processador Intel LGA 1150 Core I5-4590 3.30Ghz 6M Cache C/ Cooler
			</br>
			Memória DDR3 8Gb 1600Mhz Samsung / Team Group
			</br>
			HD Desk/Not Sata SSD 512Gb Acer
			</br>
			Gabinete Aerocool Gt Window Black 58683
			</br>
			Fonte ATX Real One Power 500W MP500W3-I
			</br>
			Windows 10 Profissional 32/64Bits Oem Coa FQC-08929
			</br>
			Mouse Pad Bi Gamer brinde", "3499.99");
            
            
            
insert into product (nameProduct, imageAdress1, imageAdress2, descricao, price) values("PlayStation 5", "img1/PS5_1.png", "img1/PS5_2.png", "Domine o poder de uma CPU e GPU personalizadas e o SSD com E/S integradas que redefinem as 
			regras do que o console PlayStation pode fazer
			</br>
			SSD ultrarrápido: Maximize suas sessões de jogo com tempos de carregamento praticamente 
			instantâneos para jogos do PS5 instalados.
			</br>
			E/S integrada: A integração personalizada dos sistemas de console PS5 permite que os 
			criadores extraiam dados do SSD tão rápido que eles podem desenvolver jogos de formas que antes seriam impossíveis.
			</br>
			Maravilhe-se com os gráficos incríveis e experimente os recursos do novo PS5
			</br>
			Versão com leitor de BluRay", "5799.99");
            
            
            
insert into product (nameProduct, imageAdress1, imageAdress2, descricao, price) values("Notebook Acer Aspire VX 15", "img1/notebook1.jpg", "img1/notebook2.png", "Desenvolvido para não deixar você parar, o Aspire VX 15 tem a tecnologia que acompanha seu 
			estilo de vida. Equipado com o processador da 10ª geração Core i3, estudar, trabalhar e se divertir ficam mais fácil.
			</br>
			Com 256 GB SSD, você pode ler e gravar arquivos muito mais rápido do que em um HD tradicional. Após poucos segundos 
			da inicialização do sistema operacional, você já tem acesso completo as funcionalidades do seu notebook.
			</br>
			Com 8 GB de RAM, você não perde tempo, nem fluxo ao editar suas fotos, vídeos e projetos pesados. Com toda essa memória, 
			seus jogos também ficam mais fluídos e realistas.
			</br>
			Assistir vídeos, filmes e séries será como estar no cinema com a tela HD de 15.6 polegadas. A tecnologia Acer ComfyView 
			otimiza o conforto, refletindo menos luz e garantindo uma visualização mais confortável.", "3374.99");