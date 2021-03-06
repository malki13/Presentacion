PGDMP     3    .                y            Presentacion    10.15 (Debian 10.15-1.pgdg90+1)    11.2 n   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    187352    Presentacion    DATABASE     ~   CREATE DATABASE "Presentacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE "Presentacion";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            ?            1259    187361    base_cache_signaling    SEQUENCE     }   CREATE SEQUENCE public.base_cache_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_cache_signaling;
       public       postgres    false    3            ?            1259    187564    base_registry_signaling    SEQUENCE     ?   CREATE SEQUENCE public.base_registry_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.base_registry_signaling;
       public       postgres    false    3            ?            1259    187574    bus_bus    TABLE     ?   CREATE TABLE public.bus_bus (
    id integer NOT NULL,
    channel character varying,
    message character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
    DROP TABLE public.bus_bus;
       public         postgres    false    3            ?           0    0    TABLE bus_bus    COMMENT     8   COMMENT ON TABLE public.bus_bus IS 'Communication Bus';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.channel    COMMENT     7   COMMENT ON COLUMN public.bus_bus.channel IS 'Channel';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.message    COMMENT     7   COMMENT ON COLUMN public.bus_bus.message IS 'Message';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.create_uid    COMMENT     =   COMMENT ON COLUMN public.bus_bus.create_uid IS 'Created by';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.create_date    COMMENT     >   COMMENT ON COLUMN public.bus_bus.create_date IS 'Created on';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.write_uid    COMMENT     A   COMMENT ON COLUMN public.bus_bus.write_uid IS 'Last Updated by';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.write_date    COMMENT     B   COMMENT ON COLUMN public.bus_bus.write_date IS 'Last Updated on';
            public       postgres    false    198            ?            1259    187580    bus_bus_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bus_bus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bus_bus_id_seq;
       public       postgres    false    198    3            ?           0    0    bus_bus_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bus_bus_id_seq OWNED BY public.bus_bus.id;
            public       postgres    false    199            ?            1259    187582    bus_presence    TABLE     ?   CREATE TABLE public.bus_presence (
    id integer NOT NULL,
    user_id integer NOT NULL,
    last_poll timestamp without time zone,
    last_presence timestamp without time zone,
    status character varying
);
     DROP TABLE public.bus_presence;
       public         postgres    false    3            ?           0    0    TABLE bus_presence    COMMENT     9   COMMENT ON TABLE public.bus_presence IS 'User Presence';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.user_id    COMMENT     :   COMMENT ON COLUMN public.bus_presence.user_id IS 'Users';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.last_poll    COMMENT     @   COMMENT ON COLUMN public.bus_presence.last_poll IS 'Last Poll';
            public       postgres    false    200            ?           0    0 !   COLUMN bus_presence.last_presence    COMMENT     H   COMMENT ON COLUMN public.bus_presence.last_presence IS 'Last Presence';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.status    COMMENT     =   COMMENT ON COLUMN public.bus_presence.status IS 'IM Status';
            public       postgres    false    200            ?            1259    187588    bus_presence_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bus_presence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.bus_presence_id_seq;
       public       postgres    false    200    3            ?           0    0    bus_presence_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.bus_presence_id_seq OWNED BY public.bus_presence.id;
            public       postgres    false    201            ?            1259    187625    fac_detalle    TABLE     w  CREATE TABLE public.fac_detalle (
    id integer NOT NULL,
    currency_id integer,
    factura_id integer,
    requerimiento_id integer,
    cantidad integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    usuario_id integer,
    valor_unitario numeric,
    valor_total numeric
);
    DROP TABLE public.fac_detalle;
       public         postgres    false    3            ?           0    0    TABLE fac_detalle    COMMENT     J   COMMENT ON TABLE public.fac_detalle IS 'Transporte -  Factura - Detalle';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.currency_id    COMMENT     @   COMMENT ON COLUMN public.fac_detalle.currency_id IS 'Currency';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.factura_id    COMMENT     >   COMMENT ON COLUMN public.fac_detalle.factura_id IS 'Factura';
            public       postgres    false    202            ?           0    0 #   COLUMN fac_detalle.requerimiento_id    COMMENT     J   COMMENT ON COLUMN public.fac_detalle.requerimiento_id IS 'Requerimiento';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.cantidad    COMMENT     B   COMMENT ON COLUMN public.fac_detalle.cantidad IS 'Num. Asientos';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.create_uid    COMMENT     A   COMMENT ON COLUMN public.fac_detalle.create_uid IS 'Created by';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.create_date    COMMENT     B   COMMENT ON COLUMN public.fac_detalle.create_date IS 'Created on';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.write_uid    COMMENT     E   COMMENT ON COLUMN public.fac_detalle.write_uid IS 'Last Updated by';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.write_date    COMMENT     F   COMMENT ON COLUMN public.fac_detalle.write_date IS 'Last Updated on';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.usuario_id    COMMENT     >   COMMENT ON COLUMN public.fac_detalle.usuario_id IS 'Usuario';
            public       postgres    false    202            ?           0    0 !   COLUMN fac_detalle.valor_unitario    COMMENT     F   COMMENT ON COLUMN public.fac_detalle.valor_unitario IS 'V. Unitario';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.valor_total    COMMENT     ?   COMMENT ON COLUMN public.fac_detalle.valor_total IS 'V Total';
            public       postgres    false    202            ?            1259    187631    fac_detalle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_detalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fac_detalle_id_seq;
       public       postgres    false    3    202            ?           0    0    fac_detalle_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fac_detalle_id_seq OWNED BY public.fac_detalle.id;
            public       postgres    false    203            ?            1259    187633    fac_factura    TABLE     ?  CREATE TABLE public.fac_factura (
    id integer NOT NULL,
    currency_id integer,
    codigo character varying,
    tipo_pago_id integer,
    autorizacion_sri character varying,
    fecha date,
    subtotal0 numeric,
    descuento numeric,
    comision numeric,
    ruc character varying,
    direccion character varying,
    telefono character varying,
    aumento numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    subtotal12 numeric,
    iva12 numeric,
    subtotal numeric,
    usuario_id integer,
    state character varying,
    email character varying,
    cliente character varying(100),
    proveedor_id integer,
    anotaciones text,
    total real
);
    DROP TABLE public.fac_factura;
       public         postgres    false    3            ?           0    0    TABLE fac_factura    COMMENT     ?   COMMENT ON TABLE public.fac_factura IS 'Transporte - Factura';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.currency_id    COMMENT     @   COMMENT ON COLUMN public.fac_factura.currency_id IS 'Currency';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.codigo    COMMENT     :   COMMENT ON COLUMN public.fac_factura.codigo IS 'Código';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.tipo_pago_id    COMMENT     E   COMMENT ON COLUMN public.fac_factura.tipo_pago_id IS 'Tipo de Pago';
            public       postgres    false    204            ?           0    0 #   COLUMN fac_factura.autorizacion_sri    COMMENT     N   COMMENT ON COLUMN public.fac_factura.autorizacion_sri IS 'Autorización SRI';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.fecha    COMMENT     7   COMMENT ON COLUMN public.fac_factura.fecha IS 'Fecha';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal0    COMMENT     @   COMMENT ON COLUMN public.fac_factura.subtotal0 IS 'Subtotal 0';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.descuento    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.descuento IS 'Descuento';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.comision    COMMENT     >   COMMENT ON COLUMN public.fac_factura.comision IS 'Comisión';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.ruc    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.ruc IS 'Ruc / Pasaporte';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.direccion    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.direccion IS 'Direccion';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.telefono    COMMENT     =   COMMENT ON COLUMN public.fac_factura.telefono IS 'Telefono';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.aumento    COMMENT     C   COMMENT ON COLUMN public.fac_factura.aumento IS 'Costo adicional';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.create_uid    COMMENT     A   COMMENT ON COLUMN public.fac_factura.create_uid IS 'Created by';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.create_date    COMMENT     B   COMMENT ON COLUMN public.fac_factura.create_date IS 'Created on';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.write_uid    COMMENT     E   COMMENT ON COLUMN public.fac_factura.write_uid IS 'Last Updated by';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.write_date    COMMENT     F   COMMENT ON COLUMN public.fac_factura.write_date IS 'Last Updated on';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal12    COMMENT     B   COMMENT ON COLUMN public.fac_factura.subtotal12 IS 'Subtotal 12';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.iva12    COMMENT     8   COMMENT ON COLUMN public.fac_factura.iva12 IS 'IVA 12';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal    COMMENT     =   COMMENT ON COLUMN public.fac_factura.subtotal IS 'SUBTOTAL';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.usuario_id    COMMENT     >   COMMENT ON COLUMN public.fac_factura.usuario_id IS 'Cliente';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.state    COMMENT     8   COMMENT ON COLUMN public.fac_factura.state IS 'Estado';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.email    COMMENT     7   COMMENT ON COLUMN public.fac_factura.email IS 'Email';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.cliente    COMMENT     ;   COMMENT ON COLUMN public.fac_factura.cliente IS 'Cliente';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.proveedor_id    COMMENT     B   COMMENT ON COLUMN public.fac_factura.proveedor_id IS 'Proveedor';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.anotaciones    COMMENT     C   COMMENT ON COLUMN public.fac_factura.anotaciones IS 'Anotaciones';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.total    COMMENT     7   COMMENT ON COLUMN public.fac_factura.total IS 'Total';
            public       postgres    false    204            ?            1259    187639    fac_factura_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fac_factura_id_seq;
       public       postgres    false    3    204            ?           0    0    fac_factura_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fac_factura_id_seq OWNED BY public.fac_factura.id;
            public       postgres    false    205            ?            1259    187641    fac_requerimiento    TABLE     M  CREATE TABLE public.fac_requerimiento (
    id integer NOT NULL,
    currency_id integer,
    tipo_servicio_id integer,
    descripcion character varying,
    fecha date,
    recoger_casa boolean,
    compartido boolean,
    ruta_id integer,
    paquete_id integer,
    usuario_id integer,
    lat_origen numeric,
    lon_origen numeric,
    lat_destino numeric,
    lon_destino numeric,
    state character varying,
    usuario_destino_id integer,
    vehiculo_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora double precision,
    direccion_casa_moved0 boolean,
    direccion_destino character varying,
    valor numeric,
    numero integer,
    dejar_casa boolean,
    direccion_origen character varying(100),
    iva boolean,
    padre_id integer,
    turismo_id integer,
    hotel_id integer,
    codigo character varying,
    lugar_origen_id integer,
    lugar_destino_id integer,
    proveedor_id integer,
    nombre_cliente character varying,
    apellido_cliente character varying
);
 %   DROP TABLE public.fac_requerimiento;
       public         postgres    false    3            ?           0    0    TABLE fac_requerimiento    COMMENT     H   COMMENT ON TABLE public.fac_requerimiento IS 'Factura - Requerimiento';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.currency_id    COMMENT     F   COMMENT ON COLUMN public.fac_requerimiento.currency_id IS 'Currency';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.tipo_servicio_id    COMMENT     S   COMMENT ON COLUMN public.fac_requerimiento.tipo_servicio_id IS 'Tipo de servicio';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.descripcion    COMMENT     J   COMMENT ON COLUMN public.fac_requerimiento.descripcion IS 'Descripción';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.fecha    COMMENT     =   COMMENT ON COLUMN public.fac_requerimiento.fecha IS 'Fecha';
            public       postgres    false    206            ?           0    0 %   COLUMN fac_requerimiento.recoger_casa    COMMENT     Q   COMMENT ON COLUMN public.fac_requerimiento.recoger_casa IS 'Recoger desde casa';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.compartido    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.compartido IS 'Compartido';
            public       postgres    false    206            ?           0    0     COLUMN fac_requerimiento.ruta_id    COMMENT     >   COMMENT ON COLUMN public.fac_requerimiento.ruta_id IS 'Ruta';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.paquete_id    COMMENT     D   COMMENT ON COLUMN public.fac_requerimiento.paquete_id IS 'Paquete';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.usuario_id    COMMENT     D   COMMENT ON COLUMN public.fac_requerimiento.usuario_id IS 'Cliente';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.lat_origen    COMMENT     K   COMMENT ON COLUMN public.fac_requerimiento.lat_origen IS 'Latitud Origen';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.lon_origen    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.lon_origen IS 'Longitud Origen';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.lat_destino    COMMENT     M   COMMENT ON COLUMN public.fac_requerimiento.lat_destino IS 'Latitud Destino';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.lon_destino    COMMENT     N   COMMENT ON COLUMN public.fac_requerimiento.lon_destino IS 'Longitud Destino';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.state    COMMENT     >   COMMENT ON COLUMN public.fac_requerimiento.state IS 'Estado';
            public       postgres    false    206            ?           0    0 +   COLUMN fac_requerimiento.usuario_destino_id    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.usuario_destino_id IS 'Destino';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.vehiculo_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.vehiculo_id IS 'Transporte';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.create_uid    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.create_uid IS 'Created by';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.create_date    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.create_date IS 'Created on';
            public       postgres    false    206            ?           0    0 "   COLUMN fac_requerimiento.write_uid    COMMENT     K   COMMENT ON COLUMN public.fac_requerimiento.write_uid IS 'Last Updated by';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.write_date    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.write_date IS 'Last Updated on';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.hora    COMMENT     ;   COMMENT ON COLUMN public.fac_requerimiento.hora IS 'Hora';
            public       postgres    false    206            ?           0    0 .   COLUMN fac_requerimiento.direccion_casa_moved0    COMMENT     Z   COMMENT ON COLUMN public.fac_requerimiento.direccion_casa_moved0 IS 'Recoger desde casa';
            public       postgres    false    206            ?           0    0 *   COLUMN fac_requerimiento.direccion_destino    COMMENT     V   COMMENT ON COLUMN public.fac_requerimiento.direccion_destino IS 'Dirección Destino';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.valor    COMMENT     =   COMMENT ON COLUMN public.fac_requerimiento.valor IS 'Valor';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.numero    COMMENT     Q   COMMENT ON COLUMN public.fac_requerimiento.numero IS 'Numero Asientos/Paquetes';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.dejar_casa    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.dejar_casa IS 'Dejar casa';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.direccion_origen    COMMENT     T   COMMENT ON COLUMN public.fac_requerimiento.direccion_origen IS 'Dirección origen';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.iva    COMMENT     9   COMMENT ON COLUMN public.fac_requerimiento.iva IS 'Iva';
            public       postgres    false    206            ?           0    0 !   COLUMN fac_requerimiento.padre_id    COMMENT     N   COMMENT ON COLUMN public.fac_requerimiento.padre_id IS 'Requerimiento Padre';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.turismo_id    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.turismo_id IS 'Turismo paquete';
            public       postgres    false    206            ?           0    0 !   COLUMN fac_requerimiento.hotel_id    COMMENT     @   COMMENT ON COLUMN public.fac_requerimiento.hotel_id IS 'Hotel';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.codigo    COMMENT     @   COMMENT ON COLUMN public.fac_requerimiento.codigo IS 'Código';
            public       postgres    false    206            ?           0    0 (   COLUMN fac_requerimiento.lugar_origen_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.lugar_origen_id IS 'Origen';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.lugar_destino_id    COMMENT     J   COMMENT ON COLUMN public.fac_requerimiento.lugar_destino_id IS 'Destino';
            public       postgres    false    206            ?           0    0 %   COLUMN fac_requerimiento.proveedor_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.proveedor_id IS 'Proveedor';
            public       postgres    false    206            ?           0    0 '   COLUMN fac_requerimiento.nombre_cliente    COMMENT     R   COMMENT ON COLUMN public.fac_requerimiento.nombre_cliente IS 'Nombre de Cliente';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.apellido_cliente    COMMENT     V   COMMENT ON COLUMN public.fac_requerimiento.apellido_cliente IS 'Apellido de Cliente';
            public       postgres    false    206            ?            1259    187647    fac_requerimiento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_requerimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.fac_requerimiento_id_seq;
       public       postgres    false    3    206                        0    0    fac_requerimiento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.fac_requerimiento_id_seq OWNED BY public.fac_requerimiento.id;
            public       postgres    false    207            ?            1259    187649    fac_tipopago    TABLE     2  CREATE TABLE public.fac_tipopago (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    estado boolean,
    aumento numeric,
    descuento numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
     DROP TABLE public.fac_tipopago;
       public         postgres    false    3                       0    0    TABLE fac_tipopago    COMMENT     B   COMMENT ON TABLE public.fac_tipopago IS 'Transporte - Tipo Pago';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.descripcion    COMMENT     E   COMMENT ON COLUMN public.fac_tipopago.descripcion IS 'Descripción';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.estado    COMMENT     :   COMMENT ON COLUMN public.fac_tipopago.estado IS 'Estado';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.aumento    COMMENT     >   COMMENT ON COLUMN public.fac_tipopago.aumento IS 'Aumento %';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.descuento    COMMENT     B   COMMENT ON COLUMN public.fac_tipopago.descuento IS 'Descuento %';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.create_uid    COMMENT     B   COMMENT ON COLUMN public.fac_tipopago.create_uid IS 'Created by';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.create_date    COMMENT     C   COMMENT ON COLUMN public.fac_tipopago.create_date IS 'Created on';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.write_uid    COMMENT     F   COMMENT ON COLUMN public.fac_tipopago.write_uid IS 'Last Updated by';
            public       postgres    false    208            	           0    0    COLUMN fac_tipopago.write_date    COMMENT     G   COMMENT ON COLUMN public.fac_tipopago.write_date IS 'Last Updated on';
            public       postgres    false    208            ?            1259    187655    fac_tipopago_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_tipopago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fac_tipopago_id_seq;
       public       postgres    false    208    3            
           0    0    fac_tipopago_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fac_tipopago_id_seq OWNED BY public.fac_tipopago.id;
            public       postgres    false    209            ?            1259    188065    lug_conexion    TABLE     ?  CREATE TABLE public.lug_conexion (
    id integer NOT NULL,
    lugar_origen_id integer NOT NULL,
    lugar_destino_id integer NOT NULL,
    duracion_viaje double precision,
    duracion_entrega double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    padre_id integer
);
     DROP TABLE public.lug_conexion;
       public         postgres    false    3                       0    0    TABLE lug_conexion    COMMENT     B   COMMENT ON TABLE public.lug_conexion IS 'Transporte -  Conexion';
            public       postgres    false    210                       0    0 #   COLUMN lug_conexion.lugar_origen_id    COMMENT     I   COMMENT ON COLUMN public.lug_conexion.lugar_origen_id IS 'Lugar Origen';
            public       postgres    false    210                       0    0 $   COLUMN lug_conexion.lugar_destino_id    COMMENT     K   COMMENT ON COLUMN public.lug_conexion.lugar_destino_id IS 'Lugar Destino';
            public       postgres    false    210                       0    0 "   COLUMN lug_conexion.duracion_viaje    COMMENT     S   COMMENT ON COLUMN public.lug_conexion.duracion_viaje IS 'Duración viaje (horas)';
            public       postgres    false    210                       0    0 $   COLUMN lug_conexion.duracion_entrega    COMMENT     W   COMMENT ON COLUMN public.lug_conexion.duracion_entrega IS 'Duración entrega (horas)';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.estado    COMMENT     :   COMMENT ON COLUMN public.lug_conexion.estado IS 'Estado';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.create_uid    COMMENT     B   COMMENT ON COLUMN public.lug_conexion.create_uid IS 'Created by';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.create_date    COMMENT     C   COMMENT ON COLUMN public.lug_conexion.create_date IS 'Created on';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.write_uid    COMMENT     F   COMMENT ON COLUMN public.lug_conexion.write_uid IS 'Last Updated by';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.write_date    COMMENT     G   COMMENT ON COLUMN public.lug_conexion.write_date IS 'Last Updated on';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.currency_id    COMMENT     A   COMMENT ON COLUMN public.lug_conexion.currency_id IS 'Currency';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.padre_id    COMMENT     E   COMMENT ON COLUMN public.lug_conexion.padre_id IS 'Conexión Padre';
            public       postgres    false    210            ?            1259    188068    lug_conexion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_conexion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.lug_conexion_id_seq;
       public       postgres    false    3    210                       0    0    lug_conexion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.lug_conexion_id_seq OWNED BY public.lug_conexion.id;
            public       postgres    false    211            ?            1259    188070 	   lug_lugar    TABLE     ?  CREATE TABLE public.lug_lugar (
    id integer NOT NULL,
    tipo_lugar_id integer NOT NULL,
    codigo character varying NOT NULL,
    nombre character varying NOT NULL,
    busqueda boolean,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    padre_id integer,
    valor_recoger numeric,
    valor_dejar numeric
);
    DROP TABLE public.lug_lugar;
       public         postgres    false    3                       0    0    TABLE lug_lugar    COMMENT     ;   COMMENT ON TABLE public.lug_lugar IS 'Transporte - Lugar';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.tipo_lugar_id    COMMENT     E   COMMENT ON COLUMN public.lug_lugar.tipo_lugar_id IS 'Tipo de Lugar';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.codigo    COMMENT     8   COMMENT ON COLUMN public.lug_lugar.codigo IS 'Código';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.nombre    COMMENT     7   COMMENT ON COLUMN public.lug_lugar.nombre IS 'Nombre';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.busqueda    COMMENT     ;   COMMENT ON COLUMN public.lug_lugar.busqueda IS 'Busqueda';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.estado    COMMENT     7   COMMENT ON COLUMN public.lug_lugar.estado IS 'Estado';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.create_uid    COMMENT     ?   COMMENT ON COLUMN public.lug_lugar.create_uid IS 'Created by';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.create_date    COMMENT     @   COMMENT ON COLUMN public.lug_lugar.create_date IS 'Created on';
            public       postgres    false    212                        0    0    COLUMN lug_lugar.write_uid    COMMENT     C   COMMENT ON COLUMN public.lug_lugar.write_uid IS 'Last Updated by';
            public       postgres    false    212            !           0    0    COLUMN lug_lugar.write_date    COMMENT     D   COMMENT ON COLUMN public.lug_lugar.write_date IS 'Last Updated on';
            public       postgres    false    212            "           0    0    COLUMN lug_lugar.currency_id    COMMENT     >   COMMENT ON COLUMN public.lug_lugar.currency_id IS 'Currency';
            public       postgres    false    212            #           0    0    COLUMN lug_lugar.padre_id    COMMENT     >   COMMENT ON COLUMN public.lug_lugar.padre_id IS 'Lugar Padre';
            public       postgres    false    212            $           0    0    COLUMN lug_lugar.valor_recoger    COMMENT     E   COMMENT ON COLUMN public.lug_lugar.valor_recoger IS 'Valor recoger';
            public       postgres    false    212            %           0    0    COLUMN lug_lugar.valor_dejar    COMMENT     A   COMMENT ON COLUMN public.lug_lugar.valor_dejar IS 'Valor dejar';
            public       postgres    false    212            ?            1259    188076    lug_lugar_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_lugar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lug_lugar_id_seq;
       public       postgres    false    3    212            &           0    0    lug_lugar_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lug_lugar_id_seq OWNED BY public.lug_lugar.id;
            public       postgres    false    213            ?            1259    188078    lug_tipolugar    TABLE     ?   CREATE TABLE public.lug_tipolugar (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 !   DROP TABLE public.lug_tipolugar;
       public         postgres    false    3            '           0    0    TABLE lug_tipolugar    COMMENT     C   COMMENT ON TABLE public.lug_tipolugar IS 'Transporte - TipoLugar';
            public       postgres    false    214            (           0    0     COLUMN lug_tipolugar.descripcion    COMMENT     F   COMMENT ON COLUMN public.lug_tipolugar.descripcion IS 'Descripción';
            public       postgres    false    214            )           0    0    COLUMN lug_tipolugar.create_uid    COMMENT     C   COMMENT ON COLUMN public.lug_tipolugar.create_uid IS 'Created by';
            public       postgres    false    214            *           0    0     COLUMN lug_tipolugar.create_date    COMMENT     D   COMMENT ON COLUMN public.lug_tipolugar.create_date IS 'Created on';
            public       postgres    false    214            +           0    0    COLUMN lug_tipolugar.write_uid    COMMENT     G   COMMENT ON COLUMN public.lug_tipolugar.write_uid IS 'Last Updated by';
            public       postgres    false    214            ,           0    0    COLUMN lug_tipolugar.write_date    COMMENT     H   COMMENT ON COLUMN public.lug_tipolugar.write_date IS 'Last Updated on';
            public       postgres    false    214            ?            1259    188084    lug_tipolugar_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_tipolugar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lug_tipolugar_id_seq;
       public       postgres    false    214    3            -           0    0    lug_tipolugar_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.lug_tipolugar_id_seq OWNED BY public.lug_tipolugar.id;
            public       postgres    false    215            ?            1259    188628 	   res_users    TABLE     ?  CREATE TABLE public.res_users (
    id integer NOT NULL,
    active boolean DEFAULT true,
    login character varying NOT NULL,
    password character varying,
    company_id integer NOT NULL,
    partner_id integer NOT NULL,
    create_date timestamp without time zone,
    signature text,
    action_id integer,
    share boolean,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone,
    alias_id integer,
    notification_type character varying NOT NULL,
    out_of_office_message character varying,
    odoobot_state character varying NOT NULL,
    website_id integer,
    oauth_provider_id integer,
    oauth_uid character varying,
    oauth_access_token character varying,
    livechat_username character varying
);
    DROP TABLE public.res_users;
       public         postgres    false    3            .           0    0    COLUMN res_users.signature    COMMENT     C   COMMENT ON COLUMN public.res_users.signature IS 'Email Signature';
            public       postgres    false    216            /           0    0    COLUMN res_users.action_id    COMMENT     ?   COMMENT ON COLUMN public.res_users.action_id IS 'Home Action';
            public       postgres    false    216            0           0    0    COLUMN res_users.share    COMMENT     :   COMMENT ON COLUMN public.res_users.share IS 'Share User';
            public       postgres    false    216            1           0    0    COLUMN res_users.create_uid    COMMENT     ?   COMMENT ON COLUMN public.res_users.create_uid IS 'Created by';
            public       postgres    false    216            2           0    0    COLUMN res_users.write_uid    COMMENT     C   COMMENT ON COLUMN public.res_users.write_uid IS 'Last Updated by';
            public       postgres    false    216            3           0    0    COLUMN res_users.write_date    COMMENT     D   COMMENT ON COLUMN public.res_users.write_date IS 'Last Updated on';
            public       postgres    false    216            4           0    0    COLUMN res_users.alias_id    COMMENT     8   COMMENT ON COLUMN public.res_users.alias_id IS 'Alias';
            public       postgres    false    216            5           0    0 "   COLUMN res_users.notification_type    COMMENT     H   COMMENT ON COLUMN public.res_users.notification_type IS 'Notification';
            public       postgres    false    216            6           0    0 &   COLUMN res_users.out_of_office_message    COMMENT     K   COMMENT ON COLUMN public.res_users.out_of_office_message IS 'Chat Status';
            public       postgres    false    216            7           0    0    COLUMN res_users.odoobot_state    COMMENT     F   COMMENT ON COLUMN public.res_users.odoobot_state IS 'OdooBot Status';
            public       postgres    false    216            8           0    0    COLUMN res_users.website_id    COMMENT     <   COMMENT ON COLUMN public.res_users.website_id IS 'Website';
            public       postgres    false    216            9           0    0 "   COLUMN res_users.oauth_provider_id    COMMENT     J   COMMENT ON COLUMN public.res_users.oauth_provider_id IS 'OAuth Provider';
            public       postgres    false    216            :           0    0    COLUMN res_users.oauth_uid    COMMENT     A   COMMENT ON COLUMN public.res_users.oauth_uid IS 'OAuth User ID';
            public       postgres    false    216            ;           0    0 #   COLUMN res_users.oauth_access_token    COMMENT     O   COMMENT ON COLUMN public.res_users.oauth_access_token IS 'OAuth Access Token';
            public       postgres    false    216            <           0    0 "   COLUMN res_users.livechat_username    COMMENT     M   COMMENT ON COLUMN public.res_users.livechat_username IS 'Livechat Username';
            public       postgres    false    216            ?            1259    188635    res_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.res_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.res_users_id_seq;
       public       postgres    false    3    216            =           0    0    res_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.res_users_id_seq OWNED BY public.res_users.id;
            public       postgres    false    217            ?            1259    188653 	   ser_hotel    TABLE     ?  CREATE TABLE public.ser_hotel (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    descripcion character varying NOT NULL,
    valor numeric NOT NULL,
    discapacidad double precision,
    iva boolean,
    estado boolean,
    prioridad character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    url character varying,
    indicaciones text
);
    DROP TABLE public.ser_hotel;
       public         postgres    false    3            >           0    0    TABLE ser_hotel    COMMENT     9   COMMENT ON TABLE public.ser_hotel IS 'Servicio - Hotel';
            public       postgres    false    218            ?           0    0    COLUMN ser_hotel.currency_id    COMMENT     >   COMMENT ON COLUMN public.ser_hotel.currency_id IS 'Currency';
            public       postgres    false    218            @           0    0    COLUMN ser_hotel.usuario_id    COMMENT     >   COMMENT ON COLUMN public.ser_hotel.usuario_id IS 'Proveedor';
            public       postgres    false    218            A           0    0    COLUMN ser_hotel.lugar_id    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.lugar_id IS 'Lugar';
            public       postgres    false    218            B           0    0    COLUMN ser_hotel.descripcion    COMMENT     B   COMMENT ON COLUMN public.ser_hotel.descripcion IS 'Descripción';
            public       postgres    false    218            C           0    0    COLUMN ser_hotel.valor    COMMENT     5   COMMENT ON COLUMN public.ser_hotel.valor IS 'Valor';
            public       postgres    false    218            D           0    0    COLUMN ser_hotel.discapacidad    COMMENT     O   COMMENT ON COLUMN public.ser_hotel.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    218            E           0    0    COLUMN ser_hotel.iva    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.iva IS 'Aplica iva';
            public       postgres    false    218            F           0    0    COLUMN ser_hotel.estado    COMMENT     7   COMMENT ON COLUMN public.ser_hotel.estado IS 'Estado';
            public       postgres    false    218            G           0    0    COLUMN ser_hotel.prioridad    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.prioridad IS 'Tipo';
            public       postgres    false    218            H           0    0    COLUMN ser_hotel.create_uid    COMMENT     ?   COMMENT ON COLUMN public.ser_hotel.create_uid IS 'Created by';
            public       postgres    false    218            I           0    0    COLUMN ser_hotel.create_date    COMMENT     @   COMMENT ON COLUMN public.ser_hotel.create_date IS 'Created on';
            public       postgres    false    218            J           0    0    COLUMN ser_hotel.write_uid    COMMENT     C   COMMENT ON COLUMN public.ser_hotel.write_uid IS 'Last Updated by';
            public       postgres    false    218            K           0    0    COLUMN ser_hotel.write_date    COMMENT     D   COMMENT ON COLUMN public.ser_hotel.write_date IS 'Last Updated on';
            public       postgres    false    218            L           0    0    COLUMN ser_hotel.url    COMMENT     1   COMMENT ON COLUMN public.ser_hotel.url IS 'Url';
            public       postgres    false    218            M           0    0    COLUMN ser_hotel.indicaciones    COMMENT     C   COMMENT ON COLUMN public.ser_hotel.indicaciones IS 'Indicaciones';
            public       postgres    false    218            ?            1259    188659    ser_hotel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ser_hotel_id_seq;
       public       postgres    false    218    3            N           0    0    ser_hotel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ser_hotel_id_seq OWNED BY public.ser_hotel.id;
            public       postgres    false    219            ?            1259    188661    ser_paquete    TABLE     ?  CREATE TABLE public.ser_paquete (
    id integer NOT NULL,
    currency_id integer,
    indicaciones_moved0 character varying(300),
    conexion_id integer NOT NULL,
    tipo_paquete_id integer NOT NULL,
    hora_llegada_moved0 timestamp without time zone,
    hora_recoger_moved0 timestamp without time zone,
    fin_semana boolean,
    valor numeric NOT NULL,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora_llegada double precision,
    hora_recoger double precision,
    usuario_id integer,
    iva boolean,
    discapacidad double precision,
    indicaciones text,
    descripcion character varying
);
    DROP TABLE public.ser_paquete;
       public         postgres    false    3            O           0    0    TABLE ser_paquete    COMMENT     =   COMMENT ON TABLE public.ser_paquete IS 'Servicio - Paquete';
            public       postgres    false    220            P           0    0    COLUMN ser_paquete.currency_id    COMMENT     @   COMMENT ON COLUMN public.ser_paquete.currency_id IS 'Currency';
            public       postgres    false    220            Q           0    0 &   COLUMN ser_paquete.indicaciones_moved0    COMMENT     L   COMMENT ON COLUMN public.ser_paquete.indicaciones_moved0 IS 'Indicaciones';
            public       postgres    false    220            R           0    0    COLUMN ser_paquete.conexion_id    COMMENT     A   COMMENT ON COLUMN public.ser_paquete.conexion_id IS 'Conexión';
            public       postgres    false    220            S           0    0 "   COLUMN ser_paquete.tipo_paquete_id    COMMENT     K   COMMENT ON COLUMN public.ser_paquete.tipo_paquete_id IS 'Tipo de paquete';
            public       postgres    false    220            T           0    0 &   COLUMN ser_paquete.hora_llegada_moved0    COMMENT     O   COMMENT ON COLUMN public.ser_paquete.hora_llegada_moved0 IS 'Hora de llegada';
            public       postgres    false    220            U           0    0 &   COLUMN ser_paquete.hora_recoger_moved0    COMMENT     W   COMMENT ON COLUMN public.ser_paquete.hora_recoger_moved0 IS 'Hora de recoger paquete';
            public       postgres    false    220            V           0    0    COLUMN ser_paquete.fin_semana    COMMENT     O   COMMENT ON COLUMN public.ser_paquete.fin_semana IS 'Fin de semana operación';
            public       postgres    false    220            W           0    0    COLUMN ser_paquete.valor    COMMENT     7   COMMENT ON COLUMN public.ser_paquete.valor IS 'Valor';
            public       postgres    false    220            X           0    0    COLUMN ser_paquete.estado    COMMENT     9   COMMENT ON COLUMN public.ser_paquete.estado IS 'Estado';
            public       postgres    false    220            Y           0    0    COLUMN ser_paquete.create_uid    COMMENT     A   COMMENT ON COLUMN public.ser_paquete.create_uid IS 'Created by';
            public       postgres    false    220            Z           0    0    COLUMN ser_paquete.create_date    COMMENT     B   COMMENT ON COLUMN public.ser_paquete.create_date IS 'Created on';
            public       postgres    false    220            [           0    0    COLUMN ser_paquete.write_uid    COMMENT     E   COMMENT ON COLUMN public.ser_paquete.write_uid IS 'Last Updated by';
            public       postgres    false    220            \           0    0    COLUMN ser_paquete.write_date    COMMENT     F   COMMENT ON COLUMN public.ser_paquete.write_date IS 'Last Updated on';
            public       postgres    false    220            ]           0    0    COLUMN ser_paquete.hora_llegada    COMMENT     H   COMMENT ON COLUMN public.ser_paquete.hora_llegada IS 'Hora de llegada';
            public       postgres    false    220            ^           0    0    COLUMN ser_paquete.hora_recoger    COMMENT     H   COMMENT ON COLUMN public.ser_paquete.hora_recoger IS 'Hora de recoger';
            public       postgres    false    220            _           0    0    COLUMN ser_paquete.usuario_id    COMMENT     @   COMMENT ON COLUMN public.ser_paquete.usuario_id IS 'Proveedor';
            public       postgres    false    220            `           0    0    COLUMN ser_paquete.iva    COMMENT     3   COMMENT ON COLUMN public.ser_paquete.iva IS 'Iva';
            public       postgres    false    220            a           0    0    COLUMN ser_paquete.discapacidad    COMMENT     Q   COMMENT ON COLUMN public.ser_paquete.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    220            b           0    0    COLUMN ser_paquete.indicaciones    COMMENT     E   COMMENT ON COLUMN public.ser_paquete.indicaciones IS 'Indicaciones';
            public       postgres    false    220            c           0    0    COLUMN ser_paquete.descripcion    COMMENT     C   COMMENT ON COLUMN public.ser_paquete.descripcion IS 'Descripcion';
            public       postgres    false    220            ?            1259    188667    ser_paquete_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_paquete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ser_paquete_id_seq;
       public       postgres    false    220    3            d           0    0    ser_paquete_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ser_paquete_id_seq OWNED BY public.ser_paquete.id;
            public       postgres    false    221            ?            1259    188669    ser_proveedor    TABLE     ?  CREATE TABLE public.ser_proveedor (
    id integer NOT NULL,
    currency_id integer,
    password character varying,
    ruc character varying NOT NULL,
    razon_social character varying(100) NOT NULL,
    estado boolean,
    comision numeric,
    ganancias numeric,
    pago numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    email character varying NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    direccion character varying NOT NULL,
    celular character varying NOT NULL,
    telefono character varying,
    prioridad integer,
    lugar_id integer NOT NULL,
    lat numeric,
    lon numeric
);
 !   DROP TABLE public.ser_proveedor;
       public         postgres    false    3            e           0    0    TABLE ser_proveedor    COMMENT     A   COMMENT ON TABLE public.ser_proveedor IS 'Servicio - Proveedor';
            public       postgres    false    222            f           0    0     COLUMN ser_proveedor.currency_id    COMMENT     B   COMMENT ON COLUMN public.ser_proveedor.currency_id IS 'Currency';
            public       postgres    false    222            g           0    0    COLUMN ser_proveedor.password    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.password IS 'Password';
            public       postgres    false    222            h           0    0    COLUMN ser_proveedor.ruc    COMMENT     C   COMMENT ON COLUMN public.ser_proveedor.ruc IS 'Cédula/Pasaporte';
            public       postgres    false    222            i           0    0 !   COLUMN ser_proveedor.razon_social    COMMENT     H   COMMENT ON COLUMN public.ser_proveedor.razon_social IS 'Razón social';
            public       postgres    false    222            j           0    0    COLUMN ser_proveedor.estado    COMMENT     ;   COMMENT ON COLUMN public.ser_proveedor.estado IS 'Estado';
            public       postgres    false    222            k           0    0    COLUMN ser_proveedor.comision    COMMENT     @   COMMENT ON COLUMN public.ser_proveedor.comision IS 'Comisión';
            public       postgres    false    222            l           0    0    COLUMN ser_proveedor.ganancias    COMMENT     A   COMMENT ON COLUMN public.ser_proveedor.ganancias IS 'Ganancias';
            public       postgres    false    222            m           0    0    COLUMN ser_proveedor.pago    COMMENT     7   COMMENT ON COLUMN public.ser_proveedor.pago IS 'Pago';
            public       postgres    false    222            n           0    0    COLUMN ser_proveedor.create_uid    COMMENT     C   COMMENT ON COLUMN public.ser_proveedor.create_uid IS 'Created by';
            public       postgres    false    222            o           0    0     COLUMN ser_proveedor.create_date    COMMENT     D   COMMENT ON COLUMN public.ser_proveedor.create_date IS 'Created on';
            public       postgres    false    222            p           0    0    COLUMN ser_proveedor.write_uid    COMMENT     G   COMMENT ON COLUMN public.ser_proveedor.write_uid IS 'Last Updated by';
            public       postgres    false    222            q           0    0    COLUMN ser_proveedor.write_date    COMMENT     H   COMMENT ON COLUMN public.ser_proveedor.write_date IS 'Last Updated on';
            public       postgres    false    222            r           0    0    COLUMN ser_proveedor.email    COMMENT     9   COMMENT ON COLUMN public.ser_proveedor.email IS 'Email';
            public       postgres    false    222            s           0    0    COLUMN ser_proveedor.nombre    COMMENT     ;   COMMENT ON COLUMN public.ser_proveedor.nombre IS 'Nombre';
            public       postgres    false    222            t           0    0    COLUMN ser_proveedor.apellido    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.apellido IS 'Apellido';
            public       postgres    false    222            u           0    0    COLUMN ser_proveedor.direccion    COMMENT     B   COMMENT ON COLUMN public.ser_proveedor.direccion IS 'Dirección';
            public       postgres    false    222            v           0    0    COLUMN ser_proveedor.celular    COMMENT     =   COMMENT ON COLUMN public.ser_proveedor.celular IS 'Celular';
            public       postgres    false    222            w           0    0    COLUMN ser_proveedor.telefono    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.telefono IS 'Telefono';
            public       postgres    false    222            x           0    0    COLUMN ser_proveedor.prioridad    COMMENT     A   COMMENT ON COLUMN public.ser_proveedor.prioridad IS 'Prioridad';
            public       postgres    false    222            y           0    0    COLUMN ser_proveedor.lugar_id    COMMENT     <   COMMENT ON COLUMN public.ser_proveedor.lugar_id IS 'Lugar';
            public       postgres    false    222            z           0    0    COLUMN ser_proveedor.lat    COMMENT     9   COMMENT ON COLUMN public.ser_proveedor.lat IS 'Latitud';
            public       postgres    false    222            {           0    0    COLUMN ser_proveedor.lon    COMMENT     :   COMMENT ON COLUMN public.ser_proveedor.lon IS 'Longitud';
            public       postgres    false    222            ?            1259    188675    ser_proveedor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_proveedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ser_proveedor_id_seq;
       public       postgres    false    3    222            |           0    0    ser_proveedor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ser_proveedor_id_seq OWNED BY public.ser_proveedor.id;
            public       postgres    false    223            ?            1259    188677    ser_ruta    TABLE     K  CREATE TABLE public.ser_ruta (
    id integer NOT NULL,
    currency_id integer,
    tipo_vehiculo_id integer,
    conexion_id integer,
    tipo_frecuencia character varying,
    hora_moved0 timestamp without time zone,
    estado boolean,
    unitario numeric,
    completo numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora double precision,
    usuario_id integer,
    iva boolean,
    discapacidad double precision,
    indicaciones text,
    fecha timestamp without time zone
);
    DROP TABLE public.ser_ruta;
       public         postgres    false    3            }           0    0    TABLE ser_ruta    COMMENT     7   COMMENT ON TABLE public.ser_ruta IS 'Servicio - Ruta';
            public       postgres    false    224            ~           0    0    COLUMN ser_ruta.currency_id    COMMENT     =   COMMENT ON COLUMN public.ser_ruta.currency_id IS 'Currency';
            public       postgres    false    224                       0    0     COLUMN ser_ruta.tipo_vehiculo_id    COMMENT     J   COMMENT ON COLUMN public.ser_ruta.tipo_vehiculo_id IS 'Tipo de Vehiculo';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.conexion_id    COMMENT     >   COMMENT ON COLUMN public.ser_ruta.conexion_id IS 'Conexión';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.tipo_frecuencia    COMMENT     C   COMMENT ON COLUMN public.ser_ruta.tipo_frecuencia IS 'Frecuencia';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.hora_moved0    COMMENT     9   COMMENT ON COLUMN public.ser_ruta.hora_moved0 IS 'Hora';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.estado    COMMENT     6   COMMENT ON COLUMN public.ser_ruta.estado IS 'Estado';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.unitario    COMMENT     @   COMMENT ON COLUMN public.ser_ruta.unitario IS 'Costo unitario';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.completo    COMMENT     @   COMMENT ON COLUMN public.ser_ruta.completo IS 'Costo completo';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.create_uid    COMMENT     >   COMMENT ON COLUMN public.ser_ruta.create_uid IS 'Created by';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.create_date    COMMENT     ?   COMMENT ON COLUMN public.ser_ruta.create_date IS 'Created on';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.write_uid    COMMENT     B   COMMENT ON COLUMN public.ser_ruta.write_uid IS 'Last Updated by';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.write_date    COMMENT     C   COMMENT ON COLUMN public.ser_ruta.write_date IS 'Last Updated on';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.hora    COMMENT     2   COMMENT ON COLUMN public.ser_ruta.hora IS 'Hora';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.usuario_id    COMMENT     =   COMMENT ON COLUMN public.ser_ruta.usuario_id IS 'Proveedor';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.iva    COMMENT     0   COMMENT ON COLUMN public.ser_ruta.iva IS 'Iva';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.discapacidad    COMMENT     N   COMMENT ON COLUMN public.ser_ruta.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.indicaciones    COMMENT     B   COMMENT ON COLUMN public.ser_ruta.indicaciones IS 'Indicaciones';
            public       postgres    false    224            ?            1259    188683    ser_ruta_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_ruta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ser_ruta_id_seq;
       public       postgres    false    3    224            ?           0    0    ser_ruta_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ser_ruta_id_seq OWNED BY public.ser_ruta.id;
            public       postgres    false    225            ?            1259    188685    ser_sucursal    TABLE     ?  CREATE TABLE public.ser_sucursal (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    direccion character varying NOT NULL,
    lat numeric,
    lon numeric,
    telefono character varying,
    email character varying,
    comision numeric,
    ganancias numeric,
    pago numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
     DROP TABLE public.ser_sucursal;
       public         postgres    false    3            ?           0    0    TABLE ser_sucursal    COMMENT     ?   COMMENT ON TABLE public.ser_sucursal IS 'Servicio - Sucursal';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.currency_id    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.currency_id IS 'Currency';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.usuario_id    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.usuario_id IS 'Proveedor';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lugar_id    COMMENT     ;   COMMENT ON COLUMN public.ser_sucursal.lugar_id IS 'Lugar';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.direccion    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.direccion IS 'Dirección';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lat    COMMENT     8   COMMENT ON COLUMN public.ser_sucursal.lat IS 'Latitud';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lon    COMMENT     9   COMMENT ON COLUMN public.ser_sucursal.lon IS 'Longitud';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.telefono    COMMENT     F   COMMENT ON COLUMN public.ser_sucursal.telefono IS 'Celular/Telefono';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.email    COMMENT     8   COMMENT ON COLUMN public.ser_sucursal.email IS 'Email';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.comision    COMMENT     ?   COMMENT ON COLUMN public.ser_sucursal.comision IS 'Comisión';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.ganancias    COMMENT     @   COMMENT ON COLUMN public.ser_sucursal.ganancias IS 'Ganancias';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.pago    COMMENT     6   COMMENT ON COLUMN public.ser_sucursal.pago IS 'Pago';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.create_uid    COMMENT     B   COMMENT ON COLUMN public.ser_sucursal.create_uid IS 'Created by';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.create_date    COMMENT     C   COMMENT ON COLUMN public.ser_sucursal.create_date IS 'Created on';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.write_uid    COMMENT     F   COMMENT ON COLUMN public.ser_sucursal.write_uid IS 'Last Updated by';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.write_date    COMMENT     G   COMMENT ON COLUMN public.ser_sucursal.write_date IS 'Last Updated on';
            public       postgres    false    226            ?            1259    188691    ser_sucursal_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ser_sucursal_id_seq;
       public       postgres    false    3    226            ?           0    0    ser_sucursal_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ser_sucursal_id_seq OWNED BY public.ser_sucursal.id;
            public       postgres    false    227            ?            1259    188693    ser_tipopaquete    TABLE     ?  CREATE TABLE public.ser_tipopaquete (
    id integer NOT NULL,
    tipo_paquete character varying,
    aumento double precision,
    descuento double precision,
    comision double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    peso numeric,
    valor_referencial numeric
);
 #   DROP TABLE public.ser_tipopaquete;
       public         postgres    false    3            ?           0    0    TABLE ser_tipopaquete    COMMENT     F   COMMENT ON TABLE public.ser_tipopaquete IS 'Servicio - Tipo Paquete';
            public       postgres    false    228            ?           0    0 #   COLUMN ser_tipopaquete.tipo_paquete    COMMENT     I   COMMENT ON COLUMN public.ser_tipopaquete.tipo_paquete IS 'Tipo Paquete';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.aumento    COMMENT     A   COMMENT ON COLUMN public.ser_tipopaquete.aumento IS 'Aumento %';
            public       postgres    false    228            ?           0    0     COLUMN ser_tipopaquete.descuento    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.descuento IS 'Descuento %';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.comision    COMMENT     D   COMMENT ON COLUMN public.ser_tipopaquete.comision IS 'Comisión %';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.estado    COMMENT     =   COMMENT ON COLUMN public.ser_tipopaquete.estado IS 'Estado';
            public       postgres    false    228            ?           0    0 !   COLUMN ser_tipopaquete.create_uid    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.create_uid IS 'Created by';
            public       postgres    false    228            ?           0    0 "   COLUMN ser_tipopaquete.create_date    COMMENT     F   COMMENT ON COLUMN public.ser_tipopaquete.create_date IS 'Created on';
            public       postgres    false    228            ?           0    0     COLUMN ser_tipopaquete.write_uid    COMMENT     I   COMMENT ON COLUMN public.ser_tipopaquete.write_uid IS 'Last Updated by';
            public       postgres    false    228            ?           0    0 !   COLUMN ser_tipopaquete.write_date    COMMENT     J   COMMENT ON COLUMN public.ser_tipopaquete.write_date IS 'Last Updated on';
            public       postgres    false    228            ?           0    0 "   COLUMN ser_tipopaquete.currency_id    COMMENT     D   COMMENT ON COLUMN public.ser_tipopaquete.currency_id IS 'Currency';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.peso    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.peso IS 'Peso maximo (kg)';
            public       postgres    false    228            ?           0    0 (   COLUMN ser_tipopaquete.valor_referencial    COMMENT     S   COMMENT ON COLUMN public.ser_tipopaquete.valor_referencial IS 'Valor referencial';
            public       postgres    false    228            ?            1259    188699    ser_tipopaquete_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_tipopaquete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ser_tipopaquete_id_seq;
       public       postgres    false    228    3            ?           0    0    ser_tipopaquete_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ser_tipopaquete_id_seq OWNED BY public.ser_tipopaquete.id;
            public       postgres    false    229            ?            1259    188701    ser_tiposervicio    TABLE     g  CREATE TABLE public.ser_tiposervicio (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    aumento double precision,
    descuento double precision,
    comision double precision,
    estado boolean
);
 $   DROP TABLE public.ser_tiposervicio;
       public         postgres    false    3            ?           0    0    TABLE ser_tiposervicio    COMMENT     G   COMMENT ON TABLE public.ser_tiposervicio IS 'Servicio - TipoServicio';
            public       postgres    false    230            ?           0    0 #   COLUMN ser_tiposervicio.descripcion    COMMENT     I   COMMENT ON COLUMN public.ser_tiposervicio.descripcion IS 'Descripción';
            public       postgres    false    230            ?           0    0 "   COLUMN ser_tiposervicio.create_uid    COMMENT     F   COMMENT ON COLUMN public.ser_tiposervicio.create_uid IS 'Created by';
            public       postgres    false    230            ?           0    0 #   COLUMN ser_tiposervicio.create_date    COMMENT     G   COMMENT ON COLUMN public.ser_tiposervicio.create_date IS 'Created on';
            public       postgres    false    230            ?           0    0 !   COLUMN ser_tiposervicio.write_uid    COMMENT     J   COMMENT ON COLUMN public.ser_tiposervicio.write_uid IS 'Last Updated by';
            public       postgres    false    230            ?           0    0 "   COLUMN ser_tiposervicio.write_date    COMMENT     K   COMMENT ON COLUMN public.ser_tiposervicio.write_date IS 'Last Updated on';
            public       postgres    false    230            ?           0    0    COLUMN ser_tiposervicio.aumento    COMMENT     B   COMMENT ON COLUMN public.ser_tiposervicio.aumento IS 'Aumento %';
            public       postgres    false    230            ?           0    0 !   COLUMN ser_tiposervicio.descuento    COMMENT     F   COMMENT ON COLUMN public.ser_tiposervicio.descuento IS 'Descuento %';
            public       postgres    false    230            ?           0    0     COLUMN ser_tiposervicio.comision    COMMENT     E   COMMENT ON COLUMN public.ser_tiposervicio.comision IS 'Comisión %';
            public       postgres    false    230            ?            1259    188707    ser_tiposervicio_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_tiposervicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ser_tiposervicio_id_seq;
       public       postgres    false    3    230            ?           0    0    ser_tiposervicio_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ser_tiposervicio_id_seq OWNED BY public.ser_tiposervicio.id;
            public       postgres    false    231            ?            1259    188709    ser_turismo    TABLE     $  CREATE TABLE public.ser_turismo (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    fecha date,
    hora double precision,
    descripcion character varying NOT NULL,
    indicaciones text,
    valor numeric NOT NULL,
    discapacidad double precision,
    iva boolean,
    estado boolean,
    frecuencia character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    url character varying
);
    DROP TABLE public.ser_turismo;
       public         postgres    false    3            ?           0    0    TABLE ser_turismo    COMMENT     =   COMMENT ON TABLE public.ser_turismo IS 'Servicio - Turismo';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.currency_id    COMMENT     @   COMMENT ON COLUMN public.ser_turismo.currency_id IS 'Currency';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.usuario_id    COMMENT     @   COMMENT ON COLUMN public.ser_turismo.usuario_id IS 'Proveedor';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.lugar_id    COMMENT     :   COMMENT ON COLUMN public.ser_turismo.lugar_id IS 'Lugar';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.fecha    COMMENT     7   COMMENT ON COLUMN public.ser_turismo.fecha IS 'Fecha';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.hora    COMMENT     5   COMMENT ON COLUMN public.ser_turismo.hora IS 'Hora';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.descripcion    COMMENT     D   COMMENT ON COLUMN public.ser_turismo.descripcion IS 'Descripción';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.indicaciones    COMMENT     E   COMMENT ON COLUMN public.ser_turismo.indicaciones IS 'Indicaciones';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.valor    COMMENT     7   COMMENT ON COLUMN public.ser_turismo.valor IS 'Valor';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.discapacidad    COMMENT     Q   COMMENT ON COLUMN public.ser_turismo.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.iva    COMMENT     :   COMMENT ON COLUMN public.ser_turismo.iva IS 'Aplica iva';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.estado    COMMENT     9   COMMENT ON COLUMN public.ser_turismo.estado IS 'Estado';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.frecuencia    COMMENT     A   COMMENT ON COLUMN public.ser_turismo.frecuencia IS 'Frecuencia';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.create_uid    COMMENT     A   COMMENT ON COLUMN public.ser_turismo.create_uid IS 'Created by';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.create_date    COMMENT     B   COMMENT ON COLUMN public.ser_turismo.create_date IS 'Created on';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.write_uid    COMMENT     E   COMMENT ON COLUMN public.ser_turismo.write_uid IS 'Last Updated by';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.write_date    COMMENT     F   COMMENT ON COLUMN public.ser_turismo.write_date IS 'Last Updated on';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.url    COMMENT     3   COMMENT ON COLUMN public.ser_turismo.url IS 'Url';
            public       postgres    false    232            ?            1259    188715    ser_turismo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_turismo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ser_turismo_id_seq;
       public       postgres    false    232    3            ?           0    0    ser_turismo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ser_turismo_id_seq OWNED BY public.ser_turismo.id;
            public       postgres    false    233            ?            1259    188831    tra_preferencia    TABLE     	  CREATE TABLE public.tra_preferencia (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 #   DROP TABLE public.tra_preferencia;
       public         postgres    false    3            ?           0    0    TABLE tra_preferencia    COMMENT     G   COMMENT ON TABLE public.tra_preferencia IS 'Transporte - Preferencia';
            public       postgres    false    234            ?           0    0 "   COLUMN tra_preferencia.descripcion    COMMENT     H   COMMENT ON COLUMN public.tra_preferencia.descripcion IS 'Descripción';
            public       postgres    false    234            ?           0    0    COLUMN tra_preferencia.estado    COMMENT     =   COMMENT ON COLUMN public.tra_preferencia.estado IS 'Estado';
            public       postgres    false    234            ?           0    0 !   COLUMN tra_preferencia.create_uid    COMMENT     E   COMMENT ON COLUMN public.tra_preferencia.create_uid IS 'Created by';
            public       postgres    false    234            ?           0    0 "   COLUMN tra_preferencia.create_date    COMMENT     F   COMMENT ON COLUMN public.tra_preferencia.create_date IS 'Created on';
            public       postgres    false    234            ?           0    0     COLUMN tra_preferencia.write_uid    COMMENT     I   COMMENT ON COLUMN public.tra_preferencia.write_uid IS 'Last Updated by';
            public       postgres    false    234            ?           0    0 !   COLUMN tra_preferencia.write_date    COMMENT     J   COMMENT ON COLUMN public.tra_preferencia.write_date IS 'Last Updated on';
            public       postgres    false    234            ?            1259    188837    tra_preferencia_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_preferencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tra_preferencia_id_seq;
       public       postgres    false    234    3            ?           0    0    tra_preferencia_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tra_preferencia_id_seq OWNED BY public.tra_preferencia.id;
            public       postgres    false    235            ?            1259    188839    tra_preferencia_tra_usuario_rel    TABLE     ?   CREATE TABLE public.tra_preferencia_tra_usuario_rel (
    tra_usuario_id integer NOT NULL,
    tra_preferencia_id integer NOT NULL
);
 3   DROP TABLE public.tra_preferencia_tra_usuario_rel;
       public         postgres    false    3            ?           0    0 %   TABLE tra_preferencia_tra_usuario_rel    COMMENT     o   COMMENT ON TABLE public.tra_preferencia_tra_usuario_rel IS 'RELATION BETWEEN tra_usuario AND tra_preferencia';
            public       postgres    false    236            ?            1259    188842    tra_tipousuario    TABLE     R  CREATE TABLE public.tra_tipousuario (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    descuento double precision,
    aumento double precision,
    comision double precision,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 #   DROP TABLE public.tra_tipousuario;
       public         postgres    false    3            ?           0    0    TABLE tra_tipousuario    COMMENT     G   COMMENT ON TABLE public.tra_tipousuario IS 'Transporte - TipoUsuario';
            public       postgres    false    237            ?           0    0 "   COLUMN tra_tipousuario.descripcion    COMMENT     H   COMMENT ON COLUMN public.tra_tipousuario.descripcion IS 'Descripción';
            public       postgres    false    237            ?           0    0     COLUMN tra_tipousuario.descuento    COMMENT     E   COMMENT ON COLUMN public.tra_tipousuario.descuento IS 'Descuento %';
            public       postgres    false    237            ?           0    0    COLUMN tra_tipousuario.aumento    COMMENT     A   COMMENT ON COLUMN public.tra_tipousuario.aumento IS 'Aumento %';
            public       postgres    false    237            ?           0    0    COLUMN tra_tipousuario.comision    COMMENT     D   COMMENT ON COLUMN public.tra_tipousuario.comision IS 'Comisión %';
            public       postgres    false    237            ?           0    0 !   COLUMN tra_tipousuario.create_uid    COMMENT     E   COMMENT ON COLUMN public.tra_tipousuario.create_uid IS 'Created by';
            public       postgres    false    237            ?           0    0 "   COLUMN tra_tipousuario.create_date    COMMENT     F   COMMENT ON COLUMN public.tra_tipousuario.create_date IS 'Created on';
            public       postgres    false    237            ?           0    0     COLUMN tra_tipousuario.write_uid    COMMENT     I   COMMENT ON COLUMN public.tra_tipousuario.write_uid IS 'Last Updated by';
            public       postgres    false    237            ?           0    0 !   COLUMN tra_tipousuario.write_date    COMMENT     J   COMMENT ON COLUMN public.tra_tipousuario.write_date IS 'Last Updated on';
            public       postgres    false    237            ?            1259    188848    tra_tipousuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_tipousuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tra_tipousuario_id_seq;
       public       postgres    false    3    237            ?           0    0    tra_tipousuario_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tra_tipousuario_id_seq OWNED BY public.tra_tipousuario.id;
            public       postgres    false    238            ?            1259    188850    tra_tipovehiculo    TABLE     ?  CREATE TABLE public.tra_tipovehiculo (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    descuento double precision,
    aumento double precision,
    comision double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    nro_asiento integer NOT NULL,
    capacidad double precision NOT NULL
);
 $   DROP TABLE public.tra_tipovehiculo;
       public         postgres    false    3            ?           0    0    TABLE tra_tipovehiculo    COMMENT     J   COMMENT ON TABLE public.tra_tipovehiculo IS 'Transporte - Tipo Vehiculo';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.descripcion    COMMENT     I   COMMENT ON COLUMN public.tra_tipovehiculo.descripcion IS 'Descripción';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.descuento    COMMENT     F   COMMENT ON COLUMN public.tra_tipovehiculo.descuento IS 'Descuento %';
            public       postgres    false    239            ?           0    0    COLUMN tra_tipovehiculo.aumento    COMMENT     B   COMMENT ON COLUMN public.tra_tipovehiculo.aumento IS 'Aumento %';
            public       postgres    false    239            ?           0    0     COLUMN tra_tipovehiculo.comision    COMMENT     E   COMMENT ON COLUMN public.tra_tipovehiculo.comision IS 'Comisión %';
            public       postgres    false    239            ?           0    0    COLUMN tra_tipovehiculo.estado    COMMENT     >   COMMENT ON COLUMN public.tra_tipovehiculo.estado IS 'Estado';
            public       postgres    false    239            ?           0    0 "   COLUMN tra_tipovehiculo.create_uid    COMMENT     F   COMMENT ON COLUMN public.tra_tipovehiculo.create_uid IS 'Created by';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.create_date    COMMENT     G   COMMENT ON COLUMN public.tra_tipovehiculo.create_date IS 'Created on';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.write_uid    COMMENT     J   COMMENT ON COLUMN public.tra_tipovehiculo.write_uid IS 'Last Updated by';
            public       postgres    false    239            ?           0    0 "   COLUMN tra_tipovehiculo.write_date    COMMENT     K   COMMENT ON COLUMN public.tra_tipovehiculo.write_date IS 'Last Updated on';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.nro_asiento    COMMENT     P   COMMENT ON COLUMN public.tra_tipovehiculo.nro_asiento IS 'Número de asientos';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.capacidad    COMMENT     O   COMMENT ON COLUMN public.tra_tipovehiculo.capacidad IS 'Capacidad carga (kg)';
            public       postgres    false    239            ?            1259    188856    tra_tipovehiculo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_tipovehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tra_tipovehiculo_id_seq;
       public       postgres    false    239    3            ?           0    0    tra_tipovehiculo_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tra_tipovehiculo_id_seq OWNED BY public.tra_tipovehiculo.id;
            public       postgres    false    240            ?            1259    188858    tra_usuario    TABLE     ?  CREATE TABLE public.tra_usuario (
    id integer NOT NULL,
    currency_id integer,
    tipo_id integer NOT NULL,
    password character varying,
    ruc character varying NOT NULL,
    estado boolean DEFAULT true,
    comision numeric,
    ganancias numeric,
    pago numeric,
    lugar_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    display_name character varying,
    email character varying NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    direccion character varying NOT NULL,
    lat numeric,
    lon numeric,
    discapacidad boolean,
    razon_social character varying(100) NOT NULL,
    prioridad integer,
    padre_id integer,
    telefono character varying(100) NOT NULL,
    cod_recuperacion character varying(4)
);
    DROP TABLE public.tra_usuario;
       public         postgres    false    3            ?           0    0    TABLE tra_usuario    COMMENT     ?   COMMENT ON TABLE public.tra_usuario IS 'Transporte - Usuario';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.currency_id    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.currency_id IS 'Currency';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.tipo_id    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.tipo_id IS 'Tipo Usuario';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.password    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.password IS 'Password';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.ruc    COMMENT     A   COMMENT ON COLUMN public.tra_usuario.ruc IS 'Cédula/Pasaporte';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.estado    COMMENT     9   COMMENT ON COLUMN public.tra_usuario.estado IS 'Estado';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.comision    COMMENT     >   COMMENT ON COLUMN public.tra_usuario.comision IS 'Comisión';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.ganancias    COMMENT     ?   COMMENT ON COLUMN public.tra_usuario.ganancias IS 'Ganancias';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.pago    COMMENT     5   COMMENT ON COLUMN public.tra_usuario.pago IS 'Pago';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.lugar_id    COMMENT     :   COMMENT ON COLUMN public.tra_usuario.lugar_id IS 'Lugar';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.create_uid    COMMENT     A   COMMENT ON COLUMN public.tra_usuario.create_uid IS 'Created by';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.create_date    COMMENT     B   COMMENT ON COLUMN public.tra_usuario.create_date IS 'Created on';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.write_uid    COMMENT     E   COMMENT ON COLUMN public.tra_usuario.write_uid IS 'Last Updated by';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.write_date    COMMENT     F   COMMENT ON COLUMN public.tra_usuario.write_date IS 'Last Updated on';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.display_name    COMMENT     E   COMMENT ON COLUMN public.tra_usuario.display_name IS 'Display Name';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.email    COMMENT     7   COMMENT ON COLUMN public.tra_usuario.email IS 'Email';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.nombre    COMMENT     9   COMMENT ON COLUMN public.tra_usuario.nombre IS 'Nombre';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.apellido    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.apellido IS 'Apellido';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.direccion    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.direccion IS 'Dirección';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.lat    COMMENT     7   COMMENT ON COLUMN public.tra_usuario.lat IS 'Latitud';
            public       postgres    false    241                        0    0    COLUMN tra_usuario.lon    COMMENT     8   COMMENT ON COLUMN public.tra_usuario.lon IS 'Longitud';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.discapacidad    COMMENT     K   COMMENT ON COLUMN public.tra_usuario.discapacidad IS 'Tiene discapacidad';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.razon_social    COMMENT     F   COMMENT ON COLUMN public.tra_usuario.razon_social IS 'Razón social';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.prioridad    COMMENT     ?   COMMENT ON COLUMN public.tra_usuario.prioridad IS 'Prioridad';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.padre_id    COMMENT     D   COMMENT ON COLUMN public.tra_usuario.padre_id IS 'Proveedor padre';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.telefono    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.telefono IS 'Telefono';
            public       postgres    false    241            ?            1259    188865    tra_usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tra_usuario_id_seq;
       public       postgres    false    241    3                       0    0    tra_usuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tra_usuario_id_seq OWNED BY public.tra_usuario.id;
            public       postgres    false    242            ?            1259    188867    tra_vehiculo    TABLE     3  CREATE TABLE public.tra_vehiculo (
    id integer NOT NULL,
    placa character varying NOT NULL,
    modelo character varying(100) NOT NULL,
    marca character varying(100) NOT NULL,
    color character varying,
    nro_asiento integer,
    estado boolean,
    tipo_vehiculo_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    propietario_id_moved0 character varying,
    propietario_id_moved1 integer,
    usuario_id integer,
    capacidad numeric
);
     DROP TABLE public.tra_vehiculo;
       public         postgres    false    3                       0    0    TABLE tra_vehiculo    COMMENT     A   COMMENT ON TABLE public.tra_vehiculo IS 'Transporte - Vehiculo';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.placa    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.placa IS 'Placa';
            public       postgres    false    243            	           0    0    COLUMN tra_vehiculo.modelo    COMMENT     :   COMMENT ON COLUMN public.tra_vehiculo.modelo IS 'Modelo';
            public       postgres    false    243            
           0    0    COLUMN tra_vehiculo.marca    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.marca IS 'Marca';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.color    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.color IS 'Color';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.nro_asiento    COMMENT     K   COMMENT ON COLUMN public.tra_vehiculo.nro_asiento IS 'Numero de asientos';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.estado    COMMENT     :   COMMENT ON COLUMN public.tra_vehiculo.estado IS 'Estado';
            public       postgres    false    243                       0    0 $   COLUMN tra_vehiculo.tipo_vehiculo_id    COMMENT     L   COMMENT ON COLUMN public.tra_vehiculo.tipo_vehiculo_id IS 'Tipo Vehículo';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.create_uid    COMMENT     B   COMMENT ON COLUMN public.tra_vehiculo.create_uid IS 'Created by';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.create_date    COMMENT     C   COMMENT ON COLUMN public.tra_vehiculo.create_date IS 'Created on';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.write_uid    COMMENT     F   COMMENT ON COLUMN public.tra_vehiculo.write_uid IS 'Last Updated by';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.write_date    COMMENT     G   COMMENT ON COLUMN public.tra_vehiculo.write_date IS 'Last Updated on';
            public       postgres    false    243                       0    0 )   COLUMN tra_vehiculo.propietario_id_moved0    COMMENT     N   COMMENT ON COLUMN public.tra_vehiculo.propietario_id_moved0 IS 'Propietario';
            public       postgres    false    243                       0    0 )   COLUMN tra_vehiculo.propietario_id_moved1    COMMENT     N   COMMENT ON COLUMN public.tra_vehiculo.propietario_id_moved1 IS 'Propietario';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.usuario_id    COMMENT     ?   COMMENT ON COLUMN public.tra_vehiculo.usuario_id IS 'Usuario';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.capacidad    COMMENT     K   COMMENT ON COLUMN public.tra_vehiculo.capacidad IS 'Capacidad carga (kg)';
            public       postgres    false    243            ?            1259    188873    tra_vehiculo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_vehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tra_vehiculo_id_seq;
       public       postgres    false    243    3                       0    0    tra_vehiculo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tra_vehiculo_id_seq OWNED BY public.tra_vehiculo.id;
            public       postgres    false    244            G           2604    189040 
   bus_bus id    DEFAULT     h   ALTER TABLE ONLY public.bus_bus ALTER COLUMN id SET DEFAULT nextval('public.bus_bus_id_seq'::regclass);
 9   ALTER TABLE public.bus_bus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            H           2604    189041    bus_presence id    DEFAULT     r   ALTER TABLE ONLY public.bus_presence ALTER COLUMN id SET DEFAULT nextval('public.bus_presence_id_seq'::regclass);
 >   ALTER TABLE public.bus_presence ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            I           2604    189046    fac_detalle id    DEFAULT     p   ALTER TABLE ONLY public.fac_detalle ALTER COLUMN id SET DEFAULT nextval('public.fac_detalle_id_seq'::regclass);
 =   ALTER TABLE public.fac_detalle ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            J           2604    189047    fac_factura id    DEFAULT     p   ALTER TABLE ONLY public.fac_factura ALTER COLUMN id SET DEFAULT nextval('public.fac_factura_id_seq'::regclass);
 =   ALTER TABLE public.fac_factura ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            K           2604    189048    fac_requerimiento id    DEFAULT     |   ALTER TABLE ONLY public.fac_requerimiento ALTER COLUMN id SET DEFAULT nextval('public.fac_requerimiento_id_seq'::regclass);
 C   ALTER TABLE public.fac_requerimiento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            L           2604    189049    fac_tipopago id    DEFAULT     r   ALTER TABLE ONLY public.fac_tipopago ALTER COLUMN id SET DEFAULT nextval('public.fac_tipopago_id_seq'::regclass);
 >   ALTER TABLE public.fac_tipopago ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            M           2604    189097    lug_conexion id    DEFAULT     r   ALTER TABLE ONLY public.lug_conexion ALTER COLUMN id SET DEFAULT nextval('public.lug_conexion_id_seq'::regclass);
 >   ALTER TABLE public.lug_conexion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            N           2604    189098    lug_lugar id    DEFAULT     l   ALTER TABLE ONLY public.lug_lugar ALTER COLUMN id SET DEFAULT nextval('public.lug_lugar_id_seq'::regclass);
 ;   ALTER TABLE public.lug_lugar ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            O           2604    189099    lug_tipolugar id    DEFAULT     t   ALTER TABLE ONLY public.lug_tipolugar ALTER COLUMN id SET DEFAULT nextval('public.lug_tipolugar_id_seq'::regclass);
 ?   ALTER TABLE public.lug_tipolugar ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            Q           2604    189155    res_users id    DEFAULT     l   ALTER TABLE ONLY public.res_users ALTER COLUMN id SET DEFAULT nextval('public.res_users_id_seq'::regclass);
 ;   ALTER TABLE public.res_users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            R           2604    189158    ser_hotel id    DEFAULT     l   ALTER TABLE ONLY public.ser_hotel ALTER COLUMN id SET DEFAULT nextval('public.ser_hotel_id_seq'::regclass);
 ;   ALTER TABLE public.ser_hotel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            S           2604    189159    ser_paquete id    DEFAULT     p   ALTER TABLE ONLY public.ser_paquete ALTER COLUMN id SET DEFAULT nextval('public.ser_paquete_id_seq'::regclass);
 =   ALTER TABLE public.ser_paquete ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            T           2604    189160    ser_proveedor id    DEFAULT     t   ALTER TABLE ONLY public.ser_proveedor ALTER COLUMN id SET DEFAULT nextval('public.ser_proveedor_id_seq'::regclass);
 ?   ALTER TABLE public.ser_proveedor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            U           2604    189161    ser_ruta id    DEFAULT     j   ALTER TABLE ONLY public.ser_ruta ALTER COLUMN id SET DEFAULT nextval('public.ser_ruta_id_seq'::regclass);
 :   ALTER TABLE public.ser_ruta ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            V           2604    189162    ser_sucursal id    DEFAULT     r   ALTER TABLE ONLY public.ser_sucursal ALTER COLUMN id SET DEFAULT nextval('public.ser_sucursal_id_seq'::regclass);
 >   ALTER TABLE public.ser_sucursal ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            W           2604    189163    ser_tipopaquete id    DEFAULT     x   ALTER TABLE ONLY public.ser_tipopaquete ALTER COLUMN id SET DEFAULT nextval('public.ser_tipopaquete_id_seq'::regclass);
 A   ALTER TABLE public.ser_tipopaquete ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            X           2604    189164    ser_tiposervicio id    DEFAULT     z   ALTER TABLE ONLY public.ser_tiposervicio ALTER COLUMN id SET DEFAULT nextval('public.ser_tiposervicio_id_seq'::regclass);
 B   ALTER TABLE public.ser_tiposervicio ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            Y           2604    189165    ser_turismo id    DEFAULT     p   ALTER TABLE ONLY public.ser_turismo ALTER COLUMN id SET DEFAULT nextval('public.ser_turismo_id_seq'::regclass);
 =   ALTER TABLE public.ser_turismo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            Z           2604    189181    tra_preferencia id    DEFAULT     x   ALTER TABLE ONLY public.tra_preferencia ALTER COLUMN id SET DEFAULT nextval('public.tra_preferencia_id_seq'::regclass);
 A   ALTER TABLE public.tra_preferencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            [           2604    189182    tra_tipousuario id    DEFAULT     x   ALTER TABLE ONLY public.tra_tipousuario ALTER COLUMN id SET DEFAULT nextval('public.tra_tipousuario_id_seq'::regclass);
 A   ALTER TABLE public.tra_tipousuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237            \           2604    189183    tra_tipovehiculo id    DEFAULT     z   ALTER TABLE ONLY public.tra_tipovehiculo ALTER COLUMN id SET DEFAULT nextval('public.tra_tipovehiculo_id_seq'::regclass);
 B   ALTER TABLE public.tra_tipovehiculo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239            ^           2604    189184    tra_usuario id    DEFAULT     p   ALTER TABLE ONLY public.tra_usuario ALTER COLUMN id SET DEFAULT nextval('public.tra_usuario_id_seq'::regclass);
 =   ALTER TABLE public.tra_usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241            _           2604    189185    tra_vehiculo id    DEFAULT     r   ALTER TABLE ONLY public.tra_vehiculo ALTER COLUMN id SET DEFAULT nextval('public.tra_vehiculo_id_seq'::regclass);
 >   ALTER TABLE public.tra_vehiculo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243            m          0    187574    bus_bus 
   TABLE DATA               g   COPY public.bus_bus (id, channel, message, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    198            o          0    187582    bus_presence 
   TABLE DATA               U   COPY public.bus_presence (id, user_id, last_poll, last_presence, status) FROM stdin;
    public       postgres    false    200            q          0    187625    fac_detalle 
   TABLE DATA               ?   COPY public.fac_detalle (id, currency_id, factura_id, requerimiento_id, cantidad, create_uid, create_date, write_uid, write_date, usuario_id, valor_unitario, valor_total) FROM stdin;
    public       postgres    false    202            s          0    187633    fac_factura 
   TABLE DATA               :  COPY public.fac_factura (id, currency_id, codigo, tipo_pago_id, autorizacion_sri, fecha, subtotal0, descuento, comision, ruc, direccion, telefono, aumento, create_uid, create_date, write_uid, write_date, subtotal12, iva12, subtotal, usuario_id, state, email, cliente, proveedor_id, anotaciones, total) FROM stdin;
    public       postgres    false    204            u          0    187641    fac_requerimiento 
   TABLE DATA                 COPY public.fac_requerimiento (id, currency_id, tipo_servicio_id, descripcion, fecha, recoger_casa, compartido, ruta_id, paquete_id, usuario_id, lat_origen, lon_origen, lat_destino, lon_destino, state, usuario_destino_id, vehiculo_id, create_uid, create_date, write_uid, write_date, hora, direccion_casa_moved0, direccion_destino, valor, numero, dejar_casa, direccion_origen, iva, padre_id, turismo_id, hotel_id, codigo, lugar_origen_id, lugar_destino_id, proveedor_id, nombre_cliente, apellido_cliente) FROM stdin;
    public       postgres    false    206            w          0    187649    fac_tipopago 
   TABLE DATA               ?   COPY public.fac_tipopago (id, descripcion, estado, aumento, descuento, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    208            y          0    188065    lug_conexion 
   TABLE DATA               ?   COPY public.lug_conexion (id, lugar_origen_id, lugar_destino_id, duracion_viaje, duracion_entrega, estado, create_uid, create_date, write_uid, write_date, currency_id, padre_id) FROM stdin;
    public       postgres    false    210            {          0    188070 	   lug_lugar 
   TABLE DATA               ?   COPY public.lug_lugar (id, tipo_lugar_id, codigo, nombre, busqueda, estado, create_uid, create_date, write_uid, write_date, currency_id, padre_id, valor_recoger, valor_dejar) FROM stdin;
    public       postgres    false    212            }          0    188078    lug_tipolugar 
   TABLE DATA               h   COPY public.lug_tipolugar (id, descripcion, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    214                      0    188628 	   res_users 
   TABLE DATA               9  COPY public.res_users (id, active, login, password, company_id, partner_id, create_date, signature, action_id, share, create_uid, write_uid, write_date, alias_id, notification_type, out_of_office_message, odoobot_state, website_id, oauth_provider_id, oauth_uid, oauth_access_token, livechat_username) FROM stdin;
    public       postgres    false    216            ?          0    188653 	   ser_hotel 
   TABLE DATA               ?   COPY public.ser_hotel (id, currency_id, usuario_id, lugar_id, descripcion, valor, discapacidad, iva, estado, prioridad, create_uid, create_date, write_uid, write_date, url, indicaciones) FROM stdin;
    public       postgres    false    218            ?          0    188661    ser_paquete 
   TABLE DATA               4  COPY public.ser_paquete (id, currency_id, indicaciones_moved0, conexion_id, tipo_paquete_id, hora_llegada_moved0, hora_recoger_moved0, fin_semana, valor, estado, create_uid, create_date, write_uid, write_date, hora_llegada, hora_recoger, usuario_id, iva, discapacidad, indicaciones, descripcion) FROM stdin;
    public       postgres    false    220            ?          0    188669    ser_proveedor 
   TABLE DATA               ?   COPY public.ser_proveedor (id, currency_id, password, ruc, razon_social, estado, comision, ganancias, pago, create_uid, create_date, write_uid, write_date, email, nombre, apellido, direccion, celular, telefono, prioridad, lugar_id, lat, lon) FROM stdin;
    public       postgres    false    222            ?          0    188677    ser_ruta 
   TABLE DATA               ?   COPY public.ser_ruta (id, currency_id, tipo_vehiculo_id, conexion_id, tipo_frecuencia, hora_moved0, estado, unitario, completo, create_uid, create_date, write_uid, write_date, hora, usuario_id, iva, discapacidad, indicaciones, fecha) FROM stdin;
    public       postgres    false    224            ?          0    188685    ser_sucursal 
   TABLE DATA               ?   COPY public.ser_sucursal (id, currency_id, usuario_id, lugar_id, direccion, lat, lon, telefono, email, comision, ganancias, pago, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    226            ?          0    188693    ser_tipopaquete 
   TABLE DATA               ?   COPY public.ser_tipopaquete (id, tipo_paquete, aumento, descuento, comision, estado, create_uid, create_date, write_uid, write_date, currency_id, peso, valor_referencial) FROM stdin;
    public       postgres    false    228            ?          0    188701    ser_tiposervicio 
   TABLE DATA               ?   COPY public.ser_tiposervicio (id, descripcion, create_uid, create_date, write_uid, write_date, aumento, descuento, comision, estado) FROM stdin;
    public       postgres    false    230            ?          0    188709    ser_turismo 
   TABLE DATA               ?   COPY public.ser_turismo (id, currency_id, usuario_id, lugar_id, fecha, hora, descripcion, indicaciones, valor, discapacidad, iva, estado, frecuencia, create_uid, create_date, write_uid, write_date, url) FROM stdin;
    public       postgres    false    232            ?          0    188831    tra_preferencia 
   TABLE DATA               r   COPY public.tra_preferencia (id, descripcion, estado, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    234            ?          0    188839    tra_preferencia_tra_usuario_rel 
   TABLE DATA               ]   COPY public.tra_preferencia_tra_usuario_rel (tra_usuario_id, tra_preferencia_id) FROM stdin;
    public       postgres    false    236            ?          0    188842    tra_tipousuario 
   TABLE DATA               ?   COPY public.tra_tipousuario (id, descripcion, descuento, aumento, comision, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    237            ?          0    188850    tra_tipovehiculo 
   TABLE DATA               ?   COPY public.tra_tipovehiculo (id, descripcion, descuento, aumento, comision, estado, create_uid, create_date, write_uid, write_date, nro_asiento, capacidad) FROM stdin;
    public       postgres    false    239            ?          0    188858    tra_usuario 
   TABLE DATA               4  COPY public.tra_usuario (id, currency_id, tipo_id, password, ruc, estado, comision, ganancias, pago, lugar_id, create_uid, create_date, write_uid, write_date, display_name, email, nombre, apellido, direccion, lat, lon, discapacidad, razon_social, prioridad, padre_id, telefono, cod_recuperacion) FROM stdin;
    public       postgres    false    241            ?          0    188867    tra_vehiculo 
   TABLE DATA               ?   COPY public.tra_vehiculo (id, placa, modelo, marca, color, nro_asiento, estado, tipo_vehiculo_id, create_uid, create_date, write_uid, write_date, propietario_id_moved0, propietario_id_moved1, usuario_id, capacidad) FROM stdin;
    public       postgres    false    243                       0    0    base_cache_signaling    SEQUENCE SET     D   SELECT pg_catalog.setval('public.base_cache_signaling', 111, true);
            public       postgres    false    196                       0    0    base_registry_signaling    SEQUENCE SET     G   SELECT pg_catalog.setval('public.base_registry_signaling', 449, true);
            public       postgres    false    197                       0    0    bus_bus_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bus_bus_id_seq', 65, true);
            public       postgres    false    199                       0    0    bus_presence_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bus_presence_id_seq', 1, true);
            public       postgres    false    201                       0    0    fac_detalle_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fac_detalle_id_seq', 332, true);
            public       postgres    false    203                       0    0    fac_factura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fac_factura_id_seq', 735, true);
            public       postgres    false    205                       0    0    fac_requerimiento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.fac_requerimiento_id_seq', 881, true);
            public       postgres    false    207                       0    0    fac_tipopago_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fac_tipopago_id_seq', 4, true);
            public       postgres    false    209                        0    0    lug_conexion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lug_conexion_id_seq', 53, true);
            public       postgres    false    211            !           0    0    lug_lugar_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lug_lugar_id_seq', 19, true);
            public       postgres    false    213            "           0    0    lug_tipolugar_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lug_tipolugar_id_seq', 4, true);
            public       postgres    false    215            #           0    0    res_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.res_users_id_seq', 7, true);
            public       postgres    false    217            $           0    0    ser_hotel_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ser_hotel_id_seq', 3, true);
            public       postgres    false    219            %           0    0    ser_paquete_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ser_paquete_id_seq', 8, true);
            public       postgres    false    221            &           0    0    ser_proveedor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ser_proveedor_id_seq', 3, true);
            public       postgres    false    223            '           0    0    ser_ruta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ser_ruta_id_seq', 98, true);
            public       postgres    false    225            (           0    0    ser_sucursal_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ser_sucursal_id_seq', 1, true);
            public       postgres    false    227            )           0    0    ser_tipopaquete_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ser_tipopaquete_id_seq', 4, true);
            public       postgres    false    229            *           0    0    ser_tiposervicio_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ser_tiposervicio_id_seq', 4, true);
            public       postgres    false    231            +           0    0    ser_turismo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ser_turismo_id_seq', 1, true);
            public       postgres    false    233            ,           0    0    tra_preferencia_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tra_preferencia_id_seq', 3, true);
            public       postgres    false    235            -           0    0    tra_tipousuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tra_tipousuario_id_seq', 5, true);
            public       postgres    false    238            .           0    0    tra_tipovehiculo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tra_tipovehiculo_id_seq', 7, true);
            public       postgres    false    240            /           0    0    tra_usuario_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tra_usuario_id_seq', 18, true);
            public       postgres    false    242            0           0    0    tra_vehiculo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tra_vehiculo_id_seq', 29, true);
            public       postgres    false    244            a           2606    189333    bus_bus bus_bus_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_pkey;
       public         postgres    false    198            c           2606    189335 2   bus_presence bus_presence_bus_user_presence_unique 
   CONSTRAINT     p   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_bus_user_presence_unique UNIQUE (user_id);
 \   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_bus_user_presence_unique;
       public         postgres    false    200            1           0    0 @   CONSTRAINT bus_presence_bus_user_presence_unique ON bus_presence    COMMENT     i   COMMENT ON CONSTRAINT bus_presence_bus_user_presence_unique ON public.bus_presence IS 'unique(user_id)';
            public       postgres    false    2915            e           2606    189337    bus_presence bus_presence_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_pkey;
       public         postgres    false    200            h           2606    189353    fac_detalle fac_detalle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_pkey;
       public         postgres    false    202            j           2606    189355    fac_factura fac_factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_pkey;
       public         postgres    false    204            l           2606    189357 (   fac_requerimiento fac_requerimiento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_pkey;
       public         postgres    false    206            n           2606    189359    fac_tipopago fac_tipopago_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_pkey;
       public         postgres    false    208            p           2606    189493    lug_conexion lug_conexion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_pkey;
       public         postgres    false    210            r           2606    189495    lug_lugar lug_lugar_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_pkey;
       public         postgres    false    212            t           2606    189497     lug_tipolugar lug_tipolugar_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_pkey;
       public         postgres    false    214            v           2606    189713    res_users res_users_login_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_login_key UNIQUE (login, website_id);
 G   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_login_key;
       public         postgres    false    216    216            2           0    0 +   CONSTRAINT res_users_login_key ON res_users    COMMENT     _   COMMENT ON CONSTRAINT res_users_login_key ON public.res_users IS 'unique (login, website_id)';
            public       postgres    false    2934            x           2606    189715    res_users res_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_pkey;
       public         postgres    false    216            z           2606    189717 7   res_users res_users_uniq_users_oauth_provider_oauth_uid 
   CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid UNIQUE (oauth_provider_id, oauth_uid);
 a   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid;
       public         postgres    false    216    216            3           0    0 E   CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid ON res_users    COMMENT     ?   COMMENT ON CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid ON public.res_users IS 'unique(oauth_provider_id, oauth_uid)';
            public       postgres    false    2938            |           2606    189723    ser_hotel ser_hotel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_pkey;
       public         postgres    false    218            ~           2606    189725    ser_paquete ser_paquete_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_pkey;
       public         postgres    false    220            ?           2606    189727     ser_proveedor ser_proveedor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_pkey;
       public         postgres    false    222            ?           2606    189729    ser_ruta ser_ruta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_pkey;
       public         postgres    false    224            ?           2606    189731    ser_sucursal ser_sucursal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_pkey;
       public         postgres    false    226            ?           2606    189733 $   ser_tipopaquete ser_tipopaquete_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_pkey;
       public         postgres    false    228            ?           2606    189735 &   ser_tiposervicio ser_tiposervicio_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_pkey;
       public         postgres    false    230            ?           2606    189737    ser_turismo ser_turismo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_pkey;
       public         postgres    false    232            ?           2606    189769 $   tra_preferencia tra_preferencia_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_pkey;
       public         postgres    false    234            ?           2606    189771 _   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key UNIQUE (tra_usuario_id, tra_preferencia_id);
 ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key;
       public         postgres    false    236    236            ?           2606    189773 $   tra_tipousuario tra_tipousuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_pkey;
       public         postgres    false    237            ?           2606    189775 &   tra_tipovehiculo tra_tipovehiculo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_pkey;
       public         postgres    false    239            ?           2606    189777    tra_usuario tra_usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_pkey;
       public         postgres    false    241            ?           2606    189779    tra_vehiculo tra_vehiculo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_pkey;
       public         postgres    false    243            f           1259    189834    bus_presence_user_id_index    INDEX     V   CREATE INDEX bus_presence_user_id_index ON public.bus_presence USING btree (user_id);
 .   DROP INDEX public.bus_presence_user_id_index;
       public         postgres    false    200            ?           1259    190080 6   tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx    INDEX     ?   CREATE INDEX tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx ON public.tra_preferencia_tra_usuario_rel USING btree (tra_preferencia_id);
 J   DROP INDEX public.tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx;
       public         postgres    false    236            ?           1259    190081 2   tra_preferencia_tra_usuario_rel_tra_usuario_id_idx    INDEX     ?   CREATE INDEX tra_preferencia_tra_usuario_rel_tra_usuario_id_idx ON public.tra_preferencia_tra_usuario_rel USING btree (tra_usuario_id);
 F   DROP INDEX public.tra_preferencia_tra_usuario_rel_tra_usuario_id_idx;
       public         postgres    false    236            ?           1259    190082    tra_usuario_display_name_index    INDEX     ^   CREATE INDEX tra_usuario_display_name_index ON public.tra_usuario USING btree (display_name);
 2   DROP INDEX public.tra_usuario_display_name_index;
       public         postgres    false    241            ?           2606    190475    bus_bus bus_bus_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_create_uid_fkey;
       public       postgres    false    2936    216    198            ?           2606    190480    bus_bus bus_bus_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_write_uid_fkey;
       public       postgres    false    2936    198    216            ?           2606    190485 &   bus_presence bus_presence_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_user_id_fkey;
       public       postgres    false    2936    200    216            ?           2606    190596 '   fac_detalle fac_detalle_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_create_uid_fkey;
       public       postgres    false    2936    202    216            ?           2606    190606 '   fac_detalle fac_detalle_factura_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_factura_id_fkey FOREIGN KEY (factura_id) REFERENCES public.fac_factura(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_factura_id_fkey;
       public       postgres    false    2922    202    204            ?           2606    190611 -   fac_detalle fac_detalle_requerimiento_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_requerimiento_id_fkey FOREIGN KEY (requerimiento_id) REFERENCES public.fac_requerimiento(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_requerimiento_id_fkey;
       public       postgres    false    2924    202    206            ?           2606    190616 '   fac_detalle fac_detalle_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_usuario_id_fkey;
       public       postgres    false    2967    241    202            ?           2606    190621 &   fac_detalle fac_detalle_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_write_uid_fkey;
       public       postgres    false    2936    216    202            ?           2606    190626 '   fac_factura fac_factura_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_create_uid_fkey;
       public       postgres    false    204    2936    216            ?           2606    190636 )   fac_factura fac_factura_proveedor_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_proveedor_id_fkey;
       public       postgres    false    204    241    2967            ?           2606    190641 )   fac_factura fac_factura_tipo_pago_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_tipo_pago_id_fkey FOREIGN KEY (tipo_pago_id) REFERENCES public.fac_tipopago(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_tipo_pago_id_fkey;
       public       postgres    false    204    208    2926            ?           2606    190646 '   fac_factura fac_factura_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_usuario_id_fkey;
       public       postgres    false    204    241    2967            ?           2606    190651 &   fac_factura fac_factura_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_write_uid_fkey;
       public       postgres    false    204    216    2936            ?           2606    190658 3   fac_requerimiento fac_requerimiento_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_create_uid_fkey;
       public       postgres    false    206    216    2936            ?           2606    190671 1   fac_requerimiento fac_requerimiento_hotel_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.ser_hotel(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_hotel_id_fkey;
       public       postgres    false    206    218    2940            ?           2606    190677 9   fac_requerimiento fac_requerimiento_lugar_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_lugar_destino_id_fkey FOREIGN KEY (lugar_destino_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_lugar_destino_id_fkey;
       public       postgres    false    206    212    2930            ?           2606    190682 8   fac_requerimiento fac_requerimiento_lugar_origen_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_lugar_origen_id_fkey FOREIGN KEY (lugar_origen_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_lugar_origen_id_fkey;
       public       postgres    false    206    212    2930            ?           2606    190687 1   fac_requerimiento fac_requerimiento_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.fac_requerimiento(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_padre_id_fkey;
       public       postgres    false    206    206    2924            ?           2606    190692 3   fac_requerimiento fac_requerimiento_paquete_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_paquete_id_fkey FOREIGN KEY (paquete_id) REFERENCES public.ser_paquete(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_paquete_id_fkey;
       public       postgres    false    2942    220    206            ?           2606    190699 5   fac_requerimiento fac_requerimiento_proveedor_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_proveedor_id_fkey;
       public       postgres    false    241    2967    206            ?           2606    190706 0   fac_requerimiento fac_requerimiento_ruta_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_ruta_id_fkey FOREIGN KEY (ruta_id) REFERENCES public.ser_ruta(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_ruta_id_fkey;
       public       postgres    false    206    2946    224            ?           2606    190711 9   fac_requerimiento fac_requerimiento_tipo_servicio_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_tipo_servicio_id_fkey FOREIGN KEY (tipo_servicio_id) REFERENCES public.ser_tiposervicio(id) ON DELETE RESTRICT;
 c   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_tipo_servicio_id_fkey;
       public       postgres    false    206    230    2952            ?           2606    190716 3   fac_requerimiento fac_requerimiento_turismo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_turismo_id_fkey FOREIGN KEY (turismo_id) REFERENCES public.ser_turismo(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_turismo_id_fkey;
       public       postgres    false    206    232    2954            ?           2606    190721 ;   fac_requerimiento fac_requerimiento_usuario_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_usuario_destino_id_fkey FOREIGN KEY (usuario_destino_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_usuario_destino_id_fkey;
       public       postgres    false    2967    241    206            ?           2606    190726 3   fac_requerimiento fac_requerimiento_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_usuario_id_fkey;
       public       postgres    false    206    241    2967            ?           2606    190731 4   fac_requerimiento fac_requerimiento_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_vehiculo_id_fkey FOREIGN KEY (vehiculo_id) REFERENCES public.tra_vehiculo(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_vehiculo_id_fkey;
       public       postgres    false    2969    206    243            ?           2606    190736 2   fac_requerimiento fac_requerimiento_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_write_uid_fkey;
       public       postgres    false    2936    206    216            ?           2606    190741 )   fac_tipopago fac_tipopago_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_create_uid_fkey;
       public       postgres    false    216    208    2936            ?           2606    190746 (   fac_tipopago fac_tipopago_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_write_uid_fkey;
       public       postgres    false    2936    216    208            ?           2606    191670 )   lug_conexion lug_conexion_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_create_uid_fkey;
       public       postgres    false    216    2936    210            ?           2606    191680 /   lug_conexion lug_conexion_lugar_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_lugar_destino_id_fkey FOREIGN KEY (lugar_destino_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_lugar_destino_id_fkey;
       public       postgres    false    210    212    2930            ?           2606    191685 .   lug_conexion lug_conexion_lugar_origen_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_lugar_origen_id_fkey FOREIGN KEY (lugar_origen_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_lugar_origen_id_fkey;
       public       postgres    false    212    2930    210            ?           2606    191690 '   lug_conexion lug_conexion_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.lug_conexion(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_padre_id_fkey;
       public       postgres    false    210    210    2928            ?           2606    191695 (   lug_conexion lug_conexion_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_write_uid_fkey;
       public       postgres    false    216    210    2936            ?           2606    191700 #   lug_lugar lug_lugar_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_create_uid_fkey;
       public       postgres    false    2936    216    212            ?           2606    191710 !   lug_lugar lug_lugar_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_padre_id_fkey;
       public       postgres    false    212    2930    212            ?           2606    191715 &   lug_lugar lug_lugar_tipo_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_tipo_lugar_id_fkey FOREIGN KEY (tipo_lugar_id) REFERENCES public.lug_tipolugar(id) ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_tipo_lugar_id_fkey;
       public       postgres    false    214    2932    212            ?           2606    191720 "   lug_lugar lug_lugar_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_write_uid_fkey;
       public       postgres    false    216    212    2936            ?           2606    191725 +   lug_tipolugar lug_tipolugar_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_create_uid_fkey;
       public       postgres    false    2936    214    216            ?           2606    191730 *   lug_tipolugar lug_tipolugar_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_write_uid_fkey;
       public       postgres    false    214    2936    216            ?           2606    193205 #   res_users res_users_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_create_uid_fkey;
       public       postgres    false    216    216    2936            ?           2606    193235 "   res_users res_users_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_write_uid_fkey;
       public       postgres    false    2936    216    216            ?           2606    193265 #   ser_hotel ser_hotel_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_create_uid_fkey;
       public       postgres    false    216    2936    218            ?           2606    193275 !   ser_hotel ser_hotel_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_lugar_id_fkey;
       public       postgres    false    2930    218    212            ?           2606    193280 #   ser_hotel ser_hotel_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_usuario_id_fkey;
       public       postgres    false    218    2967    241            ?           2606    193285 "   ser_hotel ser_hotel_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_write_uid_fkey;
       public       postgres    false    2936    216    218            ?           2606    193290 (   ser_paquete ser_paquete_conexion_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_conexion_id_fkey FOREIGN KEY (conexion_id) REFERENCES public.lug_conexion(id) ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_conexion_id_fkey;
       public       postgres    false    220    210    2928            ?           2606    193295 '   ser_paquete ser_paquete_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_create_uid_fkey;
       public       postgres    false    216    220    2936            ?           2606    193305 ,   ser_paquete ser_paquete_tipo_paquete_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_tipo_paquete_id_fkey FOREIGN KEY (tipo_paquete_id) REFERENCES public.ser_tipopaquete(id) ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_tipo_paquete_id_fkey;
       public       postgres    false    2950    220    228            ?           2606    193310 '   ser_paquete ser_paquete_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_usuario_id_fkey;
       public       postgres    false    220    241    2967            ?           2606    193315 &   ser_paquete ser_paquete_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_write_uid_fkey;
       public       postgres    false    220    2936    216            ?           2606    193320 +   ser_proveedor ser_proveedor_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_create_uid_fkey;
       public       postgres    false    2936    216    222            ?           2606    193330 )   ser_proveedor ser_proveedor_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_lugar_id_fkey;
       public       postgres    false    212    2930    222            ?           2606    193335 *   ser_proveedor ser_proveedor_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_write_uid_fkey;
       public       postgres    false    216    222    2936            ?           2606    193340 "   ser_ruta ser_ruta_conexion_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_conexion_id_fkey FOREIGN KEY (conexion_id) REFERENCES public.lug_conexion(id) ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_conexion_id_fkey;
       public       postgres    false    210    2928    224            ?           2606    193345 !   ser_ruta ser_ruta_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_create_uid_fkey;
       public       postgres    false    224    216    2936            ?           2606    193355 '   ser_ruta ser_ruta_tipo_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_tipo_vehiculo_id_fkey FOREIGN KEY (tipo_vehiculo_id) REFERENCES public.tra_tipovehiculo(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_tipo_vehiculo_id_fkey;
       public       postgres    false    224    2964    239            ?           2606    193360 !   ser_ruta ser_ruta_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_usuario_id_fkey;
       public       postgres    false    2967    224    241            ?           2606    193365     ser_ruta ser_ruta_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_write_uid_fkey;
       public       postgres    false    224    2936    216            ?           2606    193370 )   ser_sucursal ser_sucursal_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_create_uid_fkey;
       public       postgres    false    216    226    2936            ?           2606    193380 '   ser_sucursal ser_sucursal_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_lugar_id_fkey;
       public       postgres    false    2930    226    212            ?           2606    193385 )   ser_sucursal ser_sucursal_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_usuario_id_fkey;
       public       postgres    false    2967    241    226            ?           2606    193390 (   ser_sucursal ser_sucursal_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_write_uid_fkey;
       public       postgres    false    216    226    2936            ?           2606    193395 /   ser_tipopaquete ser_tipopaquete_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_create_uid_fkey;
       public       postgres    false    216    228    2936            ?           2606    193405 .   ser_tipopaquete ser_tipopaquete_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_write_uid_fkey;
       public       postgres    false    216    2936    228            ?           2606    193410 1   ser_tiposervicio ser_tiposervicio_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_create_uid_fkey;
       public       postgres    false    230    2936    216            ?           2606    193415 0   ser_tiposervicio ser_tiposervicio_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_write_uid_fkey;
       public       postgres    false    216    2936    230            ?           2606    193420 '   ser_turismo ser_turismo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_create_uid_fkey;
       public       postgres    false    2936    216    232            ?           2606    193430 %   ser_turismo ser_turismo_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_lugar_id_fkey;
       public       postgres    false    2930    212    232            ?           2606    193435 '   ser_turismo ser_turismo_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_usuario_id_fkey;
       public       postgres    false    241    232    2967            ?           2606    193440 &   ser_turismo ser_turismo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_write_uid_fkey;
       public       postgres    false    232    216    2936            ?           2606    193725 /   tra_preferencia tra_preferencia_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_create_uid_fkey;
       public       postgres    false    216    234    2936            ?           2606    193730 W   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey FOREIGN KEY (tra_preferencia_id) REFERENCES public.tra_preferencia(id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey;
       public       postgres    false    234    2956    236            ?           2606    193735 S   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey FOREIGN KEY (tra_usuario_id) REFERENCES public.tra_usuario(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey;
       public       postgres    false    2967    236    241            ?           2606    193740 .   tra_preferencia tra_preferencia_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_write_uid_fkey;
       public       postgres    false    216    234    2936            ?           2606    193745 /   tra_tipousuario tra_tipousuario_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_create_uid_fkey;
       public       postgres    false    237    216    2936            ?           2606    193750 .   tra_tipousuario tra_tipousuario_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_write_uid_fkey;
       public       postgres    false    2936    216    237            ?           2606    193755 1   tra_tipovehiculo tra_tipovehiculo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_create_uid_fkey;
       public       postgres    false    239    216    2936            ?           2606    193760 0   tra_tipovehiculo tra_tipovehiculo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_write_uid_fkey;
       public       postgres    false    2936    216    239            ?           2606    193765 '   tra_usuario tra_usuario_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_create_uid_fkey;
       public       postgres    false    216    2936    241            ?           2606    193775 %   tra_usuario tra_usuario_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_lugar_id_fkey;
       public       postgres    false    2930    241    212            ?           2606    193780 %   tra_usuario tra_usuario_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_padre_id_fkey;
       public       postgres    false    241    2967    241            ?           2606    193785 $   tra_usuario tra_usuario_tipo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_tipo_id_fkey FOREIGN KEY (tipo_id) REFERENCES public.tra_tipousuario(id) ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_tipo_id_fkey;
       public       postgres    false    2962    241    237            ?           2606    193790 &   tra_usuario tra_usuario_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_write_uid_fkey;
       public       postgres    false    216    241    2936            ?           2606    193795 )   tra_vehiculo tra_vehiculo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_create_uid_fkey;
       public       postgres    false    243    2936    216            ?           2606    193800 /   tra_vehiculo tra_vehiculo_tipo_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_tipo_vehiculo_id_fkey FOREIGN KEY (tipo_vehiculo_id) REFERENCES public.tra_tipovehiculo(id) ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_tipo_vehiculo_id_fkey;
       public       postgres    false    239    243    2964            ?           2606    193805 )   tra_vehiculo tra_vehiculo_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_usuario_id_fkey;
       public       postgres    false    243    2967    241            ?           2606    193810 (   tra_vehiculo tra_vehiculo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_write_uid_fkey;
       public       postgres    false    243    2936    216            m   ?  x??XMo?8=[???ٖ%R?>)?=졧?-1Z?c???%?4I???CK???0?nQ?/4Ï73???`r?????W?V?h??0n?uS	?fd9??d??*^
??^?ȶ??IH?X?yH}>|?y??$?=?{<Z? F??7v??E?Ҥ??d)_,??V?P??U%??y??????????\??6`)???,d???5/?/U?????n?Y?????+nD??ve2-?nV?C???}??0????"???f??HP???m????J?]????Qe:??evB?+?J??̇???:?ފRA????????J?o&7≗u!?L??u?M'??r?p?h?C.?K?????????ws?=??&??Zm???G?M??,???t??x?3k,_'x?=?ͽx???%4Hqc??|??Pz??.??n???ۈP?Z򶦣mg??obe???{?y/sÈ?(:?t(?????Q?÷%?	?Z??p_??U??E}??N/?w	???f?:?w?????????̦?T_?\O?ȝ???ó ?ӫ?S`!?I???+f??ں?A">???	?@??;/"k??;??,X?M{??"S:O?dvP	?[Q???2Y?r??Z?:r?q`C?x???Յy?٦Fh=Ƚ}7?ˋC??r????;?ix??????g_-Iyъ?}??G?l?`J?;?Εj?X?si ???P?\??~??k????? t?????kaÖ?b???????R??????C?u:4?\̗???\?A??4?r?????s>+??*?!?6\h????>v1Ŕ?g??.R??;?<?\???гN???????О&q#/ ?DW<r:???=m?e󜶵??-sw??%?f?@&???G????a?!??V?C's???FN???I?G?u??i?l??x\;Jl?????????H?gӏ?(???[?_P߭c????Q{??
p̠Q?p???O?8&!?8hD??#??ۻV?zN?|?????ף' B?????f???"q?y?Bt?a5:[??aaJY?筫Ϝ????k???r?q_?????"?d?p?ǏQ???????=?t؉???_???O?؋??Ż??????!?q????'^?'???s?V??r??ܻ????vf      o   ;   x?3?4?4202?5??54R0??24?24E30?22ѳ01336??OK???K?????? ???      q   ?   x?u??	?0??礘?d??IW???q??aDT>????z9?%Z+V???j??f?fB?h?h??ȅ???8????t??~?????BA?v?]?-!??JD?ZD?m?易???8-?S?????"????8-fک?8-f????"??.?ⴈW?x??#?P????"=?)?q<?㙒???7 :???s??      s   ?  x????J?0????)? n䜤_w??????x?:??V?v??7???Ɇ?6#?d?ů????o??>??
???c???s	*??}?u???E???? Ǩ?JA???{???^X???l?7],??"??N?2gW?˻????-??C?sS4uYq]?Y????Wښ?f2E?[t???-)[z?V????FѮ߱?NPiГ??pH??	?ح#?Q9vD????n&??ٻ???!ץmRSn$???"???!?]Ë?4??ė)po??ݽ?~?????.?????k?}Skg???j?ʔ???NJc??ة?0??c?Mˇ??%?e??a?| ?4?4v?$?D?l??????^5?p?;??&+Rw?????+&??0Pv?D?>E??R??y؉?b??'????_ؒ?Q
o?4??a?8J??MK)?7lZJ?+%?`ٴ?2???<?F:6??      u   ?  x????n?0 ?k?)? ?d?vs?Vkv?m?????#Dc#??S5o?'???XuA?	???V??C?Y?'??	!??*5^D	~**?????}??1??5	̌?淽?ns`???)?\???)^ei??????q?|b&eX
Q?8j???i?m6Rc2H?aus????Q??sg????q?7۸?W?It(m G???5Rj??-???[?i??y??E??q??:)????k?u;?a? ??&???0?c?+ܹ??W?xE???^Y{??\????<^??-k?ZvyTZ?_??G?8?%????KS3h?^??I$??????@F.Iz?
 #	ڣ??????-Z??X??M??ַ~???r?  ?ˑ8@_?4H?r$???}O$ ??>a?	??%?ߠ??8???Z,ka?3??_?D~O???2????X,d?bi?=??????¿ÿd??#%???$????}JZ?.?{??_??N?????qk?
O?(??.??"?;?ƾo?~ݤC?dW??<???9?3?=?sp???t虜?+ ?&W\5L????\ ?)??f ??
??(:L.??r?,??a]???c7?n?????@??.?W>?M??w?|?&h=5kCvH?!?Sk??cƭ?;??fއ???ޞ?F? ?p,Q      w   ?   x?}?M
?0???)r?????Iv?4BE??n?????FA]???0?]?˾???Y?N??}V?:????8`(Ya!q!#Rz?,b??t?(????mU;5[{??????m?????#p??Y?/+~??i?{?[??,Y?x?????؇??,?a'!F?CssƘ??@?      y   ?   x?}??iD!F?Ul;??yY?V?e??1???+"G??72$0??t?!?'ٓ??1:sd?nq?:z ?f2?_s5Y6&P???A*??WhC???l??M]~?Cc?W>í?+\@?`?A?e?vd?e?U`???%?VVg?m???5???dU?B??3ܶ??????u??s.?z??E?'???q
??o?7?־U<k?      {   .  x?u??n?0???}?
?%?7??n???aE?{???F?[??2????B?
-p ???t???(<?<?>`?H*Y?)???Q,	Q?8? B???,?t???? M??u??$??-7W?K᭞??|>mՌ"*vm?b???1?q?O?s?ա???? ??CJ?GT)I?????z;?'??????y ?????<D#3.?O???yv??u]?+AD?,????1?ݻ???Ɨ?q|?[??(?8w??NL????ʀ????g؅??)??.l洂[F}2??7?0S'>?.?????V?%?]6?6"+?n?1??0???eM?y??B:$?$?Y@?5???W?>a[??S1?q???6?l??=?4???J????d???߂???mp???Y??t???a??cL??&: D֬/????ґ??\?[po??^@??D??y???l?YJ?N6?5???t??R?T/u??ϛ?????2t?M??W?,U?V_?i??|]???Q}??zqȍ?K??????/?<9??N?o????????? ??@7      }   w   x?}?1? ??"?F`:ƕp??*_ʫ???I?P?????|ާ'$??-?n3sVà??8Ew???붗Q?9?y???V???0?0???+????{??FC$c
^?L^ _6         p  x???ko?@????0?_Af`L?Yh?^*????7E???_??v????6??M?ɜ?w?s? 0??.B??u0??<?Y? Ձ҆?$N????JQ?????2?B?e?G"P?e?????b? ????{??OM,ݒ?	??4g???W؀???F$???!Aʠ??x?'S?l??⯌õ???G^???}?7?Af????}?UE??'C?Х-????0??㼐??c4{??a?,?k??#E?FI%??~??#?,>????????$??i???!?n/?8?????'?/?°P??]`)?t??????e??[? ?ޫ???l5׶]?4<$Z?????$1ֺ??)?xK価8??ɩ???n?h?ݳfi??XM~YRɿ????=L1? ?1??\??+??_:?O.GY??????3?e?????Q????"??e???K???7??%??g??Sހ???MaBN???PuO"'>|???xiAr?|]V?97ޞߏ??LMu?I?=??dbx*VFUh??
:??q????l[D{???a??GrM{?????w?w=?q53?p???=S??{?^????~<&`6?Z
?d????m?@r?ag?r?Pb???a?8Q??#9v???s?Z????y      ?   ?   x???A
?0?????@Cf?I??W=A7??XP#??Ƿ]???,??g???B	ۦ??f??????? ?Ҡ?8?Ҥ?9I&2G???e?9j+o???,TY?{??Iv閏??I???u??????v*pޭ?I?|??I^t?ۥ???=?7?J?m???C???o{Z?      ?   ?  x???KO?0?????D??4????6:?????x({0u?!Ԩ?l????V?U?J?˫r\??i]????HX???d%? 6h??̗M??wa?7ͼ(1ljE??y?,??l??NH?cPF???y??Ѽ7򭑯???}#? 9???W<??#??=??g?[O?vˀ?P?????H?`t T??#?v?¯V1?ֱȟ?^TrT?aYz?R???.??z?s?f?Хd?H???i??_)?	???????⭯Aw???ŧ.|Z???U?????>????=????O8ȊS???,?o!@/տ?W?U?????91?u>_͟?m??-?١??????;9??;hq
?%׽??Wm?D??&E??&?i??e?'?Iw      ?   ?   x???MK?@?ϓ_???efvv?????`?Z??H/KX0??I??zE<zp>N/3/????]?X?ۈu??纩?8??5? ???????\?Di?R:o??L9b0?)?l???SW??S??ulTշ?c?tJ\???"h2??????????Q?(?f??????O?1?XYA_?of>e?E4?5<?q_?i??>-?U?`s???n?_?~??۾bs?s??????؉ 9??rTY?} &uN      ?   $  x????J?0??uz?????4??ZaP??l?P?0?ܿI???(???<??-jш?????Q?Y01?dJ?D*??v??Z	?m????N?D?Z???t??xH7?{???? ?~????.?!vmO)[?K?0??O??????+]X?rh??6??t??_?0?????%??>?*??KXz!U?0?E??i??&Ѡ?W?|8??%?[?????????Q???B-pz??8?`'??c<??????{|?e??%?Y??^?,?4+?ϲ?_??V?S???*??5??#      ?   _   x?3????4?????/I?-?4 AKKKs????????????????\N=86?4202?50?52T04?21?24?322?0??+????? *??      ?   ?   x??б1?ڙ?????\?!??:???ER ????Ғ??)w?jE????!?8#??N??W?0??!??????I?/B???v?#???M?????c?i??h??ES???|?Q-`?~??'?͗?K??KW?*???H?Q?c!?Bv-?<?HNn      ?   ?   x?}?1?0E??\???ĉ??C$?@??2u??G?VE??{????lM}*?#c?R?(f?L
>$h??y?֙~??????s???9?Ge???O?7Ƕ/??5??ǀ>?????QqA?A@??X ?k}J?!,?a?????%pF?H?B?? 9??>kB?`?}??BA      ?   ?   x?M?9?  ??| ??7m?(/pc9V@"?2???2?rFc`y?,???+?`???W??tnW?<??^/iH~?????z??G?P??v|,*$eoҺD?L?Β??/?8%?ɑ?3 3?i?j?֚[??q?B? U;(&      ?   l   x?}???0г=Eh?|?q??A ?Z5??1X??X? ?'?D?s??^BD?4?< UrU??.2h?v]o?D?垱??/??????ο*??B?ɠ]?g`?/?f+5      ?      x?3?4?2?4?2?1z\\\ P      ?   ?   x?}?1? Eg8E.d??-J"?I?S???vi?ooO~??bZ渖(?=(z?^?1??^?lJ%?k޷T?\??>???{n1iD??)??Q@p?n?M0H+f???PZ????mK??Qw?q0?<;t-&I?c:R??H?9?wQt????????WFHi?Y>?????O?      ?     x???;n?0D??)r??.??#??*b??1r?)WI??R`?3?>̌??e:Mo?# `Bſ{?y???002?Pw?O?M?)&BC*??6?$^???x:L?????.??P}???+hkZSA?R?7g???????A^a??9U&q?5k?\???Ba ???x???,/?TZʶL,?)g]??N?<?24G???S???j??T?Tl?A-??_???`????-?i?????g?????˴?????	? ??S/?ֲ4??R,Ӎ???-??}??;?=??Ɉ??      ?   ?  x??U?r?0}??BP3Z!	?S??$?i??!???Ec?LjL;????N??	hB{???`??b??8"@? ??h??G?&E?P?%?K?????(?%;L?aB"?G<???X7??.???R??7?Jt?????᾿j???r??_?Kҡ?l?a?D%c????fln?s&?	? 1?#p"??s???F??B???h>Ss??Vg?s?e???&?"?<J?1:???Q?rå5????<-Xi?s??? ?%q? f????H??nZ4?uc???"?wy6Wx?[?O??dˉ??FM??ROJJu??@z??u?x?q???"?K?4?F"o??굎?B?캏?;???!v???2??boN2;???u???3?????Ϸ????y??š?/Nk??TWp??F!?L/ ??Z?4
B?`????)+Tv2ŃkԻ4"??^kZWv1iw7??,u?I??W?[瓬?d???Vy?L??|Q̋??-?z???%uKW??????q?gR?L?????m?????U<??6?T??? 9B(?w??⥟g?J????????dp1?i'?!
\r3#"Y??	?9?49??s֊n??h&O???|BĞ"?v???? _????6	%?z?Y1?G??rZ?F>???O?௲??@
b??JU,?M󬖋h?iC??=M?ɛ???s??v??zZ??????_)/˲?b??z??f?1??o?Q????_3??M???t: ?,??      ?   q  x???Mk?0??ʯ?? ?vl??6??~??e+??]???V??g?Y;֦,	??G?????2?F(??yn??^?V?9?"0?#p  $?Q??<0?	?	???՟C?q?q?`?*4???????ƀ??ŦZL????u??/w)?}A?QB$S#o?H%ʤ?x?b^&?춫i???z4b,??1?d\}??$^?N???l??6L??N????k(??_????V?P`Q??OM_??????Y]?$V??z2??ǅr??????X?+8?6_?o?1?O?????vR[??YQ??????v?????y\?0??ܞa??? ???i}-???W@???K{??1~?2]?(aK????❅)_a?DQ????p      n   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    187352    Presentacion    DATABASE     ~   CREATE DATABASE "Presentacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE "Presentacion";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            ?            1259    187361    base_cache_signaling    SEQUENCE     }   CREATE SEQUENCE public.base_cache_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_cache_signaling;
       public       postgres    false    3            ?            1259    187564    base_registry_signaling    SEQUENCE     ?   CREATE SEQUENCE public.base_registry_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.base_registry_signaling;
       public       postgres    false    3            ?            1259    187574    bus_bus    TABLE     ?   CREATE TABLE public.bus_bus (
    id integer NOT NULL,
    channel character varying,
    message character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
    DROP TABLE public.bus_bus;
       public         postgres    false    3            ?           0    0    TABLE bus_bus    COMMENT     8   COMMENT ON TABLE public.bus_bus IS 'Communication Bus';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.channel    COMMENT     7   COMMENT ON COLUMN public.bus_bus.channel IS 'Channel';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.message    COMMENT     7   COMMENT ON COLUMN public.bus_bus.message IS 'Message';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.create_uid    COMMENT     =   COMMENT ON COLUMN public.bus_bus.create_uid IS 'Created by';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.create_date    COMMENT     >   COMMENT ON COLUMN public.bus_bus.create_date IS 'Created on';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.write_uid    COMMENT     A   COMMENT ON COLUMN public.bus_bus.write_uid IS 'Last Updated by';
            public       postgres    false    198            ?           0    0    COLUMN bus_bus.write_date    COMMENT     B   COMMENT ON COLUMN public.bus_bus.write_date IS 'Last Updated on';
            public       postgres    false    198            ?            1259    187580    bus_bus_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bus_bus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bus_bus_id_seq;
       public       postgres    false    198    3            ?           0    0    bus_bus_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bus_bus_id_seq OWNED BY public.bus_bus.id;
            public       postgres    false    199            ?            1259    187582    bus_presence    TABLE     ?   CREATE TABLE public.bus_presence (
    id integer NOT NULL,
    user_id integer NOT NULL,
    last_poll timestamp without time zone,
    last_presence timestamp without time zone,
    status character varying
);
     DROP TABLE public.bus_presence;
       public         postgres    false    3            ?           0    0    TABLE bus_presence    COMMENT     9   COMMENT ON TABLE public.bus_presence IS 'User Presence';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.user_id    COMMENT     :   COMMENT ON COLUMN public.bus_presence.user_id IS 'Users';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.last_poll    COMMENT     @   COMMENT ON COLUMN public.bus_presence.last_poll IS 'Last Poll';
            public       postgres    false    200            ?           0    0 !   COLUMN bus_presence.last_presence    COMMENT     H   COMMENT ON COLUMN public.bus_presence.last_presence IS 'Last Presence';
            public       postgres    false    200            ?           0    0    COLUMN bus_presence.status    COMMENT     =   COMMENT ON COLUMN public.bus_presence.status IS 'IM Status';
            public       postgres    false    200            ?            1259    187588    bus_presence_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bus_presence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.bus_presence_id_seq;
       public       postgres    false    200    3            ?           0    0    bus_presence_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.bus_presence_id_seq OWNED BY public.bus_presence.id;
            public       postgres    false    201            ?            1259    187625    fac_detalle    TABLE     w  CREATE TABLE public.fac_detalle (
    id integer NOT NULL,
    currency_id integer,
    factura_id integer,
    requerimiento_id integer,
    cantidad integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    usuario_id integer,
    valor_unitario numeric,
    valor_total numeric
);
    DROP TABLE public.fac_detalle;
       public         postgres    false    3            ?           0    0    TABLE fac_detalle    COMMENT     J   COMMENT ON TABLE public.fac_detalle IS 'Transporte -  Factura - Detalle';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.currency_id    COMMENT     @   COMMENT ON COLUMN public.fac_detalle.currency_id IS 'Currency';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.factura_id    COMMENT     >   COMMENT ON COLUMN public.fac_detalle.factura_id IS 'Factura';
            public       postgres    false    202            ?           0    0 #   COLUMN fac_detalle.requerimiento_id    COMMENT     J   COMMENT ON COLUMN public.fac_detalle.requerimiento_id IS 'Requerimiento';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.cantidad    COMMENT     B   COMMENT ON COLUMN public.fac_detalle.cantidad IS 'Num. Asientos';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.create_uid    COMMENT     A   COMMENT ON COLUMN public.fac_detalle.create_uid IS 'Created by';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.create_date    COMMENT     B   COMMENT ON COLUMN public.fac_detalle.create_date IS 'Created on';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.write_uid    COMMENT     E   COMMENT ON COLUMN public.fac_detalle.write_uid IS 'Last Updated by';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.write_date    COMMENT     F   COMMENT ON COLUMN public.fac_detalle.write_date IS 'Last Updated on';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.usuario_id    COMMENT     >   COMMENT ON COLUMN public.fac_detalle.usuario_id IS 'Usuario';
            public       postgres    false    202            ?           0    0 !   COLUMN fac_detalle.valor_unitario    COMMENT     F   COMMENT ON COLUMN public.fac_detalle.valor_unitario IS 'V. Unitario';
            public       postgres    false    202            ?           0    0    COLUMN fac_detalle.valor_total    COMMENT     ?   COMMENT ON COLUMN public.fac_detalle.valor_total IS 'V Total';
            public       postgres    false    202            ?            1259    187631    fac_detalle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_detalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fac_detalle_id_seq;
       public       postgres    false    3    202            ?           0    0    fac_detalle_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fac_detalle_id_seq OWNED BY public.fac_detalle.id;
            public       postgres    false    203            ?            1259    187633    fac_factura    TABLE     ?  CREATE TABLE public.fac_factura (
    id integer NOT NULL,
    currency_id integer,
    codigo character varying,
    tipo_pago_id integer,
    autorizacion_sri character varying,
    fecha date,
    subtotal0 numeric,
    descuento numeric,
    comision numeric,
    ruc character varying,
    direccion character varying,
    telefono character varying,
    aumento numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    subtotal12 numeric,
    iva12 numeric,
    subtotal numeric,
    usuario_id integer,
    state character varying,
    email character varying,
    cliente character varying(100),
    proveedor_id integer,
    anotaciones text,
    total real
);
    DROP TABLE public.fac_factura;
       public         postgres    false    3            ?           0    0    TABLE fac_factura    COMMENT     ?   COMMENT ON TABLE public.fac_factura IS 'Transporte - Factura';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.currency_id    COMMENT     @   COMMENT ON COLUMN public.fac_factura.currency_id IS 'Currency';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.codigo    COMMENT     :   COMMENT ON COLUMN public.fac_factura.codigo IS 'Código';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.tipo_pago_id    COMMENT     E   COMMENT ON COLUMN public.fac_factura.tipo_pago_id IS 'Tipo de Pago';
            public       postgres    false    204            ?           0    0 #   COLUMN fac_factura.autorizacion_sri    COMMENT     N   COMMENT ON COLUMN public.fac_factura.autorizacion_sri IS 'Autorización SRI';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.fecha    COMMENT     7   COMMENT ON COLUMN public.fac_factura.fecha IS 'Fecha';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal0    COMMENT     @   COMMENT ON COLUMN public.fac_factura.subtotal0 IS 'Subtotal 0';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.descuento    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.descuento IS 'Descuento';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.comision    COMMENT     >   COMMENT ON COLUMN public.fac_factura.comision IS 'Comisión';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.ruc    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.ruc IS 'Ruc / Pasaporte';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.direccion    COMMENT     ?   COMMENT ON COLUMN public.fac_factura.direccion IS 'Direccion';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.telefono    COMMENT     =   COMMENT ON COLUMN public.fac_factura.telefono IS 'Telefono';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.aumento    COMMENT     C   COMMENT ON COLUMN public.fac_factura.aumento IS 'Costo adicional';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.create_uid    COMMENT     A   COMMENT ON COLUMN public.fac_factura.create_uid IS 'Created by';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.create_date    COMMENT     B   COMMENT ON COLUMN public.fac_factura.create_date IS 'Created on';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.write_uid    COMMENT     E   COMMENT ON COLUMN public.fac_factura.write_uid IS 'Last Updated by';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.write_date    COMMENT     F   COMMENT ON COLUMN public.fac_factura.write_date IS 'Last Updated on';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal12    COMMENT     B   COMMENT ON COLUMN public.fac_factura.subtotal12 IS 'Subtotal 12';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.iva12    COMMENT     8   COMMENT ON COLUMN public.fac_factura.iva12 IS 'IVA 12';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.subtotal    COMMENT     =   COMMENT ON COLUMN public.fac_factura.subtotal IS 'SUBTOTAL';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.usuario_id    COMMENT     >   COMMENT ON COLUMN public.fac_factura.usuario_id IS 'Cliente';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.state    COMMENT     8   COMMENT ON COLUMN public.fac_factura.state IS 'Estado';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.email    COMMENT     7   COMMENT ON COLUMN public.fac_factura.email IS 'Email';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.cliente    COMMENT     ;   COMMENT ON COLUMN public.fac_factura.cliente IS 'Cliente';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.proveedor_id    COMMENT     B   COMMENT ON COLUMN public.fac_factura.proveedor_id IS 'Proveedor';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.anotaciones    COMMENT     C   COMMENT ON COLUMN public.fac_factura.anotaciones IS 'Anotaciones';
            public       postgres    false    204            ?           0    0    COLUMN fac_factura.total    COMMENT     7   COMMENT ON COLUMN public.fac_factura.total IS 'Total';
            public       postgres    false    204            ?            1259    187639    fac_factura_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fac_factura_id_seq;
       public       postgres    false    3    204            ?           0    0    fac_factura_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fac_factura_id_seq OWNED BY public.fac_factura.id;
            public       postgres    false    205            ?            1259    187641    fac_requerimiento    TABLE     M  CREATE TABLE public.fac_requerimiento (
    id integer NOT NULL,
    currency_id integer,
    tipo_servicio_id integer,
    descripcion character varying,
    fecha date,
    recoger_casa boolean,
    compartido boolean,
    ruta_id integer,
    paquete_id integer,
    usuario_id integer,
    lat_origen numeric,
    lon_origen numeric,
    lat_destino numeric,
    lon_destino numeric,
    state character varying,
    usuario_destino_id integer,
    vehiculo_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora double precision,
    direccion_casa_moved0 boolean,
    direccion_destino character varying,
    valor numeric,
    numero integer,
    dejar_casa boolean,
    direccion_origen character varying(100),
    iva boolean,
    padre_id integer,
    turismo_id integer,
    hotel_id integer,
    codigo character varying,
    lugar_origen_id integer,
    lugar_destino_id integer,
    proveedor_id integer,
    nombre_cliente character varying,
    apellido_cliente character varying
);
 %   DROP TABLE public.fac_requerimiento;
       public         postgres    false    3            ?           0    0    TABLE fac_requerimiento    COMMENT     H   COMMENT ON TABLE public.fac_requerimiento IS 'Factura - Requerimiento';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.currency_id    COMMENT     F   COMMENT ON COLUMN public.fac_requerimiento.currency_id IS 'Currency';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.tipo_servicio_id    COMMENT     S   COMMENT ON COLUMN public.fac_requerimiento.tipo_servicio_id IS 'Tipo de servicio';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.descripcion    COMMENT     J   COMMENT ON COLUMN public.fac_requerimiento.descripcion IS 'Descripción';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.fecha    COMMENT     =   COMMENT ON COLUMN public.fac_requerimiento.fecha IS 'Fecha';
            public       postgres    false    206            ?           0    0 %   COLUMN fac_requerimiento.recoger_casa    COMMENT     Q   COMMENT ON COLUMN public.fac_requerimiento.recoger_casa IS 'Recoger desde casa';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.compartido    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.compartido IS 'Compartido';
            public       postgres    false    206            ?           0    0     COLUMN fac_requerimiento.ruta_id    COMMENT     >   COMMENT ON COLUMN public.fac_requerimiento.ruta_id IS 'Ruta';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.paquete_id    COMMENT     D   COMMENT ON COLUMN public.fac_requerimiento.paquete_id IS 'Paquete';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.usuario_id    COMMENT     D   COMMENT ON COLUMN public.fac_requerimiento.usuario_id IS 'Cliente';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.lat_origen    COMMENT     K   COMMENT ON COLUMN public.fac_requerimiento.lat_origen IS 'Latitud Origen';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.lon_origen    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.lon_origen IS 'Longitud Origen';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.lat_destino    COMMENT     M   COMMENT ON COLUMN public.fac_requerimiento.lat_destino IS 'Latitud Destino';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.lon_destino    COMMENT     N   COMMENT ON COLUMN public.fac_requerimiento.lon_destino IS 'Longitud Destino';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.state    COMMENT     >   COMMENT ON COLUMN public.fac_requerimiento.state IS 'Estado';
            public       postgres    false    206            ?           0    0 +   COLUMN fac_requerimiento.usuario_destino_id    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.usuario_destino_id IS 'Destino';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.vehiculo_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.vehiculo_id IS 'Transporte';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.create_uid    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.create_uid IS 'Created by';
            public       postgres    false    206            ?           0    0 $   COLUMN fac_requerimiento.create_date    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.create_date IS 'Created on';
            public       postgres    false    206            ?           0    0 "   COLUMN fac_requerimiento.write_uid    COMMENT     K   COMMENT ON COLUMN public.fac_requerimiento.write_uid IS 'Last Updated by';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.write_date    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.write_date IS 'Last Updated on';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.hora    COMMENT     ;   COMMENT ON COLUMN public.fac_requerimiento.hora IS 'Hora';
            public       postgres    false    206            ?           0    0 .   COLUMN fac_requerimiento.direccion_casa_moved0    COMMENT     Z   COMMENT ON COLUMN public.fac_requerimiento.direccion_casa_moved0 IS 'Recoger desde casa';
            public       postgres    false    206            ?           0    0 *   COLUMN fac_requerimiento.direccion_destino    COMMENT     V   COMMENT ON COLUMN public.fac_requerimiento.direccion_destino IS 'Dirección Destino';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.valor    COMMENT     =   COMMENT ON COLUMN public.fac_requerimiento.valor IS 'Valor';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.numero    COMMENT     Q   COMMENT ON COLUMN public.fac_requerimiento.numero IS 'Numero Asientos/Paquetes';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.dejar_casa    COMMENT     G   COMMENT ON COLUMN public.fac_requerimiento.dejar_casa IS 'Dejar casa';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.direccion_origen    COMMENT     T   COMMENT ON COLUMN public.fac_requerimiento.direccion_origen IS 'Dirección origen';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.iva    COMMENT     9   COMMENT ON COLUMN public.fac_requerimiento.iva IS 'Iva';
            public       postgres    false    206            ?           0    0 !   COLUMN fac_requerimiento.padre_id    COMMENT     N   COMMENT ON COLUMN public.fac_requerimiento.padre_id IS 'Requerimiento Padre';
            public       postgres    false    206            ?           0    0 #   COLUMN fac_requerimiento.turismo_id    COMMENT     L   COMMENT ON COLUMN public.fac_requerimiento.turismo_id IS 'Turismo paquete';
            public       postgres    false    206            ?           0    0 !   COLUMN fac_requerimiento.hotel_id    COMMENT     @   COMMENT ON COLUMN public.fac_requerimiento.hotel_id IS 'Hotel';
            public       postgres    false    206            ?           0    0    COLUMN fac_requerimiento.codigo    COMMENT     @   COMMENT ON COLUMN public.fac_requerimiento.codigo IS 'Código';
            public       postgres    false    206            ?           0    0 (   COLUMN fac_requerimiento.lugar_origen_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.lugar_origen_id IS 'Origen';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.lugar_destino_id    COMMENT     J   COMMENT ON COLUMN public.fac_requerimiento.lugar_destino_id IS 'Destino';
            public       postgres    false    206            ?           0    0 %   COLUMN fac_requerimiento.proveedor_id    COMMENT     H   COMMENT ON COLUMN public.fac_requerimiento.proveedor_id IS 'Proveedor';
            public       postgres    false    206            ?           0    0 '   COLUMN fac_requerimiento.nombre_cliente    COMMENT     R   COMMENT ON COLUMN public.fac_requerimiento.nombre_cliente IS 'Nombre de Cliente';
            public       postgres    false    206            ?           0    0 )   COLUMN fac_requerimiento.apellido_cliente    COMMENT     V   COMMENT ON COLUMN public.fac_requerimiento.apellido_cliente IS 'Apellido de Cliente';
            public       postgres    false    206            ?            1259    187647    fac_requerimiento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_requerimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.fac_requerimiento_id_seq;
       public       postgres    false    3    206                        0    0    fac_requerimiento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.fac_requerimiento_id_seq OWNED BY public.fac_requerimiento.id;
            public       postgres    false    207            ?            1259    187649    fac_tipopago    TABLE     2  CREATE TABLE public.fac_tipopago (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    estado boolean,
    aumento numeric,
    descuento numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
     DROP TABLE public.fac_tipopago;
       public         postgres    false    3                       0    0    TABLE fac_tipopago    COMMENT     B   COMMENT ON TABLE public.fac_tipopago IS 'Transporte - Tipo Pago';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.descripcion    COMMENT     E   COMMENT ON COLUMN public.fac_tipopago.descripcion IS 'Descripción';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.estado    COMMENT     :   COMMENT ON COLUMN public.fac_tipopago.estado IS 'Estado';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.aumento    COMMENT     >   COMMENT ON COLUMN public.fac_tipopago.aumento IS 'Aumento %';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.descuento    COMMENT     B   COMMENT ON COLUMN public.fac_tipopago.descuento IS 'Descuento %';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.create_uid    COMMENT     B   COMMENT ON COLUMN public.fac_tipopago.create_uid IS 'Created by';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.create_date    COMMENT     C   COMMENT ON COLUMN public.fac_tipopago.create_date IS 'Created on';
            public       postgres    false    208                       0    0    COLUMN fac_tipopago.write_uid    COMMENT     F   COMMENT ON COLUMN public.fac_tipopago.write_uid IS 'Last Updated by';
            public       postgres    false    208            	           0    0    COLUMN fac_tipopago.write_date    COMMENT     G   COMMENT ON COLUMN public.fac_tipopago.write_date IS 'Last Updated on';
            public       postgres    false    208            ?            1259    187655    fac_tipopago_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fac_tipopago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fac_tipopago_id_seq;
       public       postgres    false    208    3            
           0    0    fac_tipopago_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fac_tipopago_id_seq OWNED BY public.fac_tipopago.id;
            public       postgres    false    209            ?            1259    188065    lug_conexion    TABLE     ?  CREATE TABLE public.lug_conexion (
    id integer NOT NULL,
    lugar_origen_id integer NOT NULL,
    lugar_destino_id integer NOT NULL,
    duracion_viaje double precision,
    duracion_entrega double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    padre_id integer
);
     DROP TABLE public.lug_conexion;
       public         postgres    false    3                       0    0    TABLE lug_conexion    COMMENT     B   COMMENT ON TABLE public.lug_conexion IS 'Transporte -  Conexion';
            public       postgres    false    210                       0    0 #   COLUMN lug_conexion.lugar_origen_id    COMMENT     I   COMMENT ON COLUMN public.lug_conexion.lugar_origen_id IS 'Lugar Origen';
            public       postgres    false    210                       0    0 $   COLUMN lug_conexion.lugar_destino_id    COMMENT     K   COMMENT ON COLUMN public.lug_conexion.lugar_destino_id IS 'Lugar Destino';
            public       postgres    false    210                       0    0 "   COLUMN lug_conexion.duracion_viaje    COMMENT     S   COMMENT ON COLUMN public.lug_conexion.duracion_viaje IS 'Duración viaje (horas)';
            public       postgres    false    210                       0    0 $   COLUMN lug_conexion.duracion_entrega    COMMENT     W   COMMENT ON COLUMN public.lug_conexion.duracion_entrega IS 'Duración entrega (horas)';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.estado    COMMENT     :   COMMENT ON COLUMN public.lug_conexion.estado IS 'Estado';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.create_uid    COMMENT     B   COMMENT ON COLUMN public.lug_conexion.create_uid IS 'Created by';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.create_date    COMMENT     C   COMMENT ON COLUMN public.lug_conexion.create_date IS 'Created on';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.write_uid    COMMENT     F   COMMENT ON COLUMN public.lug_conexion.write_uid IS 'Last Updated by';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.write_date    COMMENT     G   COMMENT ON COLUMN public.lug_conexion.write_date IS 'Last Updated on';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.currency_id    COMMENT     A   COMMENT ON COLUMN public.lug_conexion.currency_id IS 'Currency';
            public       postgres    false    210                       0    0    COLUMN lug_conexion.padre_id    COMMENT     E   COMMENT ON COLUMN public.lug_conexion.padre_id IS 'Conexión Padre';
            public       postgres    false    210            ?            1259    188068    lug_conexion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_conexion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.lug_conexion_id_seq;
       public       postgres    false    3    210                       0    0    lug_conexion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.lug_conexion_id_seq OWNED BY public.lug_conexion.id;
            public       postgres    false    211            ?            1259    188070 	   lug_lugar    TABLE     ?  CREATE TABLE public.lug_lugar (
    id integer NOT NULL,
    tipo_lugar_id integer NOT NULL,
    codigo character varying NOT NULL,
    nombre character varying NOT NULL,
    busqueda boolean,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    padre_id integer,
    valor_recoger numeric,
    valor_dejar numeric
);
    DROP TABLE public.lug_lugar;
       public         postgres    false    3                       0    0    TABLE lug_lugar    COMMENT     ;   COMMENT ON TABLE public.lug_lugar IS 'Transporte - Lugar';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.tipo_lugar_id    COMMENT     E   COMMENT ON COLUMN public.lug_lugar.tipo_lugar_id IS 'Tipo de Lugar';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.codigo    COMMENT     8   COMMENT ON COLUMN public.lug_lugar.codigo IS 'Código';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.nombre    COMMENT     7   COMMENT ON COLUMN public.lug_lugar.nombre IS 'Nombre';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.busqueda    COMMENT     ;   COMMENT ON COLUMN public.lug_lugar.busqueda IS 'Busqueda';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.estado    COMMENT     7   COMMENT ON COLUMN public.lug_lugar.estado IS 'Estado';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.create_uid    COMMENT     ?   COMMENT ON COLUMN public.lug_lugar.create_uid IS 'Created by';
            public       postgres    false    212                       0    0    COLUMN lug_lugar.create_date    COMMENT     @   COMMENT ON COLUMN public.lug_lugar.create_date IS 'Created on';
            public       postgres    false    212                        0    0    COLUMN lug_lugar.write_uid    COMMENT     C   COMMENT ON COLUMN public.lug_lugar.write_uid IS 'Last Updated by';
            public       postgres    false    212            !           0    0    COLUMN lug_lugar.write_date    COMMENT     D   COMMENT ON COLUMN public.lug_lugar.write_date IS 'Last Updated on';
            public       postgres    false    212            "           0    0    COLUMN lug_lugar.currency_id    COMMENT     >   COMMENT ON COLUMN public.lug_lugar.currency_id IS 'Currency';
            public       postgres    false    212            #           0    0    COLUMN lug_lugar.padre_id    COMMENT     >   COMMENT ON COLUMN public.lug_lugar.padre_id IS 'Lugar Padre';
            public       postgres    false    212            $           0    0    COLUMN lug_lugar.valor_recoger    COMMENT     E   COMMENT ON COLUMN public.lug_lugar.valor_recoger IS 'Valor recoger';
            public       postgres    false    212            %           0    0    COLUMN lug_lugar.valor_dejar    COMMENT     A   COMMENT ON COLUMN public.lug_lugar.valor_dejar IS 'Valor dejar';
            public       postgres    false    212            ?            1259    188076    lug_lugar_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_lugar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lug_lugar_id_seq;
       public       postgres    false    3    212            &           0    0    lug_lugar_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lug_lugar_id_seq OWNED BY public.lug_lugar.id;
            public       postgres    false    213            ?            1259    188078    lug_tipolugar    TABLE     ?   CREATE TABLE public.lug_tipolugar (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 !   DROP TABLE public.lug_tipolugar;
       public         postgres    false    3            '           0    0    TABLE lug_tipolugar    COMMENT     C   COMMENT ON TABLE public.lug_tipolugar IS 'Transporte - TipoLugar';
            public       postgres    false    214            (           0    0     COLUMN lug_tipolugar.descripcion    COMMENT     F   COMMENT ON COLUMN public.lug_tipolugar.descripcion IS 'Descripción';
            public       postgres    false    214            )           0    0    COLUMN lug_tipolugar.create_uid    COMMENT     C   COMMENT ON COLUMN public.lug_tipolugar.create_uid IS 'Created by';
            public       postgres    false    214            *           0    0     COLUMN lug_tipolugar.create_date    COMMENT     D   COMMENT ON COLUMN public.lug_tipolugar.create_date IS 'Created on';
            public       postgres    false    214            +           0    0    COLUMN lug_tipolugar.write_uid    COMMENT     G   COMMENT ON COLUMN public.lug_tipolugar.write_uid IS 'Last Updated by';
            public       postgres    false    214            ,           0    0    COLUMN lug_tipolugar.write_date    COMMENT     H   COMMENT ON COLUMN public.lug_tipolugar.write_date IS 'Last Updated on';
            public       postgres    false    214            ?            1259    188084    lug_tipolugar_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.lug_tipolugar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lug_tipolugar_id_seq;
       public       postgres    false    214    3            -           0    0    lug_tipolugar_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.lug_tipolugar_id_seq OWNED BY public.lug_tipolugar.id;
            public       postgres    false    215            ?            1259    188628 	   res_users    TABLE     ?  CREATE TABLE public.res_users (
    id integer NOT NULL,
    active boolean DEFAULT true,
    login character varying NOT NULL,
    password character varying,
    company_id integer NOT NULL,
    partner_id integer NOT NULL,
    create_date timestamp without time zone,
    signature text,
    action_id integer,
    share boolean,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone,
    alias_id integer,
    notification_type character varying NOT NULL,
    out_of_office_message character varying,
    odoobot_state character varying NOT NULL,
    website_id integer,
    oauth_provider_id integer,
    oauth_uid character varying,
    oauth_access_token character varying,
    livechat_username character varying
);
    DROP TABLE public.res_users;
       public         postgres    false    3            .           0    0    COLUMN res_users.signature    COMMENT     C   COMMENT ON COLUMN public.res_users.signature IS 'Email Signature';
            public       postgres    false    216            /           0    0    COLUMN res_users.action_id    COMMENT     ?   COMMENT ON COLUMN public.res_users.action_id IS 'Home Action';
            public       postgres    false    216            0           0    0    COLUMN res_users.share    COMMENT     :   COMMENT ON COLUMN public.res_users.share IS 'Share User';
            public       postgres    false    216            1           0    0    COLUMN res_users.create_uid    COMMENT     ?   COMMENT ON COLUMN public.res_users.create_uid IS 'Created by';
            public       postgres    false    216            2           0    0    COLUMN res_users.write_uid    COMMENT     C   COMMENT ON COLUMN public.res_users.write_uid IS 'Last Updated by';
            public       postgres    false    216            3           0    0    COLUMN res_users.write_date    COMMENT     D   COMMENT ON COLUMN public.res_users.write_date IS 'Last Updated on';
            public       postgres    false    216            4           0    0    COLUMN res_users.alias_id    COMMENT     8   COMMENT ON COLUMN public.res_users.alias_id IS 'Alias';
            public       postgres    false    216            5           0    0 "   COLUMN res_users.notification_type    COMMENT     H   COMMENT ON COLUMN public.res_users.notification_type IS 'Notification';
            public       postgres    false    216            6           0    0 &   COLUMN res_users.out_of_office_message    COMMENT     K   COMMENT ON COLUMN public.res_users.out_of_office_message IS 'Chat Status';
            public       postgres    false    216            7           0    0    COLUMN res_users.odoobot_state    COMMENT     F   COMMENT ON COLUMN public.res_users.odoobot_state IS 'OdooBot Status';
            public       postgres    false    216            8           0    0    COLUMN res_users.website_id    COMMENT     <   COMMENT ON COLUMN public.res_users.website_id IS 'Website';
            public       postgres    false    216            9           0    0 "   COLUMN res_users.oauth_provider_id    COMMENT     J   COMMENT ON COLUMN public.res_users.oauth_provider_id IS 'OAuth Provider';
            public       postgres    false    216            :           0    0    COLUMN res_users.oauth_uid    COMMENT     A   COMMENT ON COLUMN public.res_users.oauth_uid IS 'OAuth User ID';
            public       postgres    false    216            ;           0    0 #   COLUMN res_users.oauth_access_token    COMMENT     O   COMMENT ON COLUMN public.res_users.oauth_access_token IS 'OAuth Access Token';
            public       postgres    false    216            <           0    0 "   COLUMN res_users.livechat_username    COMMENT     M   COMMENT ON COLUMN public.res_users.livechat_username IS 'Livechat Username';
            public       postgres    false    216            ?            1259    188635    res_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.res_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.res_users_id_seq;
       public       postgres    false    3    216            =           0    0    res_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.res_users_id_seq OWNED BY public.res_users.id;
            public       postgres    false    217            ?            1259    188653 	   ser_hotel    TABLE     ?  CREATE TABLE public.ser_hotel (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    descripcion character varying NOT NULL,
    valor numeric NOT NULL,
    discapacidad double precision,
    iva boolean,
    estado boolean,
    prioridad character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    url character varying,
    indicaciones text
);
    DROP TABLE public.ser_hotel;
       public         postgres    false    3            >           0    0    TABLE ser_hotel    COMMENT     9   COMMENT ON TABLE public.ser_hotel IS 'Servicio - Hotel';
            public       postgres    false    218            ?           0    0    COLUMN ser_hotel.currency_id    COMMENT     >   COMMENT ON COLUMN public.ser_hotel.currency_id IS 'Currency';
            public       postgres    false    218            @           0    0    COLUMN ser_hotel.usuario_id    COMMENT     >   COMMENT ON COLUMN public.ser_hotel.usuario_id IS 'Proveedor';
            public       postgres    false    218            A           0    0    COLUMN ser_hotel.lugar_id    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.lugar_id IS 'Lugar';
            public       postgres    false    218            B           0    0    COLUMN ser_hotel.descripcion    COMMENT     B   COMMENT ON COLUMN public.ser_hotel.descripcion IS 'Descripción';
            public       postgres    false    218            C           0    0    COLUMN ser_hotel.valor    COMMENT     5   COMMENT ON COLUMN public.ser_hotel.valor IS 'Valor';
            public       postgres    false    218            D           0    0    COLUMN ser_hotel.discapacidad    COMMENT     O   COMMENT ON COLUMN public.ser_hotel.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    218            E           0    0    COLUMN ser_hotel.iva    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.iva IS 'Aplica iva';
            public       postgres    false    218            F           0    0    COLUMN ser_hotel.estado    COMMENT     7   COMMENT ON COLUMN public.ser_hotel.estado IS 'Estado';
            public       postgres    false    218            G           0    0    COLUMN ser_hotel.prioridad    COMMENT     8   COMMENT ON COLUMN public.ser_hotel.prioridad IS 'Tipo';
            public       postgres    false    218            H           0    0    COLUMN ser_hotel.create_uid    COMMENT     ?   COMMENT ON COLUMN public.ser_hotel.create_uid IS 'Created by';
            public       postgres    false    218            I           0    0    COLUMN ser_hotel.create_date    COMMENT     @   COMMENT ON COLUMN public.ser_hotel.create_date IS 'Created on';
            public       postgres    false    218            J           0    0    COLUMN ser_hotel.write_uid    COMMENT     C   COMMENT ON COLUMN public.ser_hotel.write_uid IS 'Last Updated by';
            public       postgres    false    218            K           0    0    COLUMN ser_hotel.write_date    COMMENT     D   COMMENT ON COLUMN public.ser_hotel.write_date IS 'Last Updated on';
            public       postgres    false    218            L           0    0    COLUMN ser_hotel.url    COMMENT     1   COMMENT ON COLUMN public.ser_hotel.url IS 'Url';
            public       postgres    false    218            M           0    0    COLUMN ser_hotel.indicaciones    COMMENT     C   COMMENT ON COLUMN public.ser_hotel.indicaciones IS 'Indicaciones';
            public       postgres    false    218            ?            1259    188659    ser_hotel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ser_hotel_id_seq;
       public       postgres    false    218    3            N           0    0    ser_hotel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ser_hotel_id_seq OWNED BY public.ser_hotel.id;
            public       postgres    false    219            ?            1259    188661    ser_paquete    TABLE     ?  CREATE TABLE public.ser_paquete (
    id integer NOT NULL,
    currency_id integer,
    indicaciones_moved0 character varying(300),
    conexion_id integer NOT NULL,
    tipo_paquete_id integer NOT NULL,
    hora_llegada_moved0 timestamp without time zone,
    hora_recoger_moved0 timestamp without time zone,
    fin_semana boolean,
    valor numeric NOT NULL,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora_llegada double precision,
    hora_recoger double precision,
    usuario_id integer,
    iva boolean,
    discapacidad double precision,
    indicaciones text,
    descripcion character varying
);
    DROP TABLE public.ser_paquete;
       public         postgres    false    3            O           0    0    TABLE ser_paquete    COMMENT     =   COMMENT ON TABLE public.ser_paquete IS 'Servicio - Paquete';
            public       postgres    false    220            P           0    0    COLUMN ser_paquete.currency_id    COMMENT     @   COMMENT ON COLUMN public.ser_paquete.currency_id IS 'Currency';
            public       postgres    false    220            Q           0    0 &   COLUMN ser_paquete.indicaciones_moved0    COMMENT     L   COMMENT ON COLUMN public.ser_paquete.indicaciones_moved0 IS 'Indicaciones';
            public       postgres    false    220            R           0    0    COLUMN ser_paquete.conexion_id    COMMENT     A   COMMENT ON COLUMN public.ser_paquete.conexion_id IS 'Conexión';
            public       postgres    false    220            S           0    0 "   COLUMN ser_paquete.tipo_paquete_id    COMMENT     K   COMMENT ON COLUMN public.ser_paquete.tipo_paquete_id IS 'Tipo de paquete';
            public       postgres    false    220            T           0    0 &   COLUMN ser_paquete.hora_llegada_moved0    COMMENT     O   COMMENT ON COLUMN public.ser_paquete.hora_llegada_moved0 IS 'Hora de llegada';
            public       postgres    false    220            U           0    0 &   COLUMN ser_paquete.hora_recoger_moved0    COMMENT     W   COMMENT ON COLUMN public.ser_paquete.hora_recoger_moved0 IS 'Hora de recoger paquete';
            public       postgres    false    220            V           0    0    COLUMN ser_paquete.fin_semana    COMMENT     O   COMMENT ON COLUMN public.ser_paquete.fin_semana IS 'Fin de semana operación';
            public       postgres    false    220            W           0    0    COLUMN ser_paquete.valor    COMMENT     7   COMMENT ON COLUMN public.ser_paquete.valor IS 'Valor';
            public       postgres    false    220            X           0    0    COLUMN ser_paquete.estado    COMMENT     9   COMMENT ON COLUMN public.ser_paquete.estado IS 'Estado';
            public       postgres    false    220            Y           0    0    COLUMN ser_paquete.create_uid    COMMENT     A   COMMENT ON COLUMN public.ser_paquete.create_uid IS 'Created by';
            public       postgres    false    220            Z           0    0    COLUMN ser_paquete.create_date    COMMENT     B   COMMENT ON COLUMN public.ser_paquete.create_date IS 'Created on';
            public       postgres    false    220            [           0    0    COLUMN ser_paquete.write_uid    COMMENT     E   COMMENT ON COLUMN public.ser_paquete.write_uid IS 'Last Updated by';
            public       postgres    false    220            \           0    0    COLUMN ser_paquete.write_date    COMMENT     F   COMMENT ON COLUMN public.ser_paquete.write_date IS 'Last Updated on';
            public       postgres    false    220            ]           0    0    COLUMN ser_paquete.hora_llegada    COMMENT     H   COMMENT ON COLUMN public.ser_paquete.hora_llegada IS 'Hora de llegada';
            public       postgres    false    220            ^           0    0    COLUMN ser_paquete.hora_recoger    COMMENT     H   COMMENT ON COLUMN public.ser_paquete.hora_recoger IS 'Hora de recoger';
            public       postgres    false    220            _           0    0    COLUMN ser_paquete.usuario_id    COMMENT     @   COMMENT ON COLUMN public.ser_paquete.usuario_id IS 'Proveedor';
            public       postgres    false    220            `           0    0    COLUMN ser_paquete.iva    COMMENT     3   COMMENT ON COLUMN public.ser_paquete.iva IS 'Iva';
            public       postgres    false    220            a           0    0    COLUMN ser_paquete.discapacidad    COMMENT     Q   COMMENT ON COLUMN public.ser_paquete.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    220            b           0    0    COLUMN ser_paquete.indicaciones    COMMENT     E   COMMENT ON COLUMN public.ser_paquete.indicaciones IS 'Indicaciones';
            public       postgres    false    220            c           0    0    COLUMN ser_paquete.descripcion    COMMENT     C   COMMENT ON COLUMN public.ser_paquete.descripcion IS 'Descripcion';
            public       postgres    false    220            ?            1259    188667    ser_paquete_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_paquete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ser_paquete_id_seq;
       public       postgres    false    220    3            d           0    0    ser_paquete_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ser_paquete_id_seq OWNED BY public.ser_paquete.id;
            public       postgres    false    221            ?            1259    188669    ser_proveedor    TABLE     ?  CREATE TABLE public.ser_proveedor (
    id integer NOT NULL,
    currency_id integer,
    password character varying,
    ruc character varying NOT NULL,
    razon_social character varying(100) NOT NULL,
    estado boolean,
    comision numeric,
    ganancias numeric,
    pago numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    email character varying NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    direccion character varying NOT NULL,
    celular character varying NOT NULL,
    telefono character varying,
    prioridad integer,
    lugar_id integer NOT NULL,
    lat numeric,
    lon numeric
);
 !   DROP TABLE public.ser_proveedor;
       public         postgres    false    3            e           0    0    TABLE ser_proveedor    COMMENT     A   COMMENT ON TABLE public.ser_proveedor IS 'Servicio - Proveedor';
            public       postgres    false    222            f           0    0     COLUMN ser_proveedor.currency_id    COMMENT     B   COMMENT ON COLUMN public.ser_proveedor.currency_id IS 'Currency';
            public       postgres    false    222            g           0    0    COLUMN ser_proveedor.password    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.password IS 'Password';
            public       postgres    false    222            h           0    0    COLUMN ser_proveedor.ruc    COMMENT     C   COMMENT ON COLUMN public.ser_proveedor.ruc IS 'Cédula/Pasaporte';
            public       postgres    false    222            i           0    0 !   COLUMN ser_proveedor.razon_social    COMMENT     H   COMMENT ON COLUMN public.ser_proveedor.razon_social IS 'Razón social';
            public       postgres    false    222            j           0    0    COLUMN ser_proveedor.estado    COMMENT     ;   COMMENT ON COLUMN public.ser_proveedor.estado IS 'Estado';
            public       postgres    false    222            k           0    0    COLUMN ser_proveedor.comision    COMMENT     @   COMMENT ON COLUMN public.ser_proveedor.comision IS 'Comisión';
            public       postgres    false    222            l           0    0    COLUMN ser_proveedor.ganancias    COMMENT     A   COMMENT ON COLUMN public.ser_proveedor.ganancias IS 'Ganancias';
            public       postgres    false    222            m           0    0    COLUMN ser_proveedor.pago    COMMENT     7   COMMENT ON COLUMN public.ser_proveedor.pago IS 'Pago';
            public       postgres    false    222            n           0    0    COLUMN ser_proveedor.create_uid    COMMENT     C   COMMENT ON COLUMN public.ser_proveedor.create_uid IS 'Created by';
            public       postgres    false    222            o           0    0     COLUMN ser_proveedor.create_date    COMMENT     D   COMMENT ON COLUMN public.ser_proveedor.create_date IS 'Created on';
            public       postgres    false    222            p           0    0    COLUMN ser_proveedor.write_uid    COMMENT     G   COMMENT ON COLUMN public.ser_proveedor.write_uid IS 'Last Updated by';
            public       postgres    false    222            q           0    0    COLUMN ser_proveedor.write_date    COMMENT     H   COMMENT ON COLUMN public.ser_proveedor.write_date IS 'Last Updated on';
            public       postgres    false    222            r           0    0    COLUMN ser_proveedor.email    COMMENT     9   COMMENT ON COLUMN public.ser_proveedor.email IS 'Email';
            public       postgres    false    222            s           0    0    COLUMN ser_proveedor.nombre    COMMENT     ;   COMMENT ON COLUMN public.ser_proveedor.nombre IS 'Nombre';
            public       postgres    false    222            t           0    0    COLUMN ser_proveedor.apellido    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.apellido IS 'Apellido';
            public       postgres    false    222            u           0    0    COLUMN ser_proveedor.direccion    COMMENT     B   COMMENT ON COLUMN public.ser_proveedor.direccion IS 'Dirección';
            public       postgres    false    222            v           0    0    COLUMN ser_proveedor.celular    COMMENT     =   COMMENT ON COLUMN public.ser_proveedor.celular IS 'Celular';
            public       postgres    false    222            w           0    0    COLUMN ser_proveedor.telefono    COMMENT     ?   COMMENT ON COLUMN public.ser_proveedor.telefono IS 'Telefono';
            public       postgres    false    222            x           0    0    COLUMN ser_proveedor.prioridad    COMMENT     A   COMMENT ON COLUMN public.ser_proveedor.prioridad IS 'Prioridad';
            public       postgres    false    222            y           0    0    COLUMN ser_proveedor.lugar_id    COMMENT     <   COMMENT ON COLUMN public.ser_proveedor.lugar_id IS 'Lugar';
            public       postgres    false    222            z           0    0    COLUMN ser_proveedor.lat    COMMENT     9   COMMENT ON COLUMN public.ser_proveedor.lat IS 'Latitud';
            public       postgres    false    222            {           0    0    COLUMN ser_proveedor.lon    COMMENT     :   COMMENT ON COLUMN public.ser_proveedor.lon IS 'Longitud';
            public       postgres    false    222            ?            1259    188675    ser_proveedor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_proveedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ser_proveedor_id_seq;
       public       postgres    false    3    222            |           0    0    ser_proveedor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ser_proveedor_id_seq OWNED BY public.ser_proveedor.id;
            public       postgres    false    223            ?            1259    188677    ser_ruta    TABLE     K  CREATE TABLE public.ser_ruta (
    id integer NOT NULL,
    currency_id integer,
    tipo_vehiculo_id integer,
    conexion_id integer,
    tipo_frecuencia character varying,
    hora_moved0 timestamp without time zone,
    estado boolean,
    unitario numeric,
    completo numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    hora double precision,
    usuario_id integer,
    iva boolean,
    discapacidad double precision,
    indicaciones text,
    fecha timestamp without time zone
);
    DROP TABLE public.ser_ruta;
       public         postgres    false    3            }           0    0    TABLE ser_ruta    COMMENT     7   COMMENT ON TABLE public.ser_ruta IS 'Servicio - Ruta';
            public       postgres    false    224            ~           0    0    COLUMN ser_ruta.currency_id    COMMENT     =   COMMENT ON COLUMN public.ser_ruta.currency_id IS 'Currency';
            public       postgres    false    224                       0    0     COLUMN ser_ruta.tipo_vehiculo_id    COMMENT     J   COMMENT ON COLUMN public.ser_ruta.tipo_vehiculo_id IS 'Tipo de Vehiculo';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.conexion_id    COMMENT     >   COMMENT ON COLUMN public.ser_ruta.conexion_id IS 'Conexión';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.tipo_frecuencia    COMMENT     C   COMMENT ON COLUMN public.ser_ruta.tipo_frecuencia IS 'Frecuencia';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.hora_moved0    COMMENT     9   COMMENT ON COLUMN public.ser_ruta.hora_moved0 IS 'Hora';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.estado    COMMENT     6   COMMENT ON COLUMN public.ser_ruta.estado IS 'Estado';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.unitario    COMMENT     @   COMMENT ON COLUMN public.ser_ruta.unitario IS 'Costo unitario';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.completo    COMMENT     @   COMMENT ON COLUMN public.ser_ruta.completo IS 'Costo completo';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.create_uid    COMMENT     >   COMMENT ON COLUMN public.ser_ruta.create_uid IS 'Created by';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.create_date    COMMENT     ?   COMMENT ON COLUMN public.ser_ruta.create_date IS 'Created on';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.write_uid    COMMENT     B   COMMENT ON COLUMN public.ser_ruta.write_uid IS 'Last Updated by';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.write_date    COMMENT     C   COMMENT ON COLUMN public.ser_ruta.write_date IS 'Last Updated on';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.hora    COMMENT     2   COMMENT ON COLUMN public.ser_ruta.hora IS 'Hora';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.usuario_id    COMMENT     =   COMMENT ON COLUMN public.ser_ruta.usuario_id IS 'Proveedor';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.iva    COMMENT     0   COMMENT ON COLUMN public.ser_ruta.iva IS 'Iva';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.discapacidad    COMMENT     N   COMMENT ON COLUMN public.ser_ruta.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    224            ?           0    0    COLUMN ser_ruta.indicaciones    COMMENT     B   COMMENT ON COLUMN public.ser_ruta.indicaciones IS 'Indicaciones';
            public       postgres    false    224            ?            1259    188683    ser_ruta_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_ruta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ser_ruta_id_seq;
       public       postgres    false    3    224            ?           0    0    ser_ruta_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ser_ruta_id_seq OWNED BY public.ser_ruta.id;
            public       postgres    false    225            ?            1259    188685    ser_sucursal    TABLE     ?  CREATE TABLE public.ser_sucursal (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    direccion character varying NOT NULL,
    lat numeric,
    lon numeric,
    telefono character varying,
    email character varying,
    comision numeric,
    ganancias numeric,
    pago numeric,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
     DROP TABLE public.ser_sucursal;
       public         postgres    false    3            ?           0    0    TABLE ser_sucursal    COMMENT     ?   COMMENT ON TABLE public.ser_sucursal IS 'Servicio - Sucursal';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.currency_id    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.currency_id IS 'Currency';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.usuario_id    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.usuario_id IS 'Proveedor';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lugar_id    COMMENT     ;   COMMENT ON COLUMN public.ser_sucursal.lugar_id IS 'Lugar';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.direccion    COMMENT     A   COMMENT ON COLUMN public.ser_sucursal.direccion IS 'Dirección';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lat    COMMENT     8   COMMENT ON COLUMN public.ser_sucursal.lat IS 'Latitud';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.lon    COMMENT     9   COMMENT ON COLUMN public.ser_sucursal.lon IS 'Longitud';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.telefono    COMMENT     F   COMMENT ON COLUMN public.ser_sucursal.telefono IS 'Celular/Telefono';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.email    COMMENT     8   COMMENT ON COLUMN public.ser_sucursal.email IS 'Email';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.comision    COMMENT     ?   COMMENT ON COLUMN public.ser_sucursal.comision IS 'Comisión';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.ganancias    COMMENT     @   COMMENT ON COLUMN public.ser_sucursal.ganancias IS 'Ganancias';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.pago    COMMENT     6   COMMENT ON COLUMN public.ser_sucursal.pago IS 'Pago';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.create_uid    COMMENT     B   COMMENT ON COLUMN public.ser_sucursal.create_uid IS 'Created by';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.create_date    COMMENT     C   COMMENT ON COLUMN public.ser_sucursal.create_date IS 'Created on';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.write_uid    COMMENT     F   COMMENT ON COLUMN public.ser_sucursal.write_uid IS 'Last Updated by';
            public       postgres    false    226            ?           0    0    COLUMN ser_sucursal.write_date    COMMENT     G   COMMENT ON COLUMN public.ser_sucursal.write_date IS 'Last Updated on';
            public       postgres    false    226            ?            1259    188691    ser_sucursal_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ser_sucursal_id_seq;
       public       postgres    false    3    226            ?           0    0    ser_sucursal_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ser_sucursal_id_seq OWNED BY public.ser_sucursal.id;
            public       postgres    false    227            ?            1259    188693    ser_tipopaquete    TABLE     ?  CREATE TABLE public.ser_tipopaquete (
    id integer NOT NULL,
    tipo_paquete character varying,
    aumento double precision,
    descuento double precision,
    comision double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    currency_id integer,
    peso numeric,
    valor_referencial numeric
);
 #   DROP TABLE public.ser_tipopaquete;
       public         postgres    false    3            ?           0    0    TABLE ser_tipopaquete    COMMENT     F   COMMENT ON TABLE public.ser_tipopaquete IS 'Servicio - Tipo Paquete';
            public       postgres    false    228            ?           0    0 #   COLUMN ser_tipopaquete.tipo_paquete    COMMENT     I   COMMENT ON COLUMN public.ser_tipopaquete.tipo_paquete IS 'Tipo Paquete';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.aumento    COMMENT     A   COMMENT ON COLUMN public.ser_tipopaquete.aumento IS 'Aumento %';
            public       postgres    false    228            ?           0    0     COLUMN ser_tipopaquete.descuento    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.descuento IS 'Descuento %';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.comision    COMMENT     D   COMMENT ON COLUMN public.ser_tipopaquete.comision IS 'Comisión %';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.estado    COMMENT     =   COMMENT ON COLUMN public.ser_tipopaquete.estado IS 'Estado';
            public       postgres    false    228            ?           0    0 !   COLUMN ser_tipopaquete.create_uid    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.create_uid IS 'Created by';
            public       postgres    false    228            ?           0    0 "   COLUMN ser_tipopaquete.create_date    COMMENT     F   COMMENT ON COLUMN public.ser_tipopaquete.create_date IS 'Created on';
            public       postgres    false    228            ?           0    0     COLUMN ser_tipopaquete.write_uid    COMMENT     I   COMMENT ON COLUMN public.ser_tipopaquete.write_uid IS 'Last Updated by';
            public       postgres    false    228            ?           0    0 !   COLUMN ser_tipopaquete.write_date    COMMENT     J   COMMENT ON COLUMN public.ser_tipopaquete.write_date IS 'Last Updated on';
            public       postgres    false    228            ?           0    0 "   COLUMN ser_tipopaquete.currency_id    COMMENT     D   COMMENT ON COLUMN public.ser_tipopaquete.currency_id IS 'Currency';
            public       postgres    false    228            ?           0    0    COLUMN ser_tipopaquete.peso    COMMENT     E   COMMENT ON COLUMN public.ser_tipopaquete.peso IS 'Peso maximo (kg)';
            public       postgres    false    228            ?           0    0 (   COLUMN ser_tipopaquete.valor_referencial    COMMENT     S   COMMENT ON COLUMN public.ser_tipopaquete.valor_referencial IS 'Valor referencial';
            public       postgres    false    228            ?            1259    188699    ser_tipopaquete_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_tipopaquete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ser_tipopaquete_id_seq;
       public       postgres    false    228    3            ?           0    0    ser_tipopaquete_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ser_tipopaquete_id_seq OWNED BY public.ser_tipopaquete.id;
            public       postgres    false    229            ?            1259    188701    ser_tiposervicio    TABLE     g  CREATE TABLE public.ser_tiposervicio (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    aumento double precision,
    descuento double precision,
    comision double precision,
    estado boolean
);
 $   DROP TABLE public.ser_tiposervicio;
       public         postgres    false    3            ?           0    0    TABLE ser_tiposervicio    COMMENT     G   COMMENT ON TABLE public.ser_tiposervicio IS 'Servicio - TipoServicio';
            public       postgres    false    230            ?           0    0 #   COLUMN ser_tiposervicio.descripcion    COMMENT     I   COMMENT ON COLUMN public.ser_tiposervicio.descripcion IS 'Descripción';
            public       postgres    false    230            ?           0    0 "   COLUMN ser_tiposervicio.create_uid    COMMENT     F   COMMENT ON COLUMN public.ser_tiposervicio.create_uid IS 'Created by';
            public       postgres    false    230            ?           0    0 #   COLUMN ser_tiposervicio.create_date    COMMENT     G   COMMENT ON COLUMN public.ser_tiposervicio.create_date IS 'Created on';
            public       postgres    false    230            ?           0    0 !   COLUMN ser_tiposervicio.write_uid    COMMENT     J   COMMENT ON COLUMN public.ser_tiposervicio.write_uid IS 'Last Updated by';
            public       postgres    false    230            ?           0    0 "   COLUMN ser_tiposervicio.write_date    COMMENT     K   COMMENT ON COLUMN public.ser_tiposervicio.write_date IS 'Last Updated on';
            public       postgres    false    230            ?           0    0    COLUMN ser_tiposervicio.aumento    COMMENT     B   COMMENT ON COLUMN public.ser_tiposervicio.aumento IS 'Aumento %';
            public       postgres    false    230            ?           0    0 !   COLUMN ser_tiposervicio.descuento    COMMENT     F   COMMENT ON COLUMN public.ser_tiposervicio.descuento IS 'Descuento %';
            public       postgres    false    230            ?           0    0     COLUMN ser_tiposervicio.comision    COMMENT     E   COMMENT ON COLUMN public.ser_tiposervicio.comision IS 'Comisión %';
            public       postgres    false    230            ?            1259    188707    ser_tiposervicio_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_tiposervicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ser_tiposervicio_id_seq;
       public       postgres    false    3    230            ?           0    0    ser_tiposervicio_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ser_tiposervicio_id_seq OWNED BY public.ser_tiposervicio.id;
            public       postgres    false    231            ?            1259    188709    ser_turismo    TABLE     $  CREATE TABLE public.ser_turismo (
    id integer NOT NULL,
    currency_id integer,
    usuario_id integer,
    lugar_id integer NOT NULL,
    fecha date,
    hora double precision,
    descripcion character varying NOT NULL,
    indicaciones text,
    valor numeric NOT NULL,
    discapacidad double precision,
    iva boolean,
    estado boolean,
    frecuencia character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    url character varying
);
    DROP TABLE public.ser_turismo;
       public         postgres    false    3            ?           0    0    TABLE ser_turismo    COMMENT     =   COMMENT ON TABLE public.ser_turismo IS 'Servicio - Turismo';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.currency_id    COMMENT     @   COMMENT ON COLUMN public.ser_turismo.currency_id IS 'Currency';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.usuario_id    COMMENT     @   COMMENT ON COLUMN public.ser_turismo.usuario_id IS 'Proveedor';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.lugar_id    COMMENT     :   COMMENT ON COLUMN public.ser_turismo.lugar_id IS 'Lugar';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.fecha    COMMENT     7   COMMENT ON COLUMN public.ser_turismo.fecha IS 'Fecha';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.hora    COMMENT     5   COMMENT ON COLUMN public.ser_turismo.hora IS 'Hora';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.descripcion    COMMENT     D   COMMENT ON COLUMN public.ser_turismo.descripcion IS 'Descripción';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.indicaciones    COMMENT     E   COMMENT ON COLUMN public.ser_turismo.indicaciones IS 'Indicaciones';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.valor    COMMENT     7   COMMENT ON COLUMN public.ser_turismo.valor IS 'Valor';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.discapacidad    COMMENT     Q   COMMENT ON COLUMN public.ser_turismo.discapacidad IS 'Descuento discapacidad %';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.iva    COMMENT     :   COMMENT ON COLUMN public.ser_turismo.iva IS 'Aplica iva';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.estado    COMMENT     9   COMMENT ON COLUMN public.ser_turismo.estado IS 'Estado';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.frecuencia    COMMENT     A   COMMENT ON COLUMN public.ser_turismo.frecuencia IS 'Frecuencia';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.create_uid    COMMENT     A   COMMENT ON COLUMN public.ser_turismo.create_uid IS 'Created by';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.create_date    COMMENT     B   COMMENT ON COLUMN public.ser_turismo.create_date IS 'Created on';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.write_uid    COMMENT     E   COMMENT ON COLUMN public.ser_turismo.write_uid IS 'Last Updated by';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.write_date    COMMENT     F   COMMENT ON COLUMN public.ser_turismo.write_date IS 'Last Updated on';
            public       postgres    false    232            ?           0    0    COLUMN ser_turismo.url    COMMENT     3   COMMENT ON COLUMN public.ser_turismo.url IS 'Url';
            public       postgres    false    232            ?            1259    188715    ser_turismo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ser_turismo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ser_turismo_id_seq;
       public       postgres    false    232    3            ?           0    0    ser_turismo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ser_turismo_id_seq OWNED BY public.ser_turismo.id;
            public       postgres    false    233            ?            1259    188831    tra_preferencia    TABLE     	  CREATE TABLE public.tra_preferencia (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 #   DROP TABLE public.tra_preferencia;
       public         postgres    false    3            ?           0    0    TABLE tra_preferencia    COMMENT     G   COMMENT ON TABLE public.tra_preferencia IS 'Transporte - Preferencia';
            public       postgres    false    234            ?           0    0 "   COLUMN tra_preferencia.descripcion    COMMENT     H   COMMENT ON COLUMN public.tra_preferencia.descripcion IS 'Descripción';
            public       postgres    false    234            ?           0    0    COLUMN tra_preferencia.estado    COMMENT     =   COMMENT ON COLUMN public.tra_preferencia.estado IS 'Estado';
            public       postgres    false    234            ?           0    0 !   COLUMN tra_preferencia.create_uid    COMMENT     E   COMMENT ON COLUMN public.tra_preferencia.create_uid IS 'Created by';
            public       postgres    false    234            ?           0    0 "   COLUMN tra_preferencia.create_date    COMMENT     F   COMMENT ON COLUMN public.tra_preferencia.create_date IS 'Created on';
            public       postgres    false    234            ?           0    0     COLUMN tra_preferencia.write_uid    COMMENT     I   COMMENT ON COLUMN public.tra_preferencia.write_uid IS 'Last Updated by';
            public       postgres    false    234            ?           0    0 !   COLUMN tra_preferencia.write_date    COMMENT     J   COMMENT ON COLUMN public.tra_preferencia.write_date IS 'Last Updated on';
            public       postgres    false    234            ?            1259    188837    tra_preferencia_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_preferencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tra_preferencia_id_seq;
       public       postgres    false    234    3            ?           0    0    tra_preferencia_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tra_preferencia_id_seq OWNED BY public.tra_preferencia.id;
            public       postgres    false    235            ?            1259    188839    tra_preferencia_tra_usuario_rel    TABLE     ?   CREATE TABLE public.tra_preferencia_tra_usuario_rel (
    tra_usuario_id integer NOT NULL,
    tra_preferencia_id integer NOT NULL
);
 3   DROP TABLE public.tra_preferencia_tra_usuario_rel;
       public         postgres    false    3            ?           0    0 %   TABLE tra_preferencia_tra_usuario_rel    COMMENT     o   COMMENT ON TABLE public.tra_preferencia_tra_usuario_rel IS 'RELATION BETWEEN tra_usuario AND tra_preferencia';
            public       postgres    false    236            ?            1259    188842    tra_tipousuario    TABLE     R  CREATE TABLE public.tra_tipousuario (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    descuento double precision,
    aumento double precision,
    comision double precision,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);
 #   DROP TABLE public.tra_tipousuario;
       public         postgres    false    3            ?           0    0    TABLE tra_tipousuario    COMMENT     G   COMMENT ON TABLE public.tra_tipousuario IS 'Transporte - TipoUsuario';
            public       postgres    false    237            ?           0    0 "   COLUMN tra_tipousuario.descripcion    COMMENT     H   COMMENT ON COLUMN public.tra_tipousuario.descripcion IS 'Descripción';
            public       postgres    false    237            ?           0    0     COLUMN tra_tipousuario.descuento    COMMENT     E   COMMENT ON COLUMN public.tra_tipousuario.descuento IS 'Descuento %';
            public       postgres    false    237            ?           0    0    COLUMN tra_tipousuario.aumento    COMMENT     A   COMMENT ON COLUMN public.tra_tipousuario.aumento IS 'Aumento %';
            public       postgres    false    237            ?           0    0    COLUMN tra_tipousuario.comision    COMMENT     D   COMMENT ON COLUMN public.tra_tipousuario.comision IS 'Comisión %';
            public       postgres    false    237            ?           0    0 !   COLUMN tra_tipousuario.create_uid    COMMENT     E   COMMENT ON COLUMN public.tra_tipousuario.create_uid IS 'Created by';
            public       postgres    false    237            ?           0    0 "   COLUMN tra_tipousuario.create_date    COMMENT     F   COMMENT ON COLUMN public.tra_tipousuario.create_date IS 'Created on';
            public       postgres    false    237            ?           0    0     COLUMN tra_tipousuario.write_uid    COMMENT     I   COMMENT ON COLUMN public.tra_tipousuario.write_uid IS 'Last Updated by';
            public       postgres    false    237            ?           0    0 !   COLUMN tra_tipousuario.write_date    COMMENT     J   COMMENT ON COLUMN public.tra_tipousuario.write_date IS 'Last Updated on';
            public       postgres    false    237            ?            1259    188848    tra_tipousuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_tipousuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tra_tipousuario_id_seq;
       public       postgres    false    3    237            ?           0    0    tra_tipousuario_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tra_tipousuario_id_seq OWNED BY public.tra_tipousuario.id;
            public       postgres    false    238            ?            1259    188850    tra_tipovehiculo    TABLE     ?  CREATE TABLE public.tra_tipovehiculo (
    id integer NOT NULL,
    descripcion character varying NOT NULL,
    descuento double precision,
    aumento double precision,
    comision double precision,
    estado boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    nro_asiento integer NOT NULL,
    capacidad double precision NOT NULL
);
 $   DROP TABLE public.tra_tipovehiculo;
       public         postgres    false    3            ?           0    0    TABLE tra_tipovehiculo    COMMENT     J   COMMENT ON TABLE public.tra_tipovehiculo IS 'Transporte - Tipo Vehiculo';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.descripcion    COMMENT     I   COMMENT ON COLUMN public.tra_tipovehiculo.descripcion IS 'Descripción';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.descuento    COMMENT     F   COMMENT ON COLUMN public.tra_tipovehiculo.descuento IS 'Descuento %';
            public       postgres    false    239            ?           0    0    COLUMN tra_tipovehiculo.aumento    COMMENT     B   COMMENT ON COLUMN public.tra_tipovehiculo.aumento IS 'Aumento %';
            public       postgres    false    239            ?           0    0     COLUMN tra_tipovehiculo.comision    COMMENT     E   COMMENT ON COLUMN public.tra_tipovehiculo.comision IS 'Comisión %';
            public       postgres    false    239            ?           0    0    COLUMN tra_tipovehiculo.estado    COMMENT     >   COMMENT ON COLUMN public.tra_tipovehiculo.estado IS 'Estado';
            public       postgres    false    239            ?           0    0 "   COLUMN tra_tipovehiculo.create_uid    COMMENT     F   COMMENT ON COLUMN public.tra_tipovehiculo.create_uid IS 'Created by';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.create_date    COMMENT     G   COMMENT ON COLUMN public.tra_tipovehiculo.create_date IS 'Created on';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.write_uid    COMMENT     J   COMMENT ON COLUMN public.tra_tipovehiculo.write_uid IS 'Last Updated by';
            public       postgres    false    239            ?           0    0 "   COLUMN tra_tipovehiculo.write_date    COMMENT     K   COMMENT ON COLUMN public.tra_tipovehiculo.write_date IS 'Last Updated on';
            public       postgres    false    239            ?           0    0 #   COLUMN tra_tipovehiculo.nro_asiento    COMMENT     P   COMMENT ON COLUMN public.tra_tipovehiculo.nro_asiento IS 'Número de asientos';
            public       postgres    false    239            ?           0    0 !   COLUMN tra_tipovehiculo.capacidad    COMMENT     O   COMMENT ON COLUMN public.tra_tipovehiculo.capacidad IS 'Capacidad carga (kg)';
            public       postgres    false    239            ?            1259    188856    tra_tipovehiculo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_tipovehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tra_tipovehiculo_id_seq;
       public       postgres    false    239    3            ?           0    0    tra_tipovehiculo_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tra_tipovehiculo_id_seq OWNED BY public.tra_tipovehiculo.id;
            public       postgres    false    240            ?            1259    188858    tra_usuario    TABLE     ?  CREATE TABLE public.tra_usuario (
    id integer NOT NULL,
    currency_id integer,
    tipo_id integer NOT NULL,
    password character varying,
    ruc character varying NOT NULL,
    estado boolean DEFAULT true,
    comision numeric,
    ganancias numeric,
    pago numeric,
    lugar_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    display_name character varying,
    email character varying NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    direccion character varying NOT NULL,
    lat numeric,
    lon numeric,
    discapacidad boolean,
    razon_social character varying(100) NOT NULL,
    prioridad integer,
    padre_id integer,
    telefono character varying(100) NOT NULL,
    cod_recuperacion character varying(4)
);
    DROP TABLE public.tra_usuario;
       public         postgres    false    3            ?           0    0    TABLE tra_usuario    COMMENT     ?   COMMENT ON TABLE public.tra_usuario IS 'Transporte - Usuario';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.currency_id    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.currency_id IS 'Currency';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.tipo_id    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.tipo_id IS 'Tipo Usuario';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.password    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.password IS 'Password';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.ruc    COMMENT     A   COMMENT ON COLUMN public.tra_usuario.ruc IS 'Cédula/Pasaporte';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.estado    COMMENT     9   COMMENT ON COLUMN public.tra_usuario.estado IS 'Estado';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.comision    COMMENT     >   COMMENT ON COLUMN public.tra_usuario.comision IS 'Comisión';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.ganancias    COMMENT     ?   COMMENT ON COLUMN public.tra_usuario.ganancias IS 'Ganancias';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.pago    COMMENT     5   COMMENT ON COLUMN public.tra_usuario.pago IS 'Pago';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.lugar_id    COMMENT     :   COMMENT ON COLUMN public.tra_usuario.lugar_id IS 'Lugar';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.create_uid    COMMENT     A   COMMENT ON COLUMN public.tra_usuario.create_uid IS 'Created by';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.create_date    COMMENT     B   COMMENT ON COLUMN public.tra_usuario.create_date IS 'Created on';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.write_uid    COMMENT     E   COMMENT ON COLUMN public.tra_usuario.write_uid IS 'Last Updated by';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.write_date    COMMENT     F   COMMENT ON COLUMN public.tra_usuario.write_date IS 'Last Updated on';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.display_name    COMMENT     E   COMMENT ON COLUMN public.tra_usuario.display_name IS 'Display Name';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.email    COMMENT     7   COMMENT ON COLUMN public.tra_usuario.email IS 'Email';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.nombre    COMMENT     9   COMMENT ON COLUMN public.tra_usuario.nombre IS 'Nombre';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.apellido    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.apellido IS 'Apellido';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.direccion    COMMENT     @   COMMENT ON COLUMN public.tra_usuario.direccion IS 'Dirección';
            public       postgres    false    241            ?           0    0    COLUMN tra_usuario.lat    COMMENT     7   COMMENT ON COLUMN public.tra_usuario.lat IS 'Latitud';
            public       postgres    false    241                        0    0    COLUMN tra_usuario.lon    COMMENT     8   COMMENT ON COLUMN public.tra_usuario.lon IS 'Longitud';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.discapacidad    COMMENT     K   COMMENT ON COLUMN public.tra_usuario.discapacidad IS 'Tiene discapacidad';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.razon_social    COMMENT     F   COMMENT ON COLUMN public.tra_usuario.razon_social IS 'Razón social';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.prioridad    COMMENT     ?   COMMENT ON COLUMN public.tra_usuario.prioridad IS 'Prioridad';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.padre_id    COMMENT     D   COMMENT ON COLUMN public.tra_usuario.padre_id IS 'Proveedor padre';
            public       postgres    false    241                       0    0    COLUMN tra_usuario.telefono    COMMENT     =   COMMENT ON COLUMN public.tra_usuario.telefono IS 'Telefono';
            public       postgres    false    241            ?            1259    188865    tra_usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tra_usuario_id_seq;
       public       postgres    false    241    3                       0    0    tra_usuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tra_usuario_id_seq OWNED BY public.tra_usuario.id;
            public       postgres    false    242            ?            1259    188867    tra_vehiculo    TABLE     3  CREATE TABLE public.tra_vehiculo (
    id integer NOT NULL,
    placa character varying NOT NULL,
    modelo character varying(100) NOT NULL,
    marca character varying(100) NOT NULL,
    color character varying,
    nro_asiento integer,
    estado boolean,
    tipo_vehiculo_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    propietario_id_moved0 character varying,
    propietario_id_moved1 integer,
    usuario_id integer,
    capacidad numeric
);
     DROP TABLE public.tra_vehiculo;
       public         postgres    false    3                       0    0    TABLE tra_vehiculo    COMMENT     A   COMMENT ON TABLE public.tra_vehiculo IS 'Transporte - Vehiculo';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.placa    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.placa IS 'Placa';
            public       postgres    false    243            	           0    0    COLUMN tra_vehiculo.modelo    COMMENT     :   COMMENT ON COLUMN public.tra_vehiculo.modelo IS 'Modelo';
            public       postgres    false    243            
           0    0    COLUMN tra_vehiculo.marca    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.marca IS 'Marca';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.color    COMMENT     8   COMMENT ON COLUMN public.tra_vehiculo.color IS 'Color';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.nro_asiento    COMMENT     K   COMMENT ON COLUMN public.tra_vehiculo.nro_asiento IS 'Numero de asientos';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.estado    COMMENT     :   COMMENT ON COLUMN public.tra_vehiculo.estado IS 'Estado';
            public       postgres    false    243                       0    0 $   COLUMN tra_vehiculo.tipo_vehiculo_id    COMMENT     L   COMMENT ON COLUMN public.tra_vehiculo.tipo_vehiculo_id IS 'Tipo Vehículo';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.create_uid    COMMENT     B   COMMENT ON COLUMN public.tra_vehiculo.create_uid IS 'Created by';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.create_date    COMMENT     C   COMMENT ON COLUMN public.tra_vehiculo.create_date IS 'Created on';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.write_uid    COMMENT     F   COMMENT ON COLUMN public.tra_vehiculo.write_uid IS 'Last Updated by';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.write_date    COMMENT     G   COMMENT ON COLUMN public.tra_vehiculo.write_date IS 'Last Updated on';
            public       postgres    false    243                       0    0 )   COLUMN tra_vehiculo.propietario_id_moved0    COMMENT     N   COMMENT ON COLUMN public.tra_vehiculo.propietario_id_moved0 IS 'Propietario';
            public       postgres    false    243                       0    0 )   COLUMN tra_vehiculo.propietario_id_moved1    COMMENT     N   COMMENT ON COLUMN public.tra_vehiculo.propietario_id_moved1 IS 'Propietario';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.usuario_id    COMMENT     ?   COMMENT ON COLUMN public.tra_vehiculo.usuario_id IS 'Usuario';
            public       postgres    false    243                       0    0    COLUMN tra_vehiculo.capacidad    COMMENT     K   COMMENT ON COLUMN public.tra_vehiculo.capacidad IS 'Capacidad carga (kg)';
            public       postgres    false    243            ?            1259    188873    tra_vehiculo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tra_vehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tra_vehiculo_id_seq;
       public       postgres    false    243    3                       0    0    tra_vehiculo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tra_vehiculo_id_seq OWNED BY public.tra_vehiculo.id;
            public       postgres    false    244            G           2604    189040 
   bus_bus id    DEFAULT     h   ALTER TABLE ONLY public.bus_bus ALTER COLUMN id SET DEFAULT nextval('public.bus_bus_id_seq'::regclass);
 9   ALTER TABLE public.bus_bus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            H           2604    189041    bus_presence id    DEFAULT     r   ALTER TABLE ONLY public.bus_presence ALTER COLUMN id SET DEFAULT nextval('public.bus_presence_id_seq'::regclass);
 >   ALTER TABLE public.bus_presence ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            I           2604    189046    fac_detalle id    DEFAULT     p   ALTER TABLE ONLY public.fac_detalle ALTER COLUMN id SET DEFAULT nextval('public.fac_detalle_id_seq'::regclass);
 =   ALTER TABLE public.fac_detalle ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            J           2604    189047    fac_factura id    DEFAULT     p   ALTER TABLE ONLY public.fac_factura ALTER COLUMN id SET DEFAULT nextval('public.fac_factura_id_seq'::regclass);
 =   ALTER TABLE public.fac_factura ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            K           2604    189048    fac_requerimiento id    DEFAULT     |   ALTER TABLE ONLY public.fac_requerimiento ALTER COLUMN id SET DEFAULT nextval('public.fac_requerimiento_id_seq'::regclass);
 C   ALTER TABLE public.fac_requerimiento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            L           2604    189049    fac_tipopago id    DEFAULT     r   ALTER TABLE ONLY public.fac_tipopago ALTER COLUMN id SET DEFAULT nextval('public.fac_tipopago_id_seq'::regclass);
 >   ALTER TABLE public.fac_tipopago ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            M           2604    189097    lug_conexion id    DEFAULT     r   ALTER TABLE ONLY public.lug_conexion ALTER COLUMN id SET DEFAULT nextval('public.lug_conexion_id_seq'::regclass);
 >   ALTER TABLE public.lug_conexion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            N           2604    189098    lug_lugar id    DEFAULT     l   ALTER TABLE ONLY public.lug_lugar ALTER COLUMN id SET DEFAULT nextval('public.lug_lugar_id_seq'::regclass);
 ;   ALTER TABLE public.lug_lugar ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            O           2604    189099    lug_tipolugar id    DEFAULT     t   ALTER TABLE ONLY public.lug_tipolugar ALTER COLUMN id SET DEFAULT nextval('public.lug_tipolugar_id_seq'::regclass);
 ?   ALTER TABLE public.lug_tipolugar ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            Q           2604    189155    res_users id    DEFAULT     l   ALTER TABLE ONLY public.res_users ALTER COLUMN id SET DEFAULT nextval('public.res_users_id_seq'::regclass);
 ;   ALTER TABLE public.res_users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            R           2604    189158    ser_hotel id    DEFAULT     l   ALTER TABLE ONLY public.ser_hotel ALTER COLUMN id SET DEFAULT nextval('public.ser_hotel_id_seq'::regclass);
 ;   ALTER TABLE public.ser_hotel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            S           2604    189159    ser_paquete id    DEFAULT     p   ALTER TABLE ONLY public.ser_paquete ALTER COLUMN id SET DEFAULT nextval('public.ser_paquete_id_seq'::regclass);
 =   ALTER TABLE public.ser_paquete ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            T           2604    189160    ser_proveedor id    DEFAULT     t   ALTER TABLE ONLY public.ser_proveedor ALTER COLUMN id SET DEFAULT nextval('public.ser_proveedor_id_seq'::regclass);
 ?   ALTER TABLE public.ser_proveedor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            U           2604    189161    ser_ruta id    DEFAULT     j   ALTER TABLE ONLY public.ser_ruta ALTER COLUMN id SET DEFAULT nextval('public.ser_ruta_id_seq'::regclass);
 :   ALTER TABLE public.ser_ruta ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            V           2604    189162    ser_sucursal id    DEFAULT     r   ALTER TABLE ONLY public.ser_sucursal ALTER COLUMN id SET DEFAULT nextval('public.ser_sucursal_id_seq'::regclass);
 >   ALTER TABLE public.ser_sucursal ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            W           2604    189163    ser_tipopaquete id    DEFAULT     x   ALTER TABLE ONLY public.ser_tipopaquete ALTER COLUMN id SET DEFAULT nextval('public.ser_tipopaquete_id_seq'::regclass);
 A   ALTER TABLE public.ser_tipopaquete ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            X           2604    189164    ser_tiposervicio id    DEFAULT     z   ALTER TABLE ONLY public.ser_tiposervicio ALTER COLUMN id SET DEFAULT nextval('public.ser_tiposervicio_id_seq'::regclass);
 B   ALTER TABLE public.ser_tiposervicio ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            Y           2604    189165    ser_turismo id    DEFAULT     p   ALTER TABLE ONLY public.ser_turismo ALTER COLUMN id SET DEFAULT nextval('public.ser_turismo_id_seq'::regclass);
 =   ALTER TABLE public.ser_turismo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            Z           2604    189181    tra_preferencia id    DEFAULT     x   ALTER TABLE ONLY public.tra_preferencia ALTER COLUMN id SET DEFAULT nextval('public.tra_preferencia_id_seq'::regclass);
 A   ALTER TABLE public.tra_preferencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            [           2604    189182    tra_tipousuario id    DEFAULT     x   ALTER TABLE ONLY public.tra_tipousuario ALTER COLUMN id SET DEFAULT nextval('public.tra_tipousuario_id_seq'::regclass);
 A   ALTER TABLE public.tra_tipousuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237            \           2604    189183    tra_tipovehiculo id    DEFAULT     z   ALTER TABLE ONLY public.tra_tipovehiculo ALTER COLUMN id SET DEFAULT nextval('public.tra_tipovehiculo_id_seq'::regclass);
 B   ALTER TABLE public.tra_tipovehiculo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239            ^           2604    189184    tra_usuario id    DEFAULT     p   ALTER TABLE ONLY public.tra_usuario ALTER COLUMN id SET DEFAULT nextval('public.tra_usuario_id_seq'::regclass);
 =   ALTER TABLE public.tra_usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241            _           2604    189185    tra_vehiculo id    DEFAULT     r   ALTER TABLE ONLY public.tra_vehiculo ALTER COLUMN id SET DEFAULT nextval('public.tra_vehiculo_id_seq'::regclass);
 >   ALTER TABLE public.tra_vehiculo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243            m          0    187574    bus_bus 
   TABLE DATA               g   COPY public.bus_bus (id, channel, message, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    198   ?       o          0    187582    bus_presence 
   TABLE DATA               U   COPY public.bus_presence (id, user_id, last_poll, last_presence, status) FROM stdin;
    public       postgres    false    200   `
       q          0    187625    fac_detalle 
   TABLE DATA               ?   COPY public.fac_detalle (id, currency_id, factura_id, requerimiento_id, cantidad, create_uid, create_date, write_uid, write_date, usuario_id, valor_unitario, valor_total) FROM stdin;
    public       postgres    false    202   ?
       s          0    187633    fac_factura 
   TABLE DATA               :  COPY public.fac_factura (id, currency_id, codigo, tipo_pago_id, autorizacion_sri, fecha, subtotal0, descuento, comision, ruc, direccion, telefono, aumento, create_uid, create_date, write_uid, write_date, subtotal12, iva12, subtotal, usuario_id, state, email, cliente, proveedor_id, anotaciones, total) FROM stdin;
    public       postgres    false    204   {       u          0    187641    fac_requerimiento 
   TABLE DATA                 COPY public.fac_requerimiento (id, currency_id, tipo_servicio_id, descripcion, fecha, recoger_casa, compartido, ruta_id, paquete_id, usuario_id, lat_origen, lon_origen, lat_destino, lon_destino, state, usuario_destino_id, vehiculo_id, create_uid, create_date, write_uid, write_date, hora, direccion_casa_moved0, direccion_destino, valor, numero, dejar_casa, direccion_origen, iva, padre_id, turismo_id, hotel_id, codigo, lugar_origen_id, lugar_destino_id, proveedor_id, nombre_cliente, apellido_cliente) FROM stdin;
    public       postgres    false    206   G       w          0    187649    fac_tipopago 
   TABLE DATA               ?   COPY public.fac_tipopago (id, descripcion, estado, aumento, descuento, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    208   ?       y          0    188065    lug_conexion 
   TABLE DATA               ?   COPY public.lug_conexion (id, lugar_origen_id, lugar_destino_id, duracion_viaje, duracion_entrega, estado, create_uid, create_date, write_uid, write_date, currency_id, padre_id) FROM stdin;
    public       postgres    false    210   ?        {          0    188070 	   lug_lugar 
   TABLE DATA               ?   COPY public.lug_lugar (id, tipo_lugar_id, codigo, nombre, busqueda, estado, create_uid, create_date, write_uid, write_date, currency_id, padre_id, valor_recoger, valor_dejar) FROM stdin;
    public       postgres    false    212   n       }          0    188078    lug_tipolugar 
   TABLE DATA               h   COPY public.lug_tipolugar (id, descripcion, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    214   ?                 0    188628 	   res_users 
   TABLE DATA               9  COPY public.res_users (id, active, login, password, company_id, partner_id, create_date, signature, action_id, share, create_uid, write_uid, write_date, alias_id, notification_type, out_of_office_message, odoobot_state, website_id, oauth_provider_id, oauth_uid, oauth_access_token, livechat_username) FROM stdin;
    public       postgres    false    216   3       ?          0    188653 	   ser_hotel 
   TABLE DATA               ?   COPY public.ser_hotel (id, currency_id, usuario_id, lugar_id, descripcion, valor, discapacidad, iva, estado, prioridad, create_uid, create_date, write_uid, write_date, url, indicaciones) FROM stdin;
    public       postgres    false    218   ?       ?          0    188661    ser_paquete 
   TABLE DATA               4  COPY public.ser_paquete (id, currency_id, indicaciones_moved0, conexion_id, tipo_paquete_id, hora_llegada_moved0, hora_recoger_moved0, fin_semana, valor, estado, create_uid, create_date, write_uid, write_date, hora_llegada, hora_recoger, usuario_id, iva, discapacidad, indicaciones, descripcion) FROM stdin;
    public       postgres    false    220   l       ?          0    188669    ser_proveedor 
   TABLE DATA               ?   COPY public.ser_proveedor (id, currency_id, password, ruc, razon_social, estado, comision, ganancias, pago, create_uid, create_date, write_uid, write_date, email, nombre, apellido, direccion, celular, telefono, prioridad, lugar_id, lat, lon) FROM stdin;
    public       postgres    false    222   ?       ?          0    188677    ser_ruta 
   TABLE DATA               ?   COPY public.ser_ruta (id, currency_id, tipo_vehiculo_id, conexion_id, tipo_frecuencia, hora_moved0, estado, unitario, completo, create_uid, create_date, write_uid, write_date, hora, usuario_id, iva, discapacidad, indicaciones, fecha) FROM stdin;
    public       postgres    false    224   
       ?          0    188685    ser_sucursal 
   TABLE DATA               ?   COPY public.ser_sucursal (id, currency_id, usuario_id, lugar_id, direccion, lat, lon, telefono, email, comision, ganancias, pago, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    226   6       ?          0    188693    ser_tipopaquete 
   TABLE DATA               ?   COPY public.ser_tipopaquete (id, tipo_paquete, aumento, descuento, comision, estado, create_uid, create_date, write_uid, write_date, currency_id, peso, valor_referencial) FROM stdin;
    public       postgres    false    228   ?       ?          0    188701    ser_tiposervicio 
   TABLE DATA               ?   COPY public.ser_tiposervicio (id, descripcion, create_uid, create_date, write_uid, write_date, aumento, descuento, comision, estado) FROM stdin;
    public       postgres    false    230   O       ?          0    188709    ser_turismo 
   TABLE DATA               ?   COPY public.ser_turismo (id, currency_id, usuario_id, lugar_id, fecha, hora, descripcion, indicaciones, valor, discapacidad, iva, estado, frecuencia, create_uid, create_date, write_uid, write_date, url) FROM stdin;
    public       postgres    false    232          ?          0    188831    tra_preferencia 
   TABLE DATA               r   COPY public.tra_preferencia (id, descripcion, estado, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    234   ?       ?          0    188839    tra_preferencia_tra_usuario_rel 
   TABLE DATA               ]   COPY public.tra_preferencia_tra_usuario_rel (tra_usuario_id, tra_preferencia_id) FROM stdin;
    public       postgres    false    236          ?          0    188842    tra_tipousuario 
   TABLE DATA               ?   COPY public.tra_tipousuario (id, descripcion, descuento, aumento, comision, create_uid, create_date, write_uid, write_date) FROM stdin;
    public       postgres    false    237   @       ?          0    188850    tra_tipovehiculo 
   TABLE DATA               ?   COPY public.tra_tipovehiculo (id, descripcion, descuento, aumento, comision, estado, create_uid, create_date, write_uid, write_date, nro_asiento, capacidad) FROM stdin;
    public       postgres    false    239           ?          0    188858    tra_usuario 
   TABLE DATA               4  COPY public.tra_usuario (id, currency_id, tipo_id, password, ruc, estado, comision, ganancias, pago, lugar_id, create_uid, create_date, write_uid, write_date, display_name, email, nombre, apellido, direccion, lat, lon, discapacidad, razon_social, prioridad, padre_id, telefono, cod_recuperacion) FROM stdin;
    public       postgres    false    241   *        ?          0    188867    tra_vehiculo 
   TABLE DATA               ?   COPY public.tra_vehiculo (id, placa, modelo, marca, color, nro_asiento, estado, tipo_vehiculo_id, create_uid, create_date, write_uid, write_date, propietario_id_moved0, propietario_id_moved1, usuario_id, capacidad) FROM stdin;
    public       postgres    false    243                     0    0    base_cache_signaling    SEQUENCE SET     D   SELECT pg_catalog.setval('public.base_cache_signaling', 111, true);
            public       postgres    false    196                       0    0    base_registry_signaling    SEQUENCE SET     G   SELECT pg_catalog.setval('public.base_registry_signaling', 449, true);
            public       postgres    false    197                       0    0    bus_bus_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bus_bus_id_seq', 65, true);
            public       postgres    false    199                       0    0    bus_presence_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bus_presence_id_seq', 1, true);
            public       postgres    false    201                       0    0    fac_detalle_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fac_detalle_id_seq', 332, true);
            public       postgres    false    203                       0    0    fac_factura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fac_factura_id_seq', 735, true);
            public       postgres    false    205                       0    0    fac_requerimiento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.fac_requerimiento_id_seq', 881, true);
            public       postgres    false    207                       0    0    fac_tipopago_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fac_tipopago_id_seq', 4, true);
            public       postgres    false    209                        0    0    lug_conexion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lug_conexion_id_seq', 53, true);
            public       postgres    false    211            !           0    0    lug_lugar_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lug_lugar_id_seq', 19, true);
            public       postgres    false    213            "           0    0    lug_tipolugar_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lug_tipolugar_id_seq', 4, true);
            public       postgres    false    215            #           0    0    res_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.res_users_id_seq', 7, true);
            public       postgres    false    217            $           0    0    ser_hotel_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ser_hotel_id_seq', 3, true);
            public       postgres    false    219            %           0    0    ser_paquete_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ser_paquete_id_seq', 8, true);
            public       postgres    false    221            &           0    0    ser_proveedor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ser_proveedor_id_seq', 3, true);
            public       postgres    false    223            '           0    0    ser_ruta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ser_ruta_id_seq', 98, true);
            public       postgres    false    225            (           0    0    ser_sucursal_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ser_sucursal_id_seq', 1, true);
            public       postgres    false    227            )           0    0    ser_tipopaquete_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ser_tipopaquete_id_seq', 4, true);
            public       postgres    false    229            *           0    0    ser_tiposervicio_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ser_tiposervicio_id_seq', 4, true);
            public       postgres    false    231            +           0    0    ser_turismo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ser_turismo_id_seq', 1, true);
            public       postgres    false    233            ,           0    0    tra_preferencia_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tra_preferencia_id_seq', 3, true);
            public       postgres    false    235            -           0    0    tra_tipousuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tra_tipousuario_id_seq', 5, true);
            public       postgres    false    238            .           0    0    tra_tipovehiculo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tra_tipovehiculo_id_seq', 7, true);
            public       postgres    false    240            /           0    0    tra_usuario_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tra_usuario_id_seq', 18, true);
            public       postgres    false    242            0           0    0    tra_vehiculo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tra_vehiculo_id_seq', 29, true);
            public       postgres    false    244            a           2606    189333    bus_bus bus_bus_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_pkey;
       public         postgres    false    198            c           2606    189335 2   bus_presence bus_presence_bus_user_presence_unique 
   CONSTRAINT     p   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_bus_user_presence_unique UNIQUE (user_id);
 \   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_bus_user_presence_unique;
       public         postgres    false    200            1           0    0 @   CONSTRAINT bus_presence_bus_user_presence_unique ON bus_presence    COMMENT     i   COMMENT ON CONSTRAINT bus_presence_bus_user_presence_unique ON public.bus_presence IS 'unique(user_id)';
            public       postgres    false    2915            e           2606    189337    bus_presence bus_presence_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_pkey;
       public         postgres    false    200            h           2606    189353    fac_detalle fac_detalle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_pkey;
       public         postgres    false    202            j           2606    189355    fac_factura fac_factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_pkey;
       public         postgres    false    204            l           2606    189357 (   fac_requerimiento fac_requerimiento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_pkey;
       public         postgres    false    206            n           2606    189359    fac_tipopago fac_tipopago_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_pkey;
       public         postgres    false    208            p           2606    189493    lug_conexion lug_conexion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_pkey;
       public         postgres    false    210            r           2606    189495    lug_lugar lug_lugar_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_pkey;
       public         postgres    false    212            t           2606    189497     lug_tipolugar lug_tipolugar_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_pkey;
       public         postgres    false    214            v           2606    189713    res_users res_users_login_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_login_key UNIQUE (login, website_id);
 G   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_login_key;
       public         postgres    false    216    216            2           0    0 +   CONSTRAINT res_users_login_key ON res_users    COMMENT     _   COMMENT ON CONSTRAINT res_users_login_key ON public.res_users IS 'unique (login, website_id)';
            public       postgres    false    2934            x           2606    189715    res_users res_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_pkey;
       public         postgres    false    216            z           2606    189717 7   res_users res_users_uniq_users_oauth_provider_oauth_uid 
   CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid UNIQUE (oauth_provider_id, oauth_uid);
 a   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid;
       public         postgres    false    216    216            3           0    0 E   CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid ON res_users    COMMENT     ?   COMMENT ON CONSTRAINT res_users_uniq_users_oauth_provider_oauth_uid ON public.res_users IS 'unique(oauth_provider_id, oauth_uid)';
            public       postgres    false    2938            |           2606    189723    ser_hotel ser_hotel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_pkey;
       public         postgres    false    218            ~           2606    189725    ser_paquete ser_paquete_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_pkey;
       public         postgres    false    220            ?           2606    189727     ser_proveedor ser_proveedor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_pkey;
       public         postgres    false    222            ?           2606    189729    ser_ruta ser_ruta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_pkey;
       public         postgres    false    224            ?           2606    189731    ser_sucursal ser_sucursal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_pkey;
       public         postgres    false    226            ?           2606    189733 $   ser_tipopaquete ser_tipopaquete_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_pkey;
       public         postgres    false    228            ?           2606    189735 &   ser_tiposervicio ser_tiposervicio_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_pkey;
       public         postgres    false    230            ?           2606    189737    ser_turismo ser_turismo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_pkey;
       public         postgres    false    232            ?           2606    189769 $   tra_preferencia tra_preferencia_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_pkey;
       public         postgres    false    234            ?           2606    189771 _   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key UNIQUE (tra_usuario_id, tra_preferencia_id);
 ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_r_tra_usuario_id_tra_preferenci_key;
       public         postgres    false    236    236            ?           2606    189773 $   tra_tipousuario tra_tipousuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_pkey;
       public         postgres    false    237            ?           2606    189775 &   tra_tipovehiculo tra_tipovehiculo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_pkey;
       public         postgres    false    239            ?           2606    189777    tra_usuario tra_usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_pkey;
       public         postgres    false    241            ?           2606    189779    tra_vehiculo tra_vehiculo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_pkey;
       public         postgres    false    243            f           1259    189834    bus_presence_user_id_index    INDEX     V   CREATE INDEX bus_presence_user_id_index ON public.bus_presence USING btree (user_id);
 .   DROP INDEX public.bus_presence_user_id_index;
       public         postgres    false    200            ?           1259    190080 6   tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx    INDEX     ?   CREATE INDEX tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx ON public.tra_preferencia_tra_usuario_rel USING btree (tra_preferencia_id);
 J   DROP INDEX public.tra_preferencia_tra_usuario_rel_tra_preferencia_id_idx;
       public         postgres    false    236            ?           1259    190081 2   tra_preferencia_tra_usuario_rel_tra_usuario_id_idx    INDEX     ?   CREATE INDEX tra_preferencia_tra_usuario_rel_tra_usuario_id_idx ON public.tra_preferencia_tra_usuario_rel USING btree (tra_usuario_id);
 F   DROP INDEX public.tra_preferencia_tra_usuario_rel_tra_usuario_id_idx;
       public         postgres    false    236            ?           1259    190082    tra_usuario_display_name_index    INDEX     ^   CREATE INDEX tra_usuario_display_name_index ON public.tra_usuario USING btree (display_name);
 2   DROP INDEX public.tra_usuario_display_name_index;
       public         postgres    false    241            ?           2606    190475    bus_bus bus_bus_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_create_uid_fkey;
       public       postgres    false    2936    216    198            ?           2606    190480    bus_bus bus_bus_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.bus_bus DROP CONSTRAINT bus_bus_write_uid_fkey;
       public       postgres    false    2936    198    216            ?           2606    190485 &   bus_presence bus_presence_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.bus_presence DROP CONSTRAINT bus_presence_user_id_fkey;
       public       postgres    false    2936    200    216            ?           2606    190596 '   fac_detalle fac_detalle_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_create_uid_fkey;
       public       postgres    false    2936    202    216            ?           2606    190606 '   fac_detalle fac_detalle_factura_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_factura_id_fkey FOREIGN KEY (factura_id) REFERENCES public.fac_factura(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_factura_id_fkey;
       public       postgres    false    2922    202    204            ?           2606    190611 -   fac_detalle fac_detalle_requerimiento_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_requerimiento_id_fkey FOREIGN KEY (requerimiento_id) REFERENCES public.fac_requerimiento(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_requerimiento_id_fkey;
       public       postgres    false    2924    202    206            ?           2606    190616 '   fac_detalle fac_detalle_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_usuario_id_fkey;
       public       postgres    false    2967    241    202            ?           2606    190621 &   fac_detalle fac_detalle_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_detalle
    ADD CONSTRAINT fac_detalle_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.fac_detalle DROP CONSTRAINT fac_detalle_write_uid_fkey;
       public       postgres    false    2936    216    202            ?           2606    190626 '   fac_factura fac_factura_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_create_uid_fkey;
       public       postgres    false    204    2936    216            ?           2606    190636 )   fac_factura fac_factura_proveedor_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_proveedor_id_fkey;
       public       postgres    false    204    241    2967            ?           2606    190641 )   fac_factura fac_factura_tipo_pago_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_tipo_pago_id_fkey FOREIGN KEY (tipo_pago_id) REFERENCES public.fac_tipopago(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_tipo_pago_id_fkey;
       public       postgres    false    204    208    2926            ?           2606    190646 '   fac_factura fac_factura_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_usuario_id_fkey;
       public       postgres    false    204    241    2967            ?           2606    190651 &   fac_factura fac_factura_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_factura
    ADD CONSTRAINT fac_factura_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.fac_factura DROP CONSTRAINT fac_factura_write_uid_fkey;
       public       postgres    false    204    216    2936            ?           2606    190658 3   fac_requerimiento fac_requerimiento_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_create_uid_fkey;
       public       postgres    false    206    216    2936            ?           2606    190671 1   fac_requerimiento fac_requerimiento_hotel_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.ser_hotel(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_hotel_id_fkey;
       public       postgres    false    206    218    2940            ?           2606    190677 9   fac_requerimiento fac_requerimiento_lugar_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_lugar_destino_id_fkey FOREIGN KEY (lugar_destino_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_lugar_destino_id_fkey;
       public       postgres    false    206    212    2930            ?           2606    190682 8   fac_requerimiento fac_requerimiento_lugar_origen_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_lugar_origen_id_fkey FOREIGN KEY (lugar_origen_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_lugar_origen_id_fkey;
       public       postgres    false    206    212    2930            ?           2606    190687 1   fac_requerimiento fac_requerimiento_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.fac_requerimiento(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_padre_id_fkey;
       public       postgres    false    206    206    2924            ?           2606    190692 3   fac_requerimiento fac_requerimiento_paquete_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_paquete_id_fkey FOREIGN KEY (paquete_id) REFERENCES public.ser_paquete(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_paquete_id_fkey;
       public       postgres    false    2942    220    206            ?           2606    190699 5   fac_requerimiento fac_requerimiento_proveedor_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_proveedor_id_fkey;
       public       postgres    false    241    2967    206            ?           2606    190706 0   fac_requerimiento fac_requerimiento_ruta_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_ruta_id_fkey FOREIGN KEY (ruta_id) REFERENCES public.ser_ruta(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_ruta_id_fkey;
       public       postgres    false    206    2946    224            ?           2606    190711 9   fac_requerimiento fac_requerimiento_tipo_servicio_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_tipo_servicio_id_fkey FOREIGN KEY (tipo_servicio_id) REFERENCES public.ser_tiposervicio(id) ON DELETE RESTRICT;
 c   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_tipo_servicio_id_fkey;
       public       postgres    false    206    230    2952            ?           2606    190716 3   fac_requerimiento fac_requerimiento_turismo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_turismo_id_fkey FOREIGN KEY (turismo_id) REFERENCES public.ser_turismo(id) ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_turismo_id_fkey;
       public       postgres    false    206    232    2954            ?           2606    190721 ;   fac_requerimiento fac_requerimiento_usuario_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_usuario_destino_id_fkey FOREIGN KEY (usuario_destino_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_usuario_destino_id_fkey;
       public       postgres    false    2967    241    206            ?           2606    190726 3   fac_requerimiento fac_requerimiento_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_usuario_id_fkey;
       public       postgres    false    206    241    2967            ?           2606    190731 4   fac_requerimiento fac_requerimiento_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_vehiculo_id_fkey FOREIGN KEY (vehiculo_id) REFERENCES public.tra_vehiculo(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_vehiculo_id_fkey;
       public       postgres    false    2969    206    243            ?           2606    190736 2   fac_requerimiento fac_requerimiento_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_requerimiento
    ADD CONSTRAINT fac_requerimiento_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.fac_requerimiento DROP CONSTRAINT fac_requerimiento_write_uid_fkey;
       public       postgres    false    2936    206    216            ?           2606    190741 )   fac_tipopago fac_tipopago_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_create_uid_fkey;
       public       postgres    false    216    208    2936            ?           2606    190746 (   fac_tipopago fac_tipopago_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fac_tipopago
    ADD CONSTRAINT fac_tipopago_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.fac_tipopago DROP CONSTRAINT fac_tipopago_write_uid_fkey;
       public       postgres    false    2936    216    208            ?           2606    191670 )   lug_conexion lug_conexion_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_create_uid_fkey;
       public       postgres    false    216    2936    210            ?           2606    191680 /   lug_conexion lug_conexion_lugar_destino_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_lugar_destino_id_fkey FOREIGN KEY (lugar_destino_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_lugar_destino_id_fkey;
       public       postgres    false    210    212    2930            ?           2606    191685 .   lug_conexion lug_conexion_lugar_origen_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_lugar_origen_id_fkey FOREIGN KEY (lugar_origen_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_lugar_origen_id_fkey;
       public       postgres    false    212    2930    210            ?           2606    191690 '   lug_conexion lug_conexion_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.lug_conexion(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_padre_id_fkey;
       public       postgres    false    210    210    2928            ?           2606    191695 (   lug_conexion lug_conexion_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_conexion
    ADD CONSTRAINT lug_conexion_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.lug_conexion DROP CONSTRAINT lug_conexion_write_uid_fkey;
       public       postgres    false    216    210    2936            ?           2606    191700 #   lug_lugar lug_lugar_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_create_uid_fkey;
       public       postgres    false    2936    216    212            ?           2606    191710 !   lug_lugar lug_lugar_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.lug_lugar(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_padre_id_fkey;
       public       postgres    false    212    2930    212            ?           2606    191715 &   lug_lugar lug_lugar_tipo_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_tipo_lugar_id_fkey FOREIGN KEY (tipo_lugar_id) REFERENCES public.lug_tipolugar(id) ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_tipo_lugar_id_fkey;
       public       postgres    false    214    2932    212            ?           2606    191720 "   lug_lugar lug_lugar_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_lugar
    ADD CONSTRAINT lug_lugar_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.lug_lugar DROP CONSTRAINT lug_lugar_write_uid_fkey;
       public       postgres    false    216    212    2936            ?           2606    191725 +   lug_tipolugar lug_tipolugar_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_create_uid_fkey;
       public       postgres    false    2936    214    216            ?           2606    191730 *   lug_tipolugar lug_tipolugar_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.lug_tipolugar
    ADD CONSTRAINT lug_tipolugar_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.lug_tipolugar DROP CONSTRAINT lug_tipolugar_write_uid_fkey;
       public       postgres    false    214    2936    216            ?           2606    193205 #   res_users res_users_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_create_uid_fkey;
       public       postgres    false    216    216    2936            ?           2606    193235 "   res_users res_users_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.res_users DROP CONSTRAINT res_users_write_uid_fkey;
       public       postgres    false    2936    216    216            ?           2606    193265 #   ser_hotel ser_hotel_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_create_uid_fkey;
       public       postgres    false    216    2936    218            ?           2606    193275 !   ser_hotel ser_hotel_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_lugar_id_fkey;
       public       postgres    false    2930    218    212            ?           2606    193280 #   ser_hotel ser_hotel_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_usuario_id_fkey;
       public       postgres    false    218    2967    241            ?           2606    193285 "   ser_hotel ser_hotel_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_hotel
    ADD CONSTRAINT ser_hotel_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.ser_hotel DROP CONSTRAINT ser_hotel_write_uid_fkey;
       public       postgres    false    2936    216    218            ?           2606    193290 (   ser_paquete ser_paquete_conexion_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_conexion_id_fkey FOREIGN KEY (conexion_id) REFERENCES public.lug_conexion(id) ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_conexion_id_fkey;
       public       postgres    false    220    210    2928            ?           2606    193295 '   ser_paquete ser_paquete_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_create_uid_fkey;
       public       postgres    false    216    220    2936            ?           2606    193305 ,   ser_paquete ser_paquete_tipo_paquete_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_tipo_paquete_id_fkey FOREIGN KEY (tipo_paquete_id) REFERENCES public.ser_tipopaquete(id) ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_tipo_paquete_id_fkey;
       public       postgres    false    2950    220    228            ?           2606    193310 '   ser_paquete ser_paquete_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_usuario_id_fkey;
       public       postgres    false    220    241    2967            ?           2606    193315 &   ser_paquete ser_paquete_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_paquete
    ADD CONSTRAINT ser_paquete_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.ser_paquete DROP CONSTRAINT ser_paquete_write_uid_fkey;
       public       postgres    false    220    2936    216            ?           2606    193320 +   ser_proveedor ser_proveedor_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_create_uid_fkey;
       public       postgres    false    2936    216    222            ?           2606    193330 )   ser_proveedor ser_proveedor_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_lugar_id_fkey;
       public       postgres    false    212    2930    222            ?           2606    193335 *   ser_proveedor ser_proveedor_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_proveedor
    ADD CONSTRAINT ser_proveedor_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.ser_proveedor DROP CONSTRAINT ser_proveedor_write_uid_fkey;
       public       postgres    false    216    222    2936            ?           2606    193340 "   ser_ruta ser_ruta_conexion_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_conexion_id_fkey FOREIGN KEY (conexion_id) REFERENCES public.lug_conexion(id) ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_conexion_id_fkey;
       public       postgres    false    210    2928    224            ?           2606    193345 !   ser_ruta ser_ruta_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_create_uid_fkey;
       public       postgres    false    224    216    2936            ?           2606    193355 '   ser_ruta ser_ruta_tipo_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_tipo_vehiculo_id_fkey FOREIGN KEY (tipo_vehiculo_id) REFERENCES public.tra_tipovehiculo(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_tipo_vehiculo_id_fkey;
       public       postgres    false    224    2964    239            ?           2606    193360 !   ser_ruta ser_ruta_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_usuario_id_fkey;
       public       postgres    false    2967    224    241            ?           2606    193365     ser_ruta ser_ruta_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_ruta
    ADD CONSTRAINT ser_ruta_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.ser_ruta DROP CONSTRAINT ser_ruta_write_uid_fkey;
       public       postgres    false    224    2936    216            ?           2606    193370 )   ser_sucursal ser_sucursal_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_create_uid_fkey;
       public       postgres    false    216    226    2936            ?           2606    193380 '   ser_sucursal ser_sucursal_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_lugar_id_fkey;
       public       postgres    false    2930    226    212            ?           2606    193385 )   ser_sucursal ser_sucursal_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_usuario_id_fkey;
       public       postgres    false    2967    241    226            ?           2606    193390 (   ser_sucursal ser_sucursal_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_sucursal
    ADD CONSTRAINT ser_sucursal_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.ser_sucursal DROP CONSTRAINT ser_sucursal_write_uid_fkey;
       public       postgres    false    216    226    2936            ?           2606    193395 /   ser_tipopaquete ser_tipopaquete_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_create_uid_fkey;
       public       postgres    false    216    228    2936            ?           2606    193405 .   ser_tipopaquete ser_tipopaquete_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tipopaquete
    ADD CONSTRAINT ser_tipopaquete_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.ser_tipopaquete DROP CONSTRAINT ser_tipopaquete_write_uid_fkey;
       public       postgres    false    216    2936    228            ?           2606    193410 1   ser_tiposervicio ser_tiposervicio_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_create_uid_fkey;
       public       postgres    false    230    2936    216            ?           2606    193415 0   ser_tiposervicio ser_tiposervicio_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_tiposervicio
    ADD CONSTRAINT ser_tiposervicio_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.ser_tiposervicio DROP CONSTRAINT ser_tiposervicio_write_uid_fkey;
       public       postgres    false    216    2936    230            ?           2606    193420 '   ser_turismo ser_turismo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_create_uid_fkey;
       public       postgres    false    2936    216    232            ?           2606    193430 %   ser_turismo ser_turismo_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_lugar_id_fkey;
       public       postgres    false    2930    212    232            ?           2606    193435 '   ser_turismo ser_turismo_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_usuario_id_fkey;
       public       postgres    false    241    232    2967            ?           2606    193440 &   ser_turismo ser_turismo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ser_turismo
    ADD CONSTRAINT ser_turismo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.ser_turismo DROP CONSTRAINT ser_turismo_write_uid_fkey;
       public       postgres    false    232    216    2936            ?           2606    193725 /   tra_preferencia tra_preferencia_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_create_uid_fkey;
       public       postgres    false    216    234    2936            ?           2606    193730 W   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey FOREIGN KEY (tra_preferencia_id) REFERENCES public.tra_preferencia(id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_rel_tra_preferencia_id_fkey;
       public       postgres    false    234    2956    236            ?           2606    193735 S   tra_preferencia_tra_usuario_rel tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel
    ADD CONSTRAINT tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey FOREIGN KEY (tra_usuario_id) REFERENCES public.tra_usuario(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.tra_preferencia_tra_usuario_rel DROP CONSTRAINT tra_preferencia_tra_usuario_rel_tra_usuario_id_fkey;
       public       postgres    false    2967    236    241            ?           2606    193740 .   tra_preferencia tra_preferencia_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_preferencia
    ADD CONSTRAINT tra_preferencia_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.tra_preferencia DROP CONSTRAINT tra_preferencia_write_uid_fkey;
       public       postgres    false    216    234    2936            ?           2606    193745 /   tra_tipousuario tra_tipousuario_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_create_uid_fkey;
       public       postgres    false    237    216    2936            ?           2606    193750 .   tra_tipousuario tra_tipousuario_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipousuario
    ADD CONSTRAINT tra_tipousuario_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.tra_tipousuario DROP CONSTRAINT tra_tipousuario_write_uid_fkey;
       public       postgres    false    2936    216    237            ?           2606    193755 1   tra_tipovehiculo tra_tipovehiculo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_create_uid_fkey;
       public       postgres    false    239    216    2936            ?           2606    193760 0   tra_tipovehiculo tra_tipovehiculo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_tipovehiculo
    ADD CONSTRAINT tra_tipovehiculo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.tra_tipovehiculo DROP CONSTRAINT tra_tipovehiculo_write_uid_fkey;
       public       postgres    false    2936    216    239            ?           2606    193765 '   tra_usuario tra_usuario_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_create_uid_fkey;
       public       postgres    false    216    2936    241            ?           2606    193775 %   tra_usuario tra_usuario_lugar_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_lugar_id_fkey FOREIGN KEY (lugar_id) REFERENCES public.lug_lugar(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_lugar_id_fkey;
       public       postgres    false    2930    241    212            ?           2606    193780 %   tra_usuario tra_usuario_padre_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_padre_id_fkey FOREIGN KEY (padre_id) REFERENCES public.tra_usuario(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_padre_id_fkey;
       public       postgres    false    241    2967    241            ?           2606    193785 $   tra_usuario tra_usuario_tipo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_tipo_id_fkey FOREIGN KEY (tipo_id) REFERENCES public.tra_tipousuario(id) ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_tipo_id_fkey;
       public       postgres    false    2962    241    237            ?           2606    193790 &   tra_usuario tra_usuario_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_usuario
    ADD CONSTRAINT tra_usuario_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.tra_usuario DROP CONSTRAINT tra_usuario_write_uid_fkey;
       public       postgres    false    216    241    2936            ?           2606    193795 )   tra_vehiculo tra_vehiculo_create_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_create_uid_fkey;
       public       postgres    false    243    2936    216            ?           2606    193800 /   tra_vehiculo tra_vehiculo_tipo_vehiculo_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_tipo_vehiculo_id_fkey FOREIGN KEY (tipo_vehiculo_id) REFERENCES public.tra_tipovehiculo(id) ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_tipo_vehiculo_id_fkey;
       public       postgres    false    239    243    2964            ?           2606    193805 )   tra_vehiculo tra_vehiculo_usuario_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.tra_usuario(id) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_usuario_id_fkey;
       public       postgres    false    243    2967    241            ?           2606    193810 (   tra_vehiculo tra_vehiculo_write_uid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tra_vehiculo
    ADD CONSTRAINT tra_vehiculo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.tra_vehiculo DROP CONSTRAINT tra_vehiculo_write_uid_fkey;
       public       postgres    false    243    2936    216           