--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: SalesInfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SalesInfo" (
    id text NOT NULL,
    name text NOT NULL,
    "phoneNumber" text NOT NULL,
    address text NOT NULL,
    "totalAmountDue" double precision NOT NULL,
    propieder text NOT NULL
);


ALTER TABLE public."SalesInfo" OWNER TO postgres;

--
-- Name: SalesInfoDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SalesInfoDetail" (
    id text NOT NULL,
    "stockName" text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    amount double precision NOT NULL,
    "totalAmountDue" double precision NOT NULL,
    "amountPaid" double precision NOT NULL,
    "amountPaidDescription" text NOT NULL,
    "salesInfoId" text NOT NULL
);


ALTER TABLE public."SalesInfoDetail" OWNER TO postgres;

--
-- Name: SupplierPurchase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SupplierPurchase" (
    id text NOT NULL,
    "nameOfTheSupplier" text NOT NULL,
    "phoneNumber" text NOT NULL,
    address text NOT NULL,
    "totalAmountDue" double precision NOT NULL,
    "listOfItems" text[]
);


ALTER TABLE public."SupplierPurchase" OWNER TO postgres;

--
-- Name: SupplierPurchaseDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SupplierPurchaseDetail" (
    id text NOT NULL,
    "stockName" text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    amount double precision NOT NULL,
    "totalAmountDue" double precision NOT NULL,
    "amountPaid" double precision NOT NULL,
    "amountPaidDescription" text NOT NULL,
    "supplierPurchaseId" text NOT NULL
);


ALTER TABLE public."SupplierPurchaseDetail" OWNER TO postgres;

--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id text NOT NULL,
    "phoneNumber" text NOT NULL,
    name text
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Data for Name: SalesInfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SalesInfo" (id, name, "phoneNumber", address, "totalAmountDue", propieder) FROM stdin;
dc17165f-a244-40fd-b2d1-d0f47efcd42c	Bhubaneswari Classic	7077404758	near gate bazzar	73320	padhy babu big brother
\.


--
-- Data for Name: SalesInfoDetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SalesInfoDetail" (id, "stockName", date, quantity, price, amount, "totalAmountDue", "amountPaid", "amountPaidDescription", "salesInfoId") FROM stdin;
e6afeecf-f9c4-454a-9005-fb85bcff03f8	dmr	2024-06-18 07:00:00	60	1222	73320	73320	0		dc17165f-a244-40fd-b2d1-d0f47efcd42c
\.


--
-- Data for Name: SupplierPurchase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SupplierPurchase" (id, "nameOfTheSupplier", "phoneNumber", address, "totalAmountDue", "listOfItems") FROM stdin;
9e2db2ab-011e-4b3b-bb37-3a15f138d47e	Siba Chikiti	7077404766	chikit	1245440	{Rice}
\.


