PGDMP         !                z            postgres    9.6.5    14.1     e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            h           1262    12401    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            i           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2152                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            j           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            ?            1259    16743    cities    TABLE     o   CREATE TABLE public.cities (
    id bigint NOT NULL,
    country_id bigint,
    name character varying(200)
);
    DROP TABLE public.cities;
       public            postgres    false    4            ?            1259    16765 
   cities_seq    SEQUENCE     s   CREATE SEQUENCE public.cities_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.cities_seq;
       public          postgres    false    4            ?            1259    16738 	   countries    TABLE     [   CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying(200)
);
    DROP TABLE public.countries;
       public            postgres    false    4            ?            1259    16763    countries_seq    SEQUENCE     v   CREATE SEQUENCE public.countries_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.countries_seq;
       public          postgres    false    4            ?            1259    16712 	   employees    TABLE     $  CREATE TABLE public.employees (
    id bigint NOT NULL,
    lastname character varying(200),
    firstname character varying(200),
    middlename character varying(200),
    email character varying(200),
    country_id integer,
    city_id integer,
    phone_number character varying(200)
);
    DROP TABLE public.employees;
       public            postgres    false    4            ?            1259    16720    employees_seq    SEQUENCE     v   CREATE SEQUENCE public.employees_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.employees_seq;
       public          postgres    false    4            `          0    16743    cities 
   TABLE DATA           6   COPY public.cities (id, country_id, name) FROM stdin;
    public          postgres    false    189   ?       _          0    16738 	   countries 
   TABLE DATA           -   COPY public.countries (id, name) FROM stdin;
    public          postgres    false    188   9       ]          0    16712 	   employees 
   TABLE DATA           r   COPY public.employees (id, lastname, firstname, middlename, email, country_id, city_id, phone_number) FROM stdin;
    public          postgres    false    186   ?       k           0    0 
   cities_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.cities_seq', 5, true);
          public          postgres    false    191            l           0    0    countries_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.countries_seq', 4, true);
          public          postgres    false    190            m           0    0    employees_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.employees_seq', 3, true);
          public          postgres    false    187            ?           2606    16747    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    189            ?           2606    16742    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    188            ?           2606    16723    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    186            ?           2606    16748    cities cities_country_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;
 G   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_country_id_fkey;
       public          postgres    false    189    2018    188            ?           2606    16758     employees employees_city_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_city_id_fkey;
       public          postgres    false    186    189    2020            ?           2606    16753 #   employees employees_country_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;
 M   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_country_id_fkey;
       public          postgres    false    186    2018    188            `   `   x?-˻	?0F???]?p?	??B'H
A??3?	X??"E8j7??Y<
??2^???!M?Z,H?Qĳ%C????x"ۧ?2?C?yd??C4?      _   P   x?3??4??/l?4?b??& {/???@???^?4???}???????ÅM8/,???bÅ]v\??????? ?/2?      ]   n   x?3??0???[.츰??@z??6 ??ɽ??]l??????/vy?/vs&&?df'e??e9??&f??%??ra??1?5770757??43?????? Φb?     