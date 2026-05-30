:- dynamic paciente/4.
:- dynamic dentista/2.
:- dynamic consulta/5.
:- dynamic pagamento/5.

% =====================================================
% DADOS INICIAIS
% =====================================================

paciente("Joao Silva", "62999999999", 35, "Goiania").
paciente("Maria Souza", "62888888888", 10, "Anapolis").
paciente("Pedro Santos", "62777777777", 28, "Aparecida de Goiania").

dentista("Dra Ana", ortodontia).
dentista("Dr Carlos", implantodontia).
dentista("Dra Paula", odontopediatria).

consulta("2025-06-20", "09:00", "Dra Ana", ortodontia, "Joao Silva").

pagamento(1, "Joao Silva", pix, 250.00, pago).
pagamento(2, "Maria Souza", cartao, 180.00, pendente).

% =====================================================
% PACIENTES
% =====================================================

cadastrar_paciente(Nome, Telefone, Idade, Endereco) :-
    assertz(paciente(Nome, Telefone, Idade, Endereco)).

listar_pacientes :-
    paciente(Nome, Telefone, Idade, Endereco),
    write('Paciente: '), write(Nome),
    write(' | Telefone: '), write(Telefone),
    write(' | Idade: '), write(Idade),
    write(' | Endereco: '), write(Endereco),
    nl,
    fail.

listar_pacientes.

% =====================================================
% CONSULTAS
% =====================================================

listar_consultas(Paciente) :-
    consulta(Data, Hora, Dentista, Procedimento, Paciente),
    write(Data),
    write(' - '),
    write(Hora),
    write(' - '),
    write(Dentista),
    write(' - '),
    write(Procedimento),
    nl,
    fail.

listar_consultas(_).

% =====================================================
% AGENDAMENTO COM ESPECIALIDADE
% =====================================================

cadastrar_consulta_especialista(
    Data,
    Hora,
    Procedimento,
    Paciente
) :-

    paciente(Paciente, _, Idade, _),

    (
        Procedimento = odontopediatria,
        Idade > 12
        ->
        write('Erro: paciente fora da faixa etaria da odontopediatria.'),
        nl,
        fail
        ;
        true
    ),

    dentista(Dentista, Procedimento),

    assertz(
        consulta(
            Data,
            Hora,
            Dentista,
            Procedimento,
            Paciente
        )
    ).

% =====================================================
% CONFIRMACAO
% =====================================================

confirmar_consulta(Paciente) :-
    consulta(Data, Hora, Dentista, Procedimento, Paciente),

    write('Consulta confirmada: '),
    write(Paciente),
    write(' - '),
    write(Data),
    write(' '),
    write(Hora),
    write(' - '),
    write(Dentista),
    write(' - '),
    write(Procedimento),
    nl.

% =====================================================
% REMARCACAO
% =====================================================

remarcar_consulta(
    Paciente,
    NovaData,
    NovaHora
) :-

    retract(
        consulta(
            _,
            _,
            Dentista,
            Procedimento,
            Paciente
        )
    ),

    assertz(
        consulta(
            NovaData,
            NovaHora,
            Dentista,
            Procedimento,
            Paciente
        )
    ).

% =====================================================
% PAGAMENTOS
% =====================================================

consultar_pagamento(Paciente) :-

    pagamento(
        ID,
        Paciente,
        Forma,
        Valor,
        Status
    ),

    write('ID: '), write(ID),
    write(' | Forma: '), write(Forma),
    write(' | Valor: R$ '), write(Valor),
    write(' | Status: '), write(Status),
    nl.

atualizar_status_pagamento(
    Paciente,
    NovoStatus
) :-

    retract(
        pagamento(
            ID,
            Paciente,
            Forma,
            Valor,
            _
        )
    ),

    assertz(
        pagamento(
            ID,
            Paciente,
            Forma,
            Valor,
            NovoStatus
        )
    ).