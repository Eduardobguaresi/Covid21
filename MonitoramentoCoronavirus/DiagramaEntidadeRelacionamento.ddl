create table Paciente (codpac int(10) not null auto_increment, nompac varchar(120) not null comment 'Nome do paciente.', datpac date not null comment 'Data de nascimento do paciente.', pespac int(10) not null comment 'Peso do Paciente', altpac int(10) not null comment 'Altura do Paciente', cpfpac int(11) not null comment 'CPF do paciente.', sexpac varchar(9) not null, usupac varchar(60) not null comment 'Usuario do paciente', senhapac varchar(60) not null comment 'Senha do paciente', ruaend varchar(100) not null comment 'rua endereco', cidend varchar(100) not null comment 'cidade endereco', cepend int(14) not null comment 'Cep endereco', primary key (codpac)) comment='Tabela de pacientes';
create table Sintoma (codsin int(10) not null auto_increment comment 'Códiigo dos sintomas.', `falta de ar` varchar(3) not null, febre varchar(3) not null, tosse varchar(3) not null, `dor no corpo` varchar(3) not null, `dor de garganta` varchar(3) not null, calafrio varchar(3) not null, congestaonasal varchar(3) not null, coriza varchar(3) not null, codpac int(10) not null, datsin date not null comment 'data do relatorio dos sintomas', resultcovid varchar(20) not null, primary key (codsin)) comment='Tabela de sintomas do corona virus';
create table Medico (codmed int(10) not null auto_increment comment 'Código do médico.', nommed varchar(120) not null comment 'Nome do médico.', datmed date not null comment 'Data de nascimento do médico.', crmmed int(6) not null comment 'Número de CRM(Conselho Regional de Medicina) do médico.', primary key (codmed)) comment='Tabela de Médicos';
create table Hospital (codhos int(10) not null auto_increment comment 'Código do hospital.', nomhos varchar(120) not null comment 'Nome do hospital.', quahos int(10) not null comment 'Quantidade de internados.', primary key (codhos)) comment='Tabela de Hospitais';
create table Agendamento (codage int(10) not null auto_increment comment 'Código do agendamento.', horage timestamp(4) not null comment 'Horáro do agendamento.', datage date not null comment 'Data do agendamento.', codpac int(10) not null comment 'Código do Paciente', codmed int(10) not null comment 'Código do médico', codhos int(10) not null comment 'Código do Hospital', primary key (codage)) comment='Tabela de agendamento';
create table auditoria (codaud int(10) not null auto_increment comment 'Codigo da auditoria', descaud varchar(60) not null comment 'Descricao do processo', dataaud date not null comment 'data da realização da mudanca', primary key (codaud));
alter table Agendamento add constraint FKAgendament20513 foreign key (codpac) references Paciente (codpac);
alter table Agendamento add constraint FKAgendament28796 foreign key (codmed) references Medico (codmed);
alter table Agendamento add constraint FKAgendament770750 foreign key (codhos) references Hospital (codhos);
alter table Sintoma add constraint FKSintoma207187 foreign key (codpac) references Paciente (codpac);