DELIMITER // 
CREATE PROCEDURE MultaCRUD(
    codigo INTEGER,
    valor_pago VARCHAR(45),
    juros VARCHAR(45),
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Multa` (
        `codigo`,
        `valor_pago`,
        `juros`
    )
VALUES
    (
        codigo,
        valor_pago,
        juros
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Multa
WHERE
    Multa.codigo = codigo;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Multa
WHERE
    Multa.codigo = codigo;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Multa
SET
    Multa.valor_pago = CASE
        WHEN valor_pago = '' THEN Multa.valor_pago
        ELSE valor_pago
    END,
    Multa.juros = CASE
        WHEN juros = '' THEN Multa.juros
        ELSE juros
    END
WHERE
    Multa.codigo = codigo;

END IF;

END;

DELIMITER;