--
-- Data for Name: SupplierPurchaseDetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SupplierPurchaseDetail" (id, "stockName", date, quantity, price, amount, "totalAmountDue", "amountPaid", "amountPaidDescription", "supplierPurchaseId") FROM stdin;
06588472-4149-45a8-9518-aaa7a17a6493	dmr	2024-06-17 07:00:00	1000	1222	1222000	1222000	0		9e2db2ab-011e-4b3b-bb37-3a15f138d47e
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, "phoneNumber", name) FROM stdin;
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
ef05a266-0aa5-462d-b649-9771c7fac9dc	9c4f3e033d819ed2c16cd48a8541a09783aab4448507eaee787ee93c4c615a8a	2024-06-14 00:43:51.477934-07	20240611064159_setting_up	\N	\N	2024-06-14 00:43:51.461462-07	1
6c394fda-3ce4-4dc5-af75-7c47a2758722	38d3d7ea98834ed3a702511ce5f54210a89042f5c0ebe8370df0810b1d9ad6d2	2024-06-14 00:43:51.494177-07	20240612071731_add_supplier_purchase	\N	\N	2024-06-14 00:43:51.478764-07	1
f84a55f9-dee1-41b5-8dd8-23bdd5f4e709	0da77c5e1e484b187ae5ce7b5ec9674ee9b1f1250d4412424fb07ce0aa8a7a44	2024-06-14 00:43:51.520999-07	20240612175532_add_supplier_purchase_detail_model	\N	\N	2024-06-14 00:43:51.494974-07	1
05d6c2ad-5811-4c88-8f64-948ecda1cf2c	0d498d161793309dc459003a696aa397fc7666cbf07eaa6eee0250c90e419a8e	2024-06-14 00:43:51.533842-07	20240613130035_changesinthepurchasedetail_table	\N	\N	2024-06-14 00:43:51.521771-07	1
5d7ee67e-a911-49a1-baef-a86e0ca55ac3	6141445901ef3fa00b358a7106d6e9ff2e8e4c8b97ad98559e5f73816dc1bed1	2024-06-14 00:43:51.574796-07	20240614064016_sales_table_inserted	\N	\N	2024-06-14 00:43:51.534631-07	1
2944c656-9c19-485d-93f2-1603212a3960	ceb210e05f6a5a953300f11141af677228a7bb3235331c6ac2ef82349cbccc38	2024-06-14 00:43:51.578121-07	20240614073125_added_a_new_row_in_salesinfo	\N	\N	2024-06-14 00:43:51.575535-07	1
ac7a1607-0764-4d49-8625-023b8d9aa083	e58f50394761351d5691bb801366322e426d40456f3bb604294f94c719c146fa	\N	20240618133235_changesinthedb	A migration failed to apply. New migrations cannot be applied before the error is recovered from. Read more about how to resolve migration issues in a production database: https://pris.ly/d/migrate-resolve\n\nMigration name: 20240618133235_changesinthedb\n\nDatabase error code: 23502\n\nDatabase error:\nERROR: column "updatedAt" of relation "SalesInfoDetail" contains null values\n\nDbError { severity: "ERROR", parsed_severity: Some(Error), code: SqlState(E23502), message: "column \\"updatedAt\\" of relation \\"SalesInfoDetail\\" contains null values", detail: None, hint: None, position: None, where_: None, schema: Some("public"), table: Some("SalesInfoDetail"), column: Some("updatedAt"), datatype: None, constraint: None, file: Some("tablecmds.c"), line: Some(6051), routine: Some("ATRewriteTable") }\n\n   0: sql_schema_connector::apply_migration::apply_script\n           with migration_name="20240618133235_changesinthedb"\n             at schema-engine\\connectors\\sql-schema-connector\\src\\apply_migration.rs:106\n   1: schema_core::commands::apply_migrations::Applying migration\n           with migration_name="20240618133235_changesinthedb"\n             at schema-engine\\core\\src\\commands\\apply_migrations.rs:91\n   2: schema_core::state::ApplyMigrations\n             at schema-engine\\core\\src\\state.rs:201	2024-06-18 06:43:49.237265-07	2024-06-18 06:33:39.05987-07	0
357625ee-0b9e-46b2-863c-6785ed371718	e58f50394761351d5691bb801366322e426d40456f3bb604294f94c719c146fa	2024-06-18 06:43:49.240705-07	20240618133235_changesinthedb		\N	2024-06-18 06:43:49.240705-07	0
\.


--
-- Name: SalesInfoDetail SalesInfoDetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalesInfoDetail"
    ADD CONSTRAINT "SalesInfoDetail_pkey" PRIMARY KEY (id);


--
-- Name: SalesInfo SalesInfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalesInfo"
    ADD CONSTRAINT "SalesInfo_pkey" PRIMARY KEY (id);


--
-- Name: SupplierPurchaseDetail SupplierPurchaseDetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SupplierPurchaseDetail"
    ADD CONSTRAINT "SupplierPurchaseDetail_pkey" PRIMARY KEY (id);


--
-- Name: SupplierPurchase SupplierPurchase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SupplierPurchase"
    ADD CONSTRAINT "SupplierPurchase_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: SalesInfoDetail_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "SalesInfoDetail_id_key" ON public."SalesInfoDetail" USING btree (id);


--
-- Name: SalesInfoDetail_salesInfoId_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SalesInfoDetail_salesInfoId_idx" ON public."SalesInfoDetail" USING btree ("salesInfoId");


--
-- Name: SalesInfo_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "SalesInfo_id_key" ON public."SalesInfo" USING btree (id);


--
-- Name: SupplierPurchaseDetail_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "SupplierPurchaseDetail_id_key" ON public."SupplierPurchaseDetail" USING btree (id);


--
-- Name: SupplierPurchaseDetail_supplierPurchaseId_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SupplierPurchaseDetail_supplierPurchaseId_idx" ON public."SupplierPurchaseDetail" USING btree ("supplierPurchaseId");


--
-- Name: SupplierPurchase_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "SupplierPurchase_id_key" ON public."SupplierPurchase" USING btree (id);


--
-- Name: User_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_id_key" ON public."User" USING btree (id);


--
-- Name: SalesInfoDetail SalesInfoDetail_salesInfoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalesInfoDetail"
    ADD CONSTRAINT "SalesInfoDetail_salesInfoId_fkey" FOREIGN KEY ("salesInfoId") REFERENCES public."SalesInfo"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SupplierPurchaseDetail SupplierPurchaseDetail_supplierPurchaseId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SupplierPurchaseDetail"
    ADD CONSTRAINT "SupplierPurchaseDetail_supplierPurchaseId_fkey" FOREIGN KEY ("supplierPurchaseId") REFERENCES public."SupplierPurchase"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

