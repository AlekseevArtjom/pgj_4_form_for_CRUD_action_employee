PGDMP         .                |            test1    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    283147    test1    DATABASE     �   CREATE DATABASE test1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251' TABLESPACE = test_laravel;
    DROP DATABASE test1;
                test1    false                        2615    283148    employee    SCHEMA        CREATE SCHEMA employee;
    DROP SCHEMA employee;
                test1    false            �            1259    283150 
   main_table    TABLE     �   CREATE TABLE employee.main_table (
    id bigint NOT NULL,
    family_name character varying(150),
    name character varying(150),
    second_name character varying(150),
    birth_date date,
    sex character varying(10)
);
     DROP TABLE employee.main_table;
       employee         heap    test1    false    6            �            1259    283149    main_table_id_seq    SEQUENCE     |   CREATE SEQUENCE employee.main_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE employee.main_table_id_seq;
       employee          test1    false    216    6            
           0    0    main_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE employee.main_table_id_seq OWNED BY employee.main_table.id;
          employee          test1    false    215            �            1259    283162    old_work_places    TABLE     �   CREATE TABLE employee.old_work_places (
    id bigint NOT NULL,
    work_start date,
    work_end date,
    company_name character varying(150),
    emp_id bigint
);
 %   DROP TABLE employee.old_work_places;
       employee         heap    test1    false    6            �            1259    283161    old_work_places_id_seq    SEQUENCE     �   CREATE SEQUENCE employee.old_work_places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE employee.old_work_places_id_seq;
       employee          test1    false    6    218                       0    0    old_work_places_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE employee.old_work_places_id_seq OWNED BY employee.old_work_places.id;
          employee          test1    false    217            k           2604    283153    main_table id    DEFAULT     r   ALTER TABLE ONLY employee.main_table ALTER COLUMN id SET DEFAULT nextval('employee.main_table_id_seq'::regclass);
 >   ALTER TABLE employee.main_table ALTER COLUMN id DROP DEFAULT;
       employee          test1    false    216    215    216            l           2604    283165    old_work_places id    DEFAULT     |   ALTER TABLE ONLY employee.old_work_places ALTER COLUMN id SET DEFAULT nextval('employee.old_work_places_id_seq'::regclass);
 C   ALTER TABLE employee.old_work_places ALTER COLUMN id DROP DEFAULT;
       employee          test1    false    218    217    218                      0    283150 
   main_table 
   TABLE DATA           [   COPY employee.main_table (id, family_name, name, second_name, birth_date, sex) FROM stdin;
    employee          test1    false    216   �                 0    283162    old_work_places 
   TABLE DATA           [   COPY employee.old_work_places (id, work_start, work_end, company_name, emp_id) FROM stdin;
    employee          test1    false    218   i                  0    0    main_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('employee.main_table_id_seq', 98, true);
          employee          test1    false    215                       0    0    old_work_places_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('employee.old_work_places_id_seq', 46, true);
          employee          test1    false    217            n           2606    283155    main_table main_table_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY employee.main_table
    ADD CONSTRAINT main_table_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY employee.main_table DROP CONSTRAINT main_table_pkey;
       employee            test1    false    216            p           2606    283167 $   old_work_places old_work_places_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY employee.old_work_places
    ADD CONSTRAINT old_work_places_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY employee.old_work_places DROP CONSTRAINT old_work_places_pkey;
       employee            test1    false    218            q           2606    283173 )   old_work_places fk_old_work_plases_emp_id    FK CONSTRAINT     �   ALTER TABLE ONLY employee.old_work_places
    ADD CONSTRAINT fk_old_work_plases_emp_id FOREIGN KEY (emp_id) REFERENCES employee.main_table(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY employee.old_work_places DROP CONSTRAINT fk_old_work_plases_emp_id;
       employee          test1    false    216    218    3182               d  x�m��J�@��'�2�����]���F�&�ł���j�� �� Ui��W8y#�3Io"I&s���%���MʻML�)i��ʍ�ې='�������zy+�,OjE���^��.�!�����^���DvyZސ�}`�2>��i�� ���tb��X��ã��F�P�`W������qy�`0���1����d\�F��_�FP��Ҋ`����o�+�ױ�ҁ��Cu���*�����0��%�`�xF4U���� �!J4�Y�B�A�)YI�dہGX�c�ݶCu1#�ж�����:���&+[�5�ZOpMG�ӋN���8��ڝ~v�"W�K�ڈ���q�_��G�         �   x�m���0���,`;i~�`�^g~p�� ��2/�-�����|y�9!��⊸nYކ+�Ę�� Ȝ�4ю��e6�"C��,�b�FQ�`�Q�('q^܊��&7&�~K|b2�`������Z�!a�,N�:�Q}�w�S6���c%X��>�담��B��������.�X�3�YL�e�[5N�     