% ==========================================
% LISTAGEM DE PACIENTES
% ==========================================

listar_pacientes.

% ==========================================
% CONSULTAS DE UM PACIENTE
% ==========================================

listar_consultas("Joao Silva").

% ==========================================
% NOVO PACIENTE
% ==========================================

cadastrar_paciente(
    "Lucas Ferreira",
    "62912345678",
    9,
    "Goiania"
).

% ==========================================
% NOVA CONSULTA
% ==========================================

cadastrar_consulta_especialista(
    "2025-07-01",
    "14:00",
    odontopediatria,
    "Lucas Ferreira"
).

% ==========================================
% CONFIRMACAO
% ==========================================

confirmar_consulta(
    "Lucas Ferreira"
).

% ==========================================
% REMARCACAO
% ==========================================

remarcar_consulta(
    "Lucas Ferreira",
    "2025-07-05",
    "15:30"
).

% ==========================================
% CONSULTA DE PAGAMENTO
% ==========================================

consultar_pagamento(
    "Maria Souza"
).

% ==========================================
% ATUALIZAR PAGAMENTO
% ==========================================

atualizar_status_pagamento(
    "Maria Souza",
    pago
).

consultar_pagamento(
    "Maria Souza"
).