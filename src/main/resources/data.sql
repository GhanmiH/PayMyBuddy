
CREATE TABLE public.User (
                id INTEGER NOT NULL,
                email VARCHAR NOT NULL,
                password VARCHAR NOT NULL,
                firstName VARCHAR,
                lastName VARCHAR,
                CONSTRAINT user_pk PRIMARY KEY (id)
);


CREATE TABLE public.Transaction (
                id INTEGER NOT NULL,
                User_id INTEGER NOT NULL,
                idSender INTEGER,
                idBeneficiary INTEGER,
                date DATE,
                amount DOUBLE PRECISION,
                CONSTRAINT transaction_pk PRIMARY KEY (id, User_id)
);


CREATE TABLE public.BankAccount (
                id INTEGER NOT NULL,
                iban INTEGER,
                swift VARCHAR,
                accountBalance VARCHAR,
                CONSTRAINT bankaccount_pk PRIMARY KEY (id)
);


ALTER TABLE public.BankAccount ADD CONSTRAINT user_bankaccount_fk
FOREIGN KEY (id)
REFERENCES public.User (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Transaction ADD CONSTRAINT user_transaction_fk
FOREIGN KEY (id)
REFERENCES public.User (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Transaction ADD CONSTRAINT user_transaction_fk1
FOREIGN KEY (User_id)
REFERENCES public.User (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;