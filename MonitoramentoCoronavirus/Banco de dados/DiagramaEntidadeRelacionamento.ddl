create table Paciente (codpac int(10) not null auto_increment comment 'Código do paciente', nompac varchar(120) not null comment 'Nome do paciente.', datpac date not null comment 'Data de nascimento do paciente.', pespac numeric(5, 2) not null comment 'Peso do Paciente', altpac numeric(3, 2) not null comment 'Altura do Paciente', cpfpac int(11) not null comment 'CPF do paciente.', sexpac varchar(9) not null comment 'Sexo do paciente.', usupac varchar(60) not null comment 'Usuario  paciente', senpac varchar(60) not null comment 'Senha do paciente', ruapac varchar(100) not null comment 'Rua do paciente', cidpac varchar(100) not null comment 'Cidade do paciente', ceppac int(14) not null comment 'Cep do paciente', estpac varchar(60) not null comment 'Estado do paciente',nivel int(1) not null default '1' comment 'Nivel de acesso (1-Paciente, 2-Medico)', primary key (codpac)) comment='Tabela de pacientes';
create table Sintoma (codsin int(10) not null auto_increment comment 'Código dos sintomas.', falsin varchar(3) not null comment 'Falta de ar', febsin varchar(3) not null comment 'sintomas de febre', tossin varchar(3) not null comment 'sintomas de tosse', dorsin varchar(3) not null comment 'Sintomas de dor no corpo', garsin varchar(3) not null comment 'Sintomas de dor de garganta', calsin varchar(3) not null comment 'Sintomas de calafrio', consin varchar(3) not null comment 'Sintomas de congestaonasal', corsin varchar(3) not null comment 'Sintomas de coriza', codpac int(10) not null, datsin date not null default curdate() comment 'Data do relatorio dos sintomas', covsin varchar(20) not null comment 'Sintomas de covid', primary key (codsin)) comment='Tabela de sintomas do corona virus';
create table Medico (codmed int(10) not null auto_increment comment 'Código do médico.', nommed varchar(120) not null comment 'Nome do médico.', datmed date not null comment 'Data de nascimento do médico.', crmmed int(6) not null comment 'Número de CRM(Conselho Regional de Medicina) do médico.', primary key (codmed)) comment='Tabela de Médicos';
create table Hospital (codhos int(10) not null auto_increment comment 'Código do hospital.', nomhos varchar(120) not null comment 'Nome do hospital.', quahos int(10) not null comment 'Quantidade de internados.', primary key (codhos)) comment='Tabela de Hospitais';
create table Agendamento (codage int(10) not null auto_increment comment 'Código do agendamento.', horage timestamp(4) not null comment 'Horáro do agendamento.', datage date not null comment 'Data do agendamento.', codpac int(10) not null comment 'Código do Paciente', codmed int(10) not null comment 'Código do médico', codhos int(10) not null comment 'Código do Hospital', primary key (codage)) comment='Tabela de agendamento';
create table auditoria (codaud int(10) not null auto_increment comment 'Codigo da auditoria', desaud varchar(60) not null comment 'Descricao do processo', dataud date not null default curdate() comment 'Data da realização da mudanca', primary key (codaud));
alter table Agendamento add constraint FKAgendament20513 foreign key (codpac) references Paciente (codpac);
alter table Agendamento add constraint FKAgendament28796 foreign key (codmed) references Medico (codmed);
alter table Agendamento add constraint FKAgendament770750 foreign key (codhos) references Hospital (codhos);
alter table Sintoma add constraint FKSintoma207187 foreign key (codpac) references Paciente (codpac);
