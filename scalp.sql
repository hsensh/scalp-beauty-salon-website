PGDMP
  	    "                    w           scalp    11.2    11.2 ╪   =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            @           1262    17963    scalp    DATABASE     ò   CREATE DATABASE scalp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE scalp;
             postgres    false            ╟            1259    17977    about_about    TABLE     x   CREATE TABLE public.about_about (
    id integer NOT NULL,
    info text NOT NULL,
    operating_hours text NOT NULL
);
    DROP TABLE public.about_about;
       public         postgres    false            ╞            1259    17975    about_about_id_seq    SEQUENCE     è   CREATE SEQUENCE public.about_about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.about_about_id_seq;
       public       postgres    false    199            A           0    0    about_about_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.about_about_id_seq OWNED BY public.about_about.id;
            public       postgres    false    198            ╤            1259    18029    about_aboutpicture    TABLE     o   CREATE TABLE public.about_aboutpicture (
    id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 &   DROP TABLE public.about_aboutpicture;
       public         postgres    false            ╨            1259    18027    about_aboutpicture_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.about_aboutpicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_aboutpicture_id_seq;
       public       postgres    false    209            B           0    0    about_aboutpicture_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.about_aboutpicture_id_seq OWNED BY public.about_aboutpicture.id;
            public       postgres    false    208            ╔            1259    17988    about_award    TABLE     ░   CREATE TABLE public.about_award (
    id integer NOT NULL,
    title character varying(45) NOT NULL,
    description text NOT NULL,
    logo character varying(100) NOT NULL
);
    DROP TABLE public.about_award;
       public         postgres    false            ╚            1259    17986    about_award_id_seq    SEQUENCE     è   CREATE SEQUENCE public.about_award_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.about_award_id_seq;
       public       postgres    false    201            C           0    0    about_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.about_award_id_seq OWNED BY public.about_award.id;
            public       postgres    false    200            ╦            1259    17996    about_contactinformation    TABLE     ô   CREATE TABLE public.about_contactinformation (
    id integer NOT NULL,
    contact_type character varying(20) NOT NULL,
    info text NOT NULL
);
 ,   DROP TABLE public.about_contactinformation;
       public         postgres    false            ╩            1259    17994    about_contactinformation_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.about_contactinformation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.about_contactinformation_id_seq;
       public       postgres    false    203            D           0    0    about_contactinformation_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.about_contactinformation_id_seq OWNED BY public.about_contactinformation.id;
            public       postgres    false    202            ═            1259    18004    about_partnership    TABLE     «   CREATE TABLE public.about_partnership (
    id integer NOT NULL,
    company_name character varying(45) NOT NULL,
    about text,
    logo character varying(100) NOT NULL
);
 %   DROP TABLE public.about_partnership;
       public         postgres    false            ╠            1259    18002    about_partnership_id_seq    SEQUENCE     É   CREATE SEQUENCE public.about_partnership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.about_partnership_id_seq;
       public       postgres    false    205            E           0    0    about_partnership_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.about_partnership_id_seq OWNED BY public.about_partnership.id;
            public       postgres    false    204            ╧            1259    18012    about_salonpicture    TABLE     ö   CREATE TABLE public.about_salonpicture (
    id integer NOT NULL,
    caption character varying(45),
    picture character varying(100) NOT NULL
);
 &   DROP TABLE public.about_salonpicture;
       public         postgres    false            ╬            1259    18010    about_salonpicture_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.about_salonpicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_salonpicture_id_seq;
       public       postgres    false    207            F           0    0    about_salonpicture_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.about_salonpicture_id_seq OWNED BY public.about_salonpicture.id;
            public       postgres    false    206            φ            1259    18312    appointment_appointment    TABLE     ó  CREATE TABLE public.appointment_appointment (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    notes text NOT NULL,
    customer_id integer NOT NULL,
    service_id integer NOT NULL,
    staff_id integer NOT NULL,
    canceled boolean NOT NULL,
    requested_cancellation boolean NOT NULL,
    requesting_user_type character varying(10),
    rejected_requested_cancellation boolean NOT NULL
);
 +   DROP TABLE public.appointment_appointment;
       public         postgres    false            ∞            1259    18310    appointment_appointment_id_seq    SEQUENCE     û   CREATE SEQUENCE public.appointment_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointment_appointment_id_seq;
       public       postgres    false    237            G           0    0    appointment_appointment_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointment_appointment_id_seq OWNED BY public.appointment_appointment.id;
            public       postgres    false    236            ∩            1259    18357    appointment_appointmenttime    TABLE     ₧   CREATE TABLE public.appointment_appointmenttime (
    id integer NOT NULL,
    length integer NOT NULL,
    last_minute_cancellation_time integer NOT NULL
);
 /   DROP TABLE public.appointment_appointmenttime;
       public         postgres    false            ε            1259    18355 "   appointment_appointmenttime_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.appointment_appointmenttime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.appointment_appointmenttime_id_seq;
       public       postgres    false    239            H           0    0 "   appointment_appointmenttime_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.appointment_appointmenttime_id_seq OWNED BY public.appointment_appointmenttime.id;
            public       postgres    false    238            ╫            1259    18055 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            ╓            1259    18053    auth_group_id_seq    SEQUENCE     ë   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    215            I           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    214            ┘            1259    18065    auth_group_permissions    TABLE     ï   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            ╪            1259    18063    auth_group_permissions_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    217            J           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    216            ╒            1259    18047    auth_permission    TABLE     ┐   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            ╘            1259    18045    auth_permission_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    213            K           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    212            █            1259    18073 	   auth_user    TABLE     ▐  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            ▌            1259    18083    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            ▄            1259    18081    auth_user_groups_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    221            L           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    220            ┌            1259    18071    auth_user_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    219            M           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    218            ▀            1259    18091    auth_user_user_permissions    TABLE     Ä   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            ▐            1259    18089 !   auth_user_user_permissions_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    223            N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    222            ±            1259    18371    blog_article    TABLE     ä   CREATE TABLE public.blog_article (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    content text NOT NULL
);
     DROP TABLE public.blog_article;
       public         postgres    false            ≡            1259    18369    blog_article_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.blog_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_article_id_seq;
       public       postgres    false    241            O           0    0    blog_article_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_article_id_seq OWNED BY public.blog_article.id;
            public       postgres    false    240            ≤            1259    18382    blog_articleimage    TABLE     │   CREATE TABLE public.blog_articleimage (
    id integer NOT NULL,
    caption character varying(500) NOT NULL,
    image character varying(100) NOT NULL,
    article_id integer
);
 %   DROP TABLE public.blog_articleimage;
       public         postgres    false            ≥            1259    18380    blog_articleimage_id_seq    SEQUENCE     É   CREATE SEQUENCE public.blog_articleimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_articleimage_id_seq;
       public       postgres    false    243            P           0    0    blog_articleimage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_articleimage_id_seq OWNED BY public.blog_articleimage.id;
            public       postgres    false    242            ≈            1259    18446 	   cart_cart    TABLE     {   CREATE TABLE public.cart_cart (
    id integer NOT NULL,
    total_price integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.cart_cart;
       public         postgres    false            ÷            1259    18444    cart_cart_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       postgres    false    247            Q           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;
            public       postgres    false    246            ∙            1259    18456    cart_cartproduct    TABLE     ù   CREATE TABLE public.cart_cartproduct (
    id integer NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer
);
 $   DROP TABLE public.cart_cartproduct;
       public         postgres    false            °            1259    18454    cart_cart_product_id_seq    SEQUENCE     É   CREATE SEQUENCE public.cart_cart_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cart_cart_product_id_seq;
       public       postgres    false    249            R           0    0    cart_cart_product_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.cart_cart_product_id_seq OWNED BY public.cart_cartproduct.id;
            public       postgres    false    248            √            1259    18483    cart_cartproductinfo    TABLE     ñ   CREATE TABLE public.cart_cartproductinfo (
    id integer NOT NULL,
    quantity integer NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL
);
 (   DROP TABLE public.cart_cartproductinfo;
       public         postgres    false            ·            1259    18481    cart_cartproductinfo_id_seq    SEQUENCE     ô   CREATE SEQUENCE public.cart_cartproductinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cart_cartproductinfo_id_seq;
       public       postgres    false    251            S           0    0    cart_cartproductinfo_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cart_cartproductinfo_id_seq OWNED BY public.cart_cartproductinfo.id;
            public       postgres    false    250            δ            1259    18267    customer_customerprofile    TABLE     X  CREATE TABLE public.customer_customerprofile (
    id integer NOT NULL,
    gender character varying(10) NOT NULL,
    city character varying(45) NOT NULL,
    country character varying(45) NOT NULL,
    birthdate date,
    phone_number character varying(15) NOT NULL,
    user_id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 ,   DROP TABLE public.customer_customerprofile;
       public         postgres    false            Ω            1259    18265    customer_customerprofile_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.customer_customerprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.customer_customerprofile_id_seq;
       public       postgres    false    235            T           0    0    customer_customerprofile_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.customer_customerprofile_id_seq OWNED BY public.customer_customerprofile.id;
            public       postgres    false    234            ²            1259    18504    customer_loggedincustomers    TABLE     i   CREATE TABLE public.customer_loggedincustomers (
    id integer NOT NULL,
    number integer NOT NULL
);
 .   DROP TABLE public.customer_loggedincustomers;
       public         postgres    false            ⁿ            1259    18502 !   customer_loggedincustomers_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.customer_loggedincustomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.customer_loggedincustomers_id_seq;
       public       postgres    false    253            U           0    0 !   customer_loggedincustomers_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.customer_loggedincustomers_id_seq OWNED BY public.customer_loggedincustomers.id;
            public       postgres    false    252            ß            1259    18151    django_admin_log    TABLE     ê  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            α            1259    18149    django_admin_log_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    225            V           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    224            ╙            1259    18037    django_content_type    TABLE     ƒ   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            ╥            1259    18035    django_content_type_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    211            W           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    210            ┼            1259    17966    django_migrations    TABLE     ┼   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            ─            1259    17964    django_migrations_id_seq    SEQUENCE     É   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            X           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196                       1259    18847    django_session    TABLE     ¬   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false                         1259    18512    easy_thumbnails_source    TABLE     ╙   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false            ■            1259    18510    easy_thumbnails_source_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    255            Y           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    254                       1259    18520    easy_thumbnails_thumbnail    TABLE     ÷   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false                        1259    18518     easy_thumbnails_thumbnail_id_seq    SEQUENCE     ÿ   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    257            Z           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    256                       1259    18546 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false                       1259    18544 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     ó   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    259            [           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    258                       1259    18563    main_homepicture    TABLE     ⌠   CREATE TABLE public.main_homepicture (
    id integer NOT NULL,
    photo character varying(100) NOT NULL,
    caption character varying(50) NOT NULL,
    url_text character varying(50) NOT NULL,
    url_link character varying(500) NOT NULL
);
 $   DROP TABLE public.main_homepicture;
       public         postgres    false                       1259    18561    main_homepicture_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.main_homepicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_homepicture_id_seq;
       public       postgres    false    261            \           0    0    main_homepicture_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_homepicture_id_seq OWNED BY public.main_homepicture.id;
            public       postgres    false    260                       1259    18574    main_maplocation    TABLE     u   CREATE TABLE public.main_maplocation (
    id integer NOT NULL,
    location_text character varying(100) NOT NULL
);
 $   DROP TABLE public.main_maplocation;
       public         postgres    false                       1259    18572    main_maplocation_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.main_maplocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_maplocation_id_seq;
       public       postgres    false    263            ]           0    0    main_maplocation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_maplocation_id_seq OWNED BY public.main_maplocation.id;
            public       postgres    false    262            
           1259    18648     newsletter_customerrecipientlist    TABLE     R   CREATE TABLE public.newsletter_customerrecipientlist (
    id integer NOT NULL
);
 4   DROP TABLE public.newsletter_customerrecipientlist;
       public         postgres    false                       1259    18646 '   newsletter_customerrecipientlist_id_seq    SEQUENCE     ƒ   CREATE SEQUENCE public.newsletter_customerrecipientlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.newsletter_customerrecipientlist_id_seq;
       public       postgres    false    269            ^           0    0 '   newsletter_customerrecipientlist_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.newsletter_customerrecipientlist_id_seq OWNED BY public.newsletter_customerrecipientlist.id;
            public       postgres    false    268                       1259    18656 %   newsletter_customerrecipientlist_user    TABLE     »   CREATE TABLE public.newsletter_customerrecipientlist_user (
    id integer NOT NULL,
    customerrecipientlist_id integer NOT NULL,
    customerprofile_id integer NOT NULL
);
 9   DROP TABLE public.newsletter_customerrecipientlist_user;
       public         postgres    false                       1259    18654 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE     «   CREATE SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq;
       public       postgres    false    271            _           0    0 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE OWNED BY     ç   ALTER SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq OWNED BY public.newsletter_customerrecipientlist_user.id;
            public       postgres    false    270            	           1259    18582    newsletter_newsletter    TABLE     τ   CREATE TABLE public.newsletter_newsletter (
    id integer NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    email_from character varying(200) NOT NULL,
    recipient_list_id integer NOT NULL
);
 )   DROP TABLE public.newsletter_newsletter;
       public         postgres    false                       1259    18580    newsletter_newsletter_id_seq    SEQUENCE     ö   CREATE SEQUENCE public.newsletter_newsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.newsletter_newsletter_id_seq;
       public       postgres    false    265            `           0    0    newsletter_newsletter_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.newsletter_newsletter_id_seq OWNED BY public.newsletter_newsletter.id;
            public       postgres    false    264                       1259    18601    newsletter_staffnewsletter    TABLE     ∞   CREATE TABLE public.newsletter_staffnewsletter (
    id integer NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    email_from character varying(200) NOT NULL,
    recipient_list_id integer NOT NULL
);
 .   DROP TABLE public.newsletter_staffnewsletter;
       public         postgres    false            
           1259    18599 !   newsletter_staffnewsletter_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.newsletter_staffnewsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.newsletter_staffnewsletter_id_seq;
       public       postgres    false    267            a           0    0 !   newsletter_staffnewsletter_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.newsletter_staffnewsletter_id_seq OWNED BY public.newsletter_staffnewsletter.id;
            public       postgres    false    266                       1259    18664    newsletter_staffrecipientlist    TABLE     O   CREATE TABLE public.newsletter_staffrecipientlist (
    id integer NOT NULL
);
 1   DROP TABLE public.newsletter_staffrecipientlist;
       public         postgres    false                       1259    18662 $   newsletter_staffrecipientlist_id_seq    SEQUENCE     £   CREATE SEQUENCE public.newsletter_staffrecipientlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.newsletter_staffrecipientlist_id_seq;
       public       postgres    false    273            b           0    0 $   newsletter_staffrecipientlist_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.newsletter_staffrecipientlist_id_seq OWNED BY public.newsletter_staffrecipientlist.id;
            public       postgres    false    272                       1259    18672 "   newsletter_staffrecipientlist_user    TABLE     ª   CREATE TABLE public.newsletter_staffrecipientlist_user (
    id integer NOT NULL,
    staffrecipientlist_id integer NOT NULL,
    staffprofile_id integer NOT NULL
);
 6   DROP TABLE public.newsletter_staffrecipientlist_user;
       public         postgres    false                       1259    18670 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE     ½   CREATE SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq;
       public       postgres    false    275            c           0    0 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE OWNED BY     ü   ALTER SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq OWNED BY public.newsletter_staffrecipientlist_user.id;
            public       postgres    false    274            ⌡            1259    18427    product_product    TABLE     ^  CREATE TABLE public.product_product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    gender character varying(10) NOT NULL,
    price integer NOT NULL,
    discounted_price integer,
    photo character varying(100) NOT NULL,
    service_type_id integer NOT NULL,
    in_stock boolean NOT NULL
);
 #   DROP TABLE public.product_product;
       public         postgres    false            ⌠            1259    18425    product_product_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public       postgres    false    245            d           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;
            public       postgres    false    244                       1259    18792    receipt_receipt    TABLE     ü   CREATE TABLE public.receipt_receipt (
    id integer NOT NULL,
    total_price integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.receipt_receipt;
       public         postgres    false                       1259    18790    receipt_receipt_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.receipt_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.receipt_receipt_id_seq;
       public       postgres    false    277            e           0    0    receipt_receipt_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.receipt_receipt_id_seq OWNED BY public.receipt_receipt.id;
            public       postgres    false    276                       1259    18800    receipt_receiptproduct    TABLE     ⌐   CREATE TABLE public.receipt_receiptproduct (
    id integer NOT NULL,
    quantity integer NOT NULL,
    product_id integer NOT NULL,
    receipt_id integer NOT NULL
);
 *   DROP TABLE public.receipt_receiptproduct;
       public         postgres    false                       1259    18798    receipt_receiptproduct_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.receipt_receiptproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.receipt_receiptproduct_id_seq;
       public       postgres    false    279            f           0    0    receipt_receiptproduct_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.receipt_receiptproduct_id_seq OWNED BY public.receipt_receiptproduct.id;
            public       postgres    false    278                       1259    18831 
   review_review    TABLE     ╢   CREATE TABLE public.review_review (
    id integer NOT NULL,
    summary character varying(200) NOT NULL,
    info text,
    rating integer NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.review_review;
       public         postgres    false                       1259    18829    review_review_id_seq    SEQUENCE     î   CREATE SEQUENCE public.review_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.review_review_id_seq;
       public       postgres    false    281            g           0    0    review_review_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.review_review_id_seq OWNED BY public.review_review.id;
            public       postgres    false    280            σ            1259    18186    service_service    TABLE     3  CREATE TABLE public.service_service (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    gender character varying(10) NOT NULL,
    price integer NOT NULL,
    discounted_price integer,
    service_type_id integer NOT NULL,
    featured boolean NOT NULL
);
 #   DROP TABLE public.service_service;
       public         postgres    false            Σ            1259    18184    service_service_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public       postgres    false    229            h           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service_service.id;
            public       postgres    false    228            π            1259    18175    service_servicetype    TABLE     ╖   CREATE TABLE public.service_servicetype (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    icon character varying(100) NOT NULL
);
 '   DROP TABLE public.service_servicetype;
       public         postgres    false            Γ            1259    18173    service_servicetype_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.service_servicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.service_servicetype_id_seq;
       public       postgres    false    227            i           0    0    service_servicetype_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.service_servicetype_id_seq OWNED BY public.service_servicetype.id;
            public       postgres    false    226                       1259    18859    site_admin_adminprofile    TABLE     g   CREATE TABLE public.site_admin_adminprofile (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public.site_admin_adminprofile;
       public         postgres    false                       1259    18857    site_admin_adminprofile_id_seq    SEQUENCE     û   CREATE SEQUENCE public.site_admin_adminprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.site_admin_adminprofile_id_seq;
       public       postgres    false    284            j           0    0    site_admin_adminprofile_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.site_admin_adminprofile_id_seq OWNED BY public.site_admin_adminprofile.id;
            public       postgres    false    283                       1259    18879    social_auth_association    TABLE     <  CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);
 +   DROP TABLE public.social_auth_association;
       public         postgres    false                       1259    18877    social_auth_association_id_seq    SEQUENCE     û   CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.social_auth_association_id_seq;
       public       postgres    false    286            k           0    0    social_auth_association_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;
            public       postgres    false    285                        1259    18890    social_auth_code    TABLE     Φ   CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 $   DROP TABLE public.social_auth_code;
       public         postgres    false                       1259    18888    social_auth_code_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.social_auth_code_id_seq;
       public       postgres    false    288            l           0    0    social_auth_code_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;
            public       postgres    false    287            "           1259    18898    social_auth_nonce    TABLE     ╛   CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);
 %   DROP TABLE public.social_auth_nonce;
       public         postgres    false            !           1259    18896    social_auth_nonce_id_seq    SEQUENCE     É   CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.social_auth_nonce_id_seq;
       public       postgres    false    290            m           0    0    social_auth_nonce_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;
            public       postgres    false    289            &           1259    18940    social_auth_partial    TABLE     T  CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);
 '   DROP TABLE public.social_auth_partial;
       public         postgres    false            %           1259    18938    social_auth_partial_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.social_auth_partial_id_seq;
       public       postgres    false    294            n           0    0    social_auth_partial_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;
            public       postgres    false    293            $           1259    18906    social_auth_usersocialauth    TABLE     ▐   CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 .   DROP TABLE public.social_auth_usersocialauth;
       public         postgres    false            #           1259    18904 !   social_auth_usersocialauth_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.social_auth_usersocialauth_id_seq;
       public       postgres    false    292            o           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;
            public       postgres    false    291            τ            1259    18204    staff_staffprofile    TABLE     2  CREATE TABLE public.staff_staffprofile (
    id integer NOT NULL,
    about text NOT NULL,
    birthdate date,
    photo character varying(100) NOT NULL,
    user_id integer NOT NULL,
    gender character varying(10) NOT NULL,
    phone_number character varying(20) NOT NULL,
    average_rating integer
);
 &   DROP TABLE public.staff_staffprofile;
       public         postgres    false            µ            1259    18202    staff_staffprofile_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.staff_staffprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_staffprofile_id_seq;
       public       postgres    false    231            p           0    0    staff_staffprofile_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staffprofile_id_seq OWNED BY public.staff_staffprofile.id;
            public       postgres    false    230            Θ            1259    18217    staff_staffprofile_service_type    TABLE     £   CREATE TABLE public.staff_staffprofile_service_type (
    id integer NOT NULL,
    staffprofile_id integer NOT NULL,
    servicetype_id integer NOT NULL
);
 3   DROP TABLE public.staff_staffprofile_service_type;
       public         postgres    false            Φ            1259    18215 &   staff_staffprofile_service_type_id_seq    SEQUENCE     ₧   CREATE SEQUENCE public.staff_staffprofile_service_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.staff_staffprofile_service_type_id_seq;
       public       postgres    false    233            q           0    0 &   staff_staffprofile_service_type_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.staff_staffprofile_service_type_id_seq OWNED BY public.staff_staffprofile_service_type.id;
            public       postgres    false    232            (           1259    18958    testimonial_testimonial    TABLE     ▀   CREATE TABLE public.testimonial_testimonial (
    id integer NOT NULL,
    summary character varying(200) NOT NULL,
    info text,
    rating integer NOT NULL,
    staff_id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public.testimonial_testimonial;
       public         postgres    false            '           1259    18956    testimonial_testimonial_id_seq    SEQUENCE     û   CREATE SEQUENCE public.testimonial_testimonial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.testimonial_testimonial_id_seq;
       public       postgres    false    296            r           0    0    testimonial_testimonial_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.testimonial_testimonial_id_seq OWNED BY public.testimonial_testimonial.id;
            public       postgres    false    295            9	           2604    17980    about_about id    DEFAULT     p   ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_about_id_seq'::regclass);
 =   ALTER TABLE public.about_about ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            >	           2604    18032    about_aboutpicture id    DEFAULT     ~   ALTER TABLE ONLY public.about_aboutpicture ALTER COLUMN id SET DEFAULT nextval('public.about_aboutpicture_id_seq'::regclass);
 D   ALTER TABLE public.about_aboutpicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            :	           2604    17991    about_award id    DEFAULT     p   ALTER TABLE ONLY public.about_award ALTER COLUMN id SET DEFAULT nextval('public.about_award_id_seq'::regclass);
 =   ALTER TABLE public.about_award ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            ;	           2604    17999    about_contactinformation id    DEFAULT     è   ALTER TABLE ONLY public.about_contactinformation ALTER COLUMN id SET DEFAULT nextval('public.about_contactinformation_id_seq'::regclass);
 J   ALTER TABLE public.about_contactinformation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            <	           2604    18007    about_partnership id    DEFAULT     |   ALTER TABLE ONLY public.about_partnership ALTER COLUMN id SET DEFAULT nextval('public.about_partnership_id_seq'::regclass);
 C   ALTER TABLE public.about_partnership ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            =	           2604    18015    about_salonpicture id    DEFAULT     ~   ALTER TABLE ONLY public.about_salonpicture ALTER COLUMN id SET DEFAULT nextval('public.about_salonpicture_id_seq'::regclass);
 D   ALTER TABLE public.about_salonpicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            M	           2604    18315    appointment_appointment id    DEFAULT     ê   ALTER TABLE ONLY public.appointment_appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_appointment_id_seq'::regclass);
 I   ALTER TABLE public.appointment_appointment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            N	           2604    18360    appointment_appointmenttime id    DEFAULT     É   ALTER TABLE ONLY public.appointment_appointmenttime ALTER COLUMN id SET DEFAULT nextval('public.appointment_appointmenttime_id_seq'::regclass);
 M   ALTER TABLE public.appointment_appointmenttime ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            A	           2604    18058 
   auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            B	           2604    18068    auth_group_permissions id    DEFAULT     å   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            @	           2604    18050    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            C	           2604    18076    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            D	           2604    18086    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            E	           2604    18094    auth_user_user_permissions id    DEFAULT     Ä   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            O	           2604    18374    blog_article id    DEFAULT     r   ALTER TABLE ONLY public.blog_article ALTER COLUMN id SET DEFAULT nextval('public.blog_article_id_seq'::regclass);
 >   ALTER TABLE public.blog_article ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240    241            P	           2604    18385    blog_articleimage id    DEFAULT     |   ALTER TABLE ONLY public.blog_articleimage ALTER COLUMN id SET DEFAULT nextval('public.blog_articleimage_id_seq'::regclass);
 C   ALTER TABLE public.blog_articleimage ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            R	           2604    18449    cart_cart id    DEFAULT     l   ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart_cart ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            S	           2604    18459    cart_cartproduct id    DEFAULT     {   ALTER TABLE ONLY public.cart_cartproduct ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_product_id_seq'::regclass);
 B   ALTER TABLE public.cart_cartproduct ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            T	           2604    18486    cart_cartproductinfo id    DEFAULT     é   ALTER TABLE ONLY public.cart_cartproductinfo ALTER COLUMN id SET DEFAULT nextval('public.cart_cartproductinfo_id_seq'::regclass);
 F   ALTER TABLE public.cart_cartproductinfo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            L	           2604    18270    customer_customerprofile id    DEFAULT     è   ALTER TABLE ONLY public.customer_customerprofile ALTER COLUMN id SET DEFAULT nextval('public.customer_customerprofile_id_seq'::regclass);
 J   ALTER TABLE public.customer_customerprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            U	           2604    18507    customer_loggedincustomers id    DEFAULT     Ä   ALTER TABLE ONLY public.customer_loggedincustomers ALTER COLUMN id SET DEFAULT nextval('public.customer_loggedincustomers_id_seq'::regclass);
 L   ALTER TABLE public.customer_loggedincustomers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            F	           2604    18154    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            ?	           2604    18040    django_content_type id    DEFAULT     Ç   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            8	           2604    17969    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            V	           2604    18515    easy_thumbnails_source id    DEFAULT     å   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            W	           2604    18523    easy_thumbnails_thumbnail id    DEFAULT     î   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            X	           2604    18549 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     á   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    259    259            [	           2604    18566    main_homepicture id    DEFAULT     z   ALTER TABLE ONLY public.main_homepicture ALTER COLUMN id SET DEFAULT nextval('public.main_homepicture_id_seq'::regclass);
 B   ALTER TABLE public.main_homepicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    260    261    261            \	           2604    18577    main_maplocation id    DEFAULT     z   ALTER TABLE ONLY public.main_maplocation ALTER COLUMN id SET DEFAULT nextval('public.main_maplocation_id_seq'::regclass);
 B   ALTER TABLE public.main_maplocation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    262    263    263            _	           2604    18651 #   newsletter_customerrecipientlist id    DEFAULT     Ü   ALTER TABLE ONLY public.newsletter_customerrecipientlist ALTER COLUMN id SET DEFAULT nextval('public.newsletter_customerrecipientlist_id_seq'::regclass);
 R   ALTER TABLE public.newsletter_customerrecipientlist ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    269    269            `	           2604    18659 (   newsletter_customerrecipientlist_user id    DEFAULT     «   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user ALTER COLUMN id SET DEFAULT nextval('public.newsletter_customerrecipientlist_recipient_list_id_seq'::regclass);
 W   ALTER TABLE public.newsletter_customerrecipientlist_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    271    271            ]	           2604    18585    newsletter_newsletter id    DEFAULT     ä   ALTER TABLE ONLY public.newsletter_newsletter ALTER COLUMN id SET DEFAULT nextval('public.newsletter_newsletter_id_seq'::regclass);
 G   ALTER TABLE public.newsletter_newsletter ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    265    265            ^	           2604    18604    newsletter_staffnewsletter id    DEFAULT     Ä   ALTER TABLE ONLY public.newsletter_staffnewsletter ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffnewsletter_id_seq'::regclass);
 L   ALTER TABLE public.newsletter_staffnewsletter ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    266    267            a	           2604    18667     newsletter_staffrecipientlist id    DEFAULT     ö   ALTER TABLE ONLY public.newsletter_staffrecipientlist ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffrecipientlist_id_seq'::regclass);
 O   ALTER TABLE public.newsletter_staffrecipientlist ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272    273            b	           2604    18675 %   newsletter_staffrecipientlist_user id    DEFAULT     ¿   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffrecipientlist_recipient_list_id_seq'::regclass);
 T   ALTER TABLE public.newsletter_staffrecipientlist_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    274    275            Q	           2604    18430    product_product id    DEFAULT     x   ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            c	           2604    18795    receipt_receipt id    DEFAULT     x   ALTER TABLE ONLY public.receipt_receipt ALTER COLUMN id SET DEFAULT nextval('public.receipt_receipt_id_seq'::regclass);
 A   ALTER TABLE public.receipt_receipt ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    276    277    277            d	           2604    18803    receipt_receiptproduct id    DEFAULT     å   ALTER TABLE ONLY public.receipt_receiptproduct ALTER COLUMN id SET DEFAULT nextval('public.receipt_receiptproduct_id_seq'::regclass);
 H   ALTER TABLE public.receipt_receiptproduct ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    279    278    279            e	           2604    18834    review_review id    DEFAULT     t   ALTER TABLE ONLY public.review_review ALTER COLUMN id SET DEFAULT nextval('public.review_review_id_seq'::regclass);
 ?   ALTER TABLE public.review_review ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    281    280    281            I	           2604    18189    service_service id    DEFAULT     x   ALTER TABLE ONLY public.service_service ALTER COLUMN id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service_service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            H	           2604    18178    service_servicetype id    DEFAULT     Ç   ALTER TABLE ONLY public.service_servicetype ALTER COLUMN id SET DEFAULT nextval('public.service_servicetype_id_seq'::regclass);
 E   ALTER TABLE public.service_servicetype ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            f	           2604    18862    site_admin_adminprofile id    DEFAULT     ê   ALTER TABLE ONLY public.site_admin_adminprofile ALTER COLUMN id SET DEFAULT nextval('public.site_admin_adminprofile_id_seq'::regclass);
 I   ALTER TABLE public.site_admin_adminprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283    284            g	           2604    18882    social_auth_association id    DEFAULT     ê   ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);
 I   ALTER TABLE public.social_auth_association ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    286    285    286            h	           2604    18893    social_auth_code id    DEFAULT     z   ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);
 B   ALTER TABLE public.social_auth_code ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    287    288            i	           2604    18901    social_auth_nonce id    DEFAULT     |   ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);
 C   ALTER TABLE public.social_auth_nonce ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    289    290    290            k	           2604    18943    social_auth_partial id    DEFAULT     Ç   ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);
 E   ALTER TABLE public.social_auth_partial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    293    294    294            j	           2604    18909    social_auth_usersocialauth id    DEFAULT     Ä   ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);
 L   ALTER TABLE public.social_auth_usersocialauth ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    292    291    292            J	           2604    18207    staff_staffprofile id    DEFAULT     ~   ALTER TABLE ONLY public.staff_staffprofile ALTER COLUMN id SET DEFAULT nextval('public.staff_staffprofile_id_seq'::regclass);
 D   ALTER TABLE public.staff_staffprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            K	           2604    18220 "   staff_staffprofile_service_type id    DEFAULT     ÿ   ALTER TABLE ONLY public.staff_staffprofile_service_type ALTER COLUMN id SET DEFAULT nextval('public.staff_staffprofile_service_type_id_seq'::regclass);
 Q   ALTER TABLE public.staff_staffprofile_service_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            m	           2604    18961    testimonial_testimonial id    DEFAULT     ê   ALTER TABLE ONLY public.testimonial_testimonial ALTER COLUMN id SET DEFAULT nextval('public.testimonial_testimonial_id_seq'::regclass);
 I   ALTER TABLE public.testimonial_testimonial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    295    296    296            ┘
          0    17977    about_about 
   TABLE DATA               @   COPY public.about_about (id, info, operating_hours) FROM stdin;
    public       postgres    false    199            π
          0    18029    about_aboutpicture 
   TABLE DATA               7   COPY public.about_aboutpicture (id, photo) FROM stdin;
    public       postgres    false    209            █
          0    17988    about_award 
   TABLE DATA               C   COPY public.about_award (id, title, description, logo) FROM stdin;
    public       postgres    false    201            ▌
          0    17996    about_contactinformation 
   TABLE DATA               J   COPY public.about_contactinformation (id, contact_type, info) FROM stdin;
    public       postgres    false    203            ▀
          0    18004    about_partnership 
   TABLE DATA               J   COPY public.about_partnership (id, company_name, about, logo) FROM stdin;
    public       postgres    false    205            ß
          0    18012    about_salonpicture 
   TABLE DATA               B   COPY public.about_salonpicture (id, caption, picture) FROM stdin;
    public       postgres    false    207             
          0    18312    appointment_appointment 
   TABLE DATA               ╛   COPY public.appointment_appointment (id, date, notes, customer_id, service_id, staff_id, canceled, requested_cancellation, requesting_user_type, rejected_requested_cancellation) FROM stdin;
    public       postgres    false    237                      0    18357    appointment_appointmenttime 
   TABLE DATA               `   COPY public.appointment_appointmenttime (id, length, last_minute_cancellation_time) FROM stdin;
    public       postgres    false    239            Θ
          0    18055 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    215            δ
          0    18065    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    217            τ
          0    18047    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    213            φ
          0    18073 	   auth_user 
   TABLE DATA               ò   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    219            ∩
          0    18083    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    221            ±
          0    18091    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    223                      0    18371    blog_article 
   TABLE DATA               :   COPY public.blog_article (id, title, content) FROM stdin;
    public       postgres    false    241                      0    18382    blog_articleimage 
   TABLE DATA               K   COPY public.blog_articleimage (id, caption, image, article_id) FROM stdin;
    public       postgres    false    243            	          0    18446 	   cart_cart 
   TABLE DATA               =   COPY public.cart_cart (id, total_price, user_id) FROM stdin;
    public       postgres    false    247                      0    18456    cart_cartproduct 
   TABLE DATA               M   COPY public.cart_cartproduct (id, cart_id, product_id, quantity) FROM stdin;
    public       postgres    false    249            
          0    18483    cart_cartproductinfo 
   TABLE DATA               Q   COPY public.cart_cartproductinfo (id, quantity, cart_id, product_id) FROM stdin;
    public       postgres    false    251            ²
          0    18267    customer_customerprofile 
   TABLE DATA               v   COPY public.customer_customerprofile (id, gender, city, country, birthdate, phone_number, user_id, photo) FROM stdin;
    public       postgres    false    235                      0    18504    customer_loggedincustomers 
   TABLE DATA               @   COPY public.customer_loggedincustomers (id, number) FROM stdin;
    public       postgres    false    253            ≤
          0    18151    django_admin_log 
   TABLE DATA               è   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    225            σ
          0    18037    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    211            ╫
          0    17966    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197            ,          0    18847    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    282                      0    18512    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    255                      0    18520    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    257                      0    18546 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    259                      0    18563    main_homepicture 
   TABLE DATA               R   COPY public.main_homepicture (id, photo, caption, url_text, url_link) FROM stdin;
    public       postgres    false    261                      0    18574    main_maplocation 
   TABLE DATA               =   COPY public.main_maplocation (id, location_text) FROM stdin;
    public       postgres    false    263                      0    18648     newsletter_customerrecipientlist 
   TABLE DATA               >   COPY public.newsletter_customerrecipientlist (id) FROM stdin;
    public       postgres    false    269            !          0    18656 %   newsletter_customerrecipientlist_user 
   TABLE DATA               q   COPY public.newsletter_customerrecipientlist_user (id, customerrecipientlist_id, customerprofile_id) FROM stdin;
    public       postgres    false    271                      0    18582    newsletter_newsletter 
   TABLE DATA               d   COPY public.newsletter_newsletter (id, subject, message, email_from, recipient_list_id) FROM stdin;
    public       postgres    false    265                      0    18601    newsletter_staffnewsletter 
   TABLE DATA               i   COPY public.newsletter_staffnewsletter (id, subject, message, email_from, recipient_list_id) FROM stdin;
    public       postgres    false    267            #          0    18664    newsletter_staffrecipientlist 
   TABLE DATA               ;   COPY public.newsletter_staffrecipientlist (id) FROM stdin;
    public       postgres    false    273            %          0    18672 "   newsletter_staffrecipientlist_user 
   TABLE DATA               h   COPY public.newsletter_staffrecipientlist_user (id, staffrecipientlist_id, staffprofile_id) FROM stdin;
    public       postgres    false    275                      0    18427    product_product 
   TABLE DATA               â   COPY public.product_product (id, name, description, gender, price, discounted_price, photo, service_type_id, in_stock) FROM stdin;
    public       postgres    false    245            '          0    18792    receipt_receipt 
   TABLE DATA               C   COPY public.receipt_receipt (id, total_price, user_id) FROM stdin;
    public       postgres    false    277            )          0    18800    receipt_receiptproduct 
   TABLE DATA               V   COPY public.receipt_receiptproduct (id, quantity, product_id, receipt_id) FROM stdin;
    public       postgres    false    279            +          0    18831 
   review_review 
   TABLE DATA               K   COPY public.review_review (id, summary, info, rating, user_id) FROM stdin;
    public       postgres    false    281            ≈
          0    18186    service_service 
   TABLE DATA               |   COPY public.service_service (id, name, description, gender, price, discounted_price, service_type_id, featured) FROM stdin;
    public       postgres    false    229            ⌡
          0    18175    service_servicetype 
   TABLE DATA               J   COPY public.service_servicetype (id, name, description, icon) FROM stdin;
    public       postgres    false    227            .          0    18859    site_admin_adminprofile 
   TABLE DATA               >   COPY public.site_admin_adminprofile (id, user_id) FROM stdin;
    public       postgres    false    284            0          0    18879    social_auth_association 
   TABLE DATA               o   COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
    public       postgres    false    286            2          0    18890    social_auth_code 
   TABLE DATA               R   COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
    public       postgres    false    288            4          0    18898    social_auth_nonce 
   TABLE DATA               N   COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
    public       postgres    false    290            8          0    18940    social_auth_partial 
   TABLE DATA               _   COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
    public       postgres    false    294            6          0    18906    social_auth_usersocialauth 
   TABLE DATA               \   COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
    public       postgres    false    292            ∙
          0    18204    staff_staffprofile 
   TABLE DATA               x   COPY public.staff_staffprofile (id, about, birthdate, photo, user_id, gender, phone_number, average_rating) FROM stdin;
    public       postgres    false    231            √
          0    18217    staff_staffprofile_service_type 
   TABLE DATA               ^   COPY public.staff_staffprofile_service_type (id, staffprofile_id, servicetype_id) FROM stdin;
    public       postgres    false    233            :          0    18958    testimonial_testimonial 
   TABLE DATA               _   COPY public.testimonial_testimonial (id, summary, info, rating, staff_id, user_id) FROM stdin;
    public       postgres    false    296            s           0    0    about_about_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.about_about_id_seq', 1, true);
            public       postgres    false    198            t           0    0    about_aboutpicture_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.about_aboutpicture_id_seq', 1, true);
            public       postgres    false    208            u           0    0    about_award_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.about_award_id_seq', 6, true);
            public       postgres    false    200            v           0    0    about_contactinformation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.about_contactinformation_id_seq', 4, true);
            public       postgres    false    202            w           0    0    about_partnership_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.about_partnership_id_seq', 17, true);
            public       postgres    false    204            x           0    0    about_salonpicture_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.about_salonpicture_id_seq', 13, true);
            public       postgres    false    206            y           0    0    appointment_appointment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.appointment_appointment_id_seq', 44, true);
            public       postgres    false    236            z           0    0 "   appointment_appointmenttime_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.appointment_appointmenttime_id_seq', 1, true);
            public       postgres    false    238            {           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    214            |           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    216            }           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 348, true);
            public       postgres    false    212            ~           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    220                       0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 85, true);
            public       postgres    false    218            Ç           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    222            ü           0    0    blog_article_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_article_id_seq', 13, true);
            public       postgres    false    240            é           0    0    blog_articleimage_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.blog_articleimage_id_seq', 9, true);
            public       postgres    false    242            â           0    0    cart_cart_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cart_id_seq', 6, true);
            public       postgres    false    246            ä           0    0    cart_cart_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cart_cart_product_id_seq', 24, true);
            public       postgres    false    248            à           0    0    cart_cartproductinfo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cart_cartproductinfo_id_seq', 1, false);
            public       postgres    false    250            å           0    0    customer_customerprofile_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.customer_customerprofile_id_seq', 38, true);
            public       postgres    false    234            ç           0    0 !   customer_loggedincustomers_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_loggedincustomers_id_seq', 1, false);
            public       postgres    false    252            ê           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    224            ë           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 87, true);
            public       postgres    false    210            è           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 97, true);
            public       postgres    false    196            ï           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 87, true);
            public       postgres    false    254            î           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 115, true);
            public       postgres    false    256            ì           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    258            Ä           0    0    main_homepicture_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.main_homepicture_id_seq', 5, true);
            public       postgres    false    260            Å           0    0    main_maplocation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.main_maplocation_id_seq', 1, true);
            public       postgres    false    262            É           0    0 '   newsletter_customerrecipientlist_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.newsletter_customerrecipientlist_id_seq', 1, true);
            public       postgres    false    268            æ           0    0 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.newsletter_customerrecipientlist_recipient_list_id_seq', 6, true);
            public       postgres    false    270            Æ           0    0    newsletter_newsletter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.newsletter_newsletter_id_seq', 3, true);
            public       postgres    false    264            ô           0    0 !   newsletter_staffnewsletter_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.newsletter_staffnewsletter_id_seq', 4, true);
            public       postgres    false    266            ö           0    0 $   newsletter_staffrecipientlist_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.newsletter_staffrecipientlist_id_seq', 1, true);
            public       postgres    false    272            ò           0    0 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.newsletter_staffrecipientlist_recipient_list_id_seq', 18, true);
            public       postgres    false    274            û           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 3, true);
            public       postgres    false    244            ù           0    0    receipt_receipt_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receipt_receipt_id_seq', 23, true);
            public       postgres    false    276            ÿ           0    0    receipt_receiptproduct_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.receipt_receiptproduct_id_seq', 18, true);
            public       postgres    false    278            Ö           0    0    review_review_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.review_review_id_seq', 1, true);
            public       postgres    false    280            Ü           0    0    service_service_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_service_id_seq', 7, true);
            public       postgres    false    228            ¢           0    0    service_servicetype_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.service_servicetype_id_seq', 7, true);
            public       postgres    false    226            £           0    0    site_admin_adminprofile_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.site_admin_adminprofile_id_seq', 1, true);
            public       postgres    false    283            ¥           0    0    social_auth_association_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);
            public       postgres    false    285            ₧           0    0    social_auth_code_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);
            public       postgres    false    287            ƒ           0    0    social_auth_nonce_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);
            public       postgres    false    289            á           0    0    social_auth_partial_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);
            public       postgres    false    293            í           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);
            public       postgres    false    291            ó           0    0    staff_staffprofile_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_staffprofile_id_seq', 14, true);
            public       postgres    false    230            ú           0    0 &   staff_staffprofile_service_type_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.staff_staffprofile_service_type_id_seq', 130, true);
            public       postgres    false    232            ñ           0    0    testimonial_testimonial_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.testimonial_testimonial_id_seq', 2, true);
            public       postgres    false    295            q	           2606    17985    about_about about_about_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_about_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.about_about DROP CONSTRAINT about_about_pkey;
       public         postgres    false    199            {	           2606    18034 *   about_aboutpicture about_aboutpicture_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.about_aboutpicture
    ADD CONSTRAINT about_aboutpicture_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_aboutpicture DROP CONSTRAINT about_aboutpicture_pkey;
       public         postgres    false    209            s	           2606    17993    about_award about_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.about_award
    ADD CONSTRAINT about_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.about_award DROP CONSTRAINT about_award_pkey;
       public         postgres    false    201            u	           2606    18001 6   about_contactinformation about_contactinformation_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.about_contactinformation
    ADD CONSTRAINT about_contactinformation_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.about_contactinformation DROP CONSTRAINT about_contactinformation_pkey;
       public         postgres    false    203            w	           2606    18009 (   about_partnership about_partnership_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.about_partnership
    ADD CONSTRAINT about_partnership_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.about_partnership DROP CONSTRAINT about_partnership_pkey;
       public         postgres    false    205            y	           2606    18017 *   about_salonpicture about_salonpicture_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.about_salonpicture
    ADD CONSTRAINT about_salonpicture_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_salonpicture DROP CONSTRAINT about_salonpicture_pkey;
       public         postgres    false    207            ║	           2606    18320 4   appointment_appointment appointment_appointment_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointment_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointment_pkey;
       public         postgres    false    237            ╛	           2606    18362 <   appointment_appointmenttime appointment_appointmenttime_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.appointment_appointmenttime
    ADD CONSTRAINT appointment_appointmenttime_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.appointment_appointmenttime DROP CONSTRAINT appointment_appointmenttime_pkey;
       public         postgres    false    239            ç	           2606    18062    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    215            î	           2606    18117 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     á   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    217    217            Å	           2606    18070 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    217            ë	           2606    18060    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    215            é	           2606    18103 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     û   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    213    213            ä	           2606    18052 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    213            ù	           2606    18088 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    221            Ü	           2606    18132 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ê   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    221    221            æ	           2606    18078    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    219            ¥	           2606    18096 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    223            á	           2606    18146 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ª   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 â   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    223    223            ö	           2606    18364     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    219            └	           2606    18379    blog_article blog_article_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_article
    ADD CONSTRAINT blog_article_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_article DROP CONSTRAINT blog_article_pkey;
       public         postgres    false    241            ├	           2606    18390 (   blog_articleimage blog_articleimage_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_articleimage
    ADD CONSTRAINT blog_articleimage_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_articleimage DROP CONSTRAINT blog_articleimage_pkey;
       public         postgres    false    243            ╚	           2606    18451    cart_cart cart_cart_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_pkey;
       public         postgres    false    247            ═	           2606    18478 C   cart_cartproduct cart_cart_product_cart_id_product_id_7a5822b5_uniq 
   CONSTRAINT     ì   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_cart_id_product_id_7a5822b5_uniq UNIQUE (cart_id, product_id);
 m   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_cart_id_product_id_7a5822b5_uniq;
       public         postgres    false    249    249            ╧	           2606    18461 '   cart_cartproduct cart_cart_product_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_pkey;
       public         postgres    false    249            ╩	           2606    18453    cart_cart cart_cart_user_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_key UNIQUE (user_id);
 I   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_user_id_key;
       public         postgres    false    247            ╙	           2606    18488 .   cart_cartproductinfo cart_cartproductinfo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_pkey;
       public         postgres    false    251            ╡	           2606    18272 6   customer_customerprofile customer_customerprofile_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_pkey;
       public         postgres    false    235            ╖	           2606    18274 =   customer_customerprofile customer_customerprofile_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_user_id_key UNIQUE (user_id);
 g   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_user_id_key;
       public         postgres    false    235            ╓	           2606    18509 :   customer_loggedincustomers customer_loggedincustomers_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.customer_loggedincustomers
    ADD CONSTRAINT customer_loggedincustomers_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.customer_loggedincustomers DROP CONSTRAINT customer_loggedincustomers_pkey;
       public         postgres    false    253            ú	           2606    18160 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    225            }	           2606    18044 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     î   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    211    211            	           2606    18042 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    211            o	           2606    17974 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            
           2606    18854 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    282            ┌	           2606    18517 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    255            ▐	           2606    18529 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     û   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    255    255            α	           2606    18527 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     ¡   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 â   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    257    257    257            Σ	           2606    18525 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    257            Θ	           2606    18553 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     è   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    259            δ	           2606    18555 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     ¢   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 é   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    259            φ	           2606    18571 &   main_homepicture main_homepicture_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_homepicture
    ADD CONSTRAINT main_homepicture_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_homepicture DROP CONSTRAINT main_homepicture_pkey;
       public         postgres    false    261            ∩	           2606    18579 &   main_maplocation main_maplocation_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_maplocation
    ADD CONSTRAINT main_maplocation_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_maplocation DROP CONSTRAINT main_maplocation_pkey;
       public         postgres    false    263            ∙	           2606    18689 e   newsletter_customerrecipientlist_user newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq 
   CONSTRAINT     ╚   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq UNIQUE (customerrecipientlist_id, customerprofile_id);
 Å   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq;
       public         postgres    false    271    271            ≈	           2606    18653 F   newsletter_customerrecipientlist newsletter_customerrecipientlist_pkey 
   CONSTRAINT     ä   ALTER TABLE ONLY public.newsletter_customerrecipientlist
    ADD CONSTRAINT newsletter_customerrecipientlist_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.newsletter_customerrecipientlist DROP CONSTRAINT newsletter_customerrecipientlist_pkey;
       public         postgres    false    269            ²	           2606    18661 Z   newsletter_customerrecipientlist_user newsletter_customerrecipientlist_recipient_list_pkey 
   CONSTRAINT     ÿ   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerrecipientlist_recipient_list_pkey PRIMARY KEY (id);
 ä   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerrecipientlist_recipient_list_pkey;
       public         postgres    false    271            ±	           2606    18590 0   newsletter_newsletter newsletter_newsletter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.newsletter_newsletter
    ADD CONSTRAINT newsletter_newsletter_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.newsletter_newsletter DROP CONSTRAINT newsletter_newsletter_pkey;
       public         postgres    false    265            ⌠	           2606    18609 :   newsletter_staffnewsletter newsletter_staffnewsletter_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.newsletter_staffnewsletter
    ADD CONSTRAINT newsletter_staffnewsletter_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.newsletter_staffnewsletter DROP CONSTRAINT newsletter_staffnewsletter_pkey;
       public         postgres    false    267            
           2606    18703 b   newsletter_staffrecipientlist_user newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq 
   CONSTRAINT     ┐   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq UNIQUE (staffrecipientlist_id, staffprofile_id);
 î   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq;
       public         postgres    false    275    275             	           2606    18669 @   newsletter_staffrecipientlist newsletter_staffrecipientlist_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.newsletter_staffrecipientlist
    ADD CONSTRAINT newsletter_staffrecipientlist_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.newsletter_staffrecipientlist DROP CONSTRAINT newsletter_staffrecipientlist_pkey;
       public         postgres    false    273            
           2606    18677 T   newsletter_staffrecipientlist_user newsletter_staffrecipientlist_recipient_list_pkey 
   CONSTRAINT     Æ   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffrecipientlist_recipient_list_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffrecipientlist_recipient_list_pkey;
       public         postgres    false    275            ┼	           2606    18435 $   product_product product_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_pkey;
       public         postgres    false    245            
           2606    18797 $   receipt_receipt receipt_receipt_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.receipt_receipt
    ADD CONSTRAINT receipt_receipt_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.receipt_receipt DROP CONSTRAINT receipt_receipt_pkey;
       public         postgres    false    277            
           2606    18805 2   receipt_receiptproduct receipt_receiptproduct_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptproduct_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptproduct_pkey;
       public         postgres    false    279            
           2606    18839     review_review review_review_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.review_review
    ADD CONSTRAINT review_review_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.review_review DROP CONSTRAINT review_review_pkey;
       public         postgres    false    281            ¿	           2606    18194 $   service_service service_service_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.service_service DROP CONSTRAINT service_service_pkey;
       public         postgres    false    229            ª	           2606    18183 ,   service_servicetype service_servicetype_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.service_servicetype
    ADD CONSTRAINT service_servicetype_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.service_servicetype DROP CONSTRAINT service_servicetype_pkey;
       public         postgres    false    227            
           2606    18864 4   site_admin_adminprofile site_admin_adminprofile_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_pkey;
       public         postgres    false    284            
           2606    18866 ;   site_admin_adminprofile site_admin_adminprofile_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_user_id_key;
       public         postgres    false    284            
           2606    18887 4   social_auth_association social_auth_association_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_pkey;
       public         postgres    false    286            
           2606    18937 O   social_auth_association social_auth_association_server_url_handle_078befa2_uniq 
   CONSTRAINT     ÿ   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);
 y   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq;
       public         postgres    false    286    286            
           2606    18935 :   social_auth_code social_auth_code_email_code_801b2d02_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);
 d   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_email_code_801b2d02_uniq;
       public         postgres    false    288    288            !
           2606    18895 &   social_auth_code social_auth_code_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_pkey;
       public         postgres    false    288            $
           2606    18903 (   social_auth_nonce social_auth_nonce_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_pkey;
       public         postgres    false    290            &
           2606    18920 K   social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq 
   CONSTRAINT     ƒ   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);
 u   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq;
       public         postgres    false    290    290    290            -
           2606    18949 ,   social_auth_partial social_auth_partial_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.social_auth_partial DROP CONSTRAINT social_auth_partial_pkey;
       public         postgres    false    294            (
           2606    18914 :   social_auth_usersocialauth social_auth_usersocialauth_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_pkey;
       public         postgres    false    292            *
           2606    18916 P   social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq 
   CONSTRAINT     ö   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);
 z   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq;
       public         postgres    false    292    292            ½	           2606    18212 *   staff_staffprofile staff_staffprofile_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_pkey;
       public         postgres    false    231            »	           2606    18239 _   staff_staffprofile_service_type staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq 
   CONSTRAINT     ╡   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq UNIQUE (staffprofile_id, servicetype_id);
 ë   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq;
       public         postgres    false    233    233            ▒	           2606    18222 D   staff_staffprofile_service_type staff_staffprofile_service_type_pkey 
   CONSTRAINT     é   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_service_type_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_service_type_pkey;
       public         postgres    false    233            ¡	           2606    18214 1   staff_staffprofile staff_staffprofile_user_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_user_id_key UNIQUE (user_id);
 [   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_user_id_key;
       public         postgres    false    231            2
           2606    18966 4   testimonial_testimonial testimonial_testimonial_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimonial_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimonial_pkey;
       public         postgres    false    296            ╕	           1259    18346 ,   appointment_appointment_customer_id_92575998    INDEX     w   CREATE INDEX appointment_appointment_customer_id_92575998 ON public.appointment_appointment USING btree (customer_id);
 @   DROP INDEX public.appointment_appointment_customer_id_92575998;
       public         postgres    false    237            ╗	           1259    18337 +   appointment_appointment_service_id_c235daf3    INDEX     u   CREATE INDEX appointment_appointment_service_id_c235daf3 ON public.appointment_appointment USING btree (service_id);
 ?   DROP INDEX public.appointment_appointment_service_id_c235daf3;
       public         postgres    false    237            ╝	           1259    18338 )   appointment_appointment_staff_id_3b6a9e8d    INDEX     q   CREATE INDEX appointment_appointment_staff_id_3b6a9e8d ON public.appointment_appointment USING btree (staff_id);
 =   DROP INDEX public.appointment_appointment_staff_id_3b6a9e8d;
       public         postgres    false    237            à	           1259    18105    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    215            è	           1259    18118 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    217            ì	           1259    18119 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    217            Ç	           1259    18104 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    213            ò	           1259    18134 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    221            ÿ	           1259    18133 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    221            ¢	           1259    18148 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ü   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    223            ₧	           1259    18147 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    223            Æ	           1259    18365     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    219            ┴	           1259    18414 %   blog_articleimage_article_id_a06f9bef    INDEX     i   CREATE INDEX blog_articleimage_article_id_a06f9bef ON public.blog_articleimage USING btree (article_id);
 9   DROP INDEX public.blog_articleimage_article_id_a06f9bef;
       public         postgres    false    243            ╦	           1259    18479 "   cart_cart_product_cart_id_a1873123    INDEX     b   CREATE INDEX cart_cart_product_cart_id_a1873123 ON public.cart_cartproduct USING btree (cart_id);
 6   DROP INDEX public.cart_cart_product_cart_id_a1873123;
       public         postgres    false    249            ╨	           1259    18480 %   cart_cart_product_product_id_69b79752    INDEX     h   CREATE INDEX cart_cart_product_product_id_69b79752 ON public.cart_cartproduct USING btree (product_id);
 9   DROP INDEX public.cart_cart_product_product_id_69b79752;
       public         postgres    false    249            ╤	           1259    18489 %   cart_cartproductinfo_cart_id_f3f36585    INDEX     i   CREATE INDEX cart_cartproductinfo_cart_id_f3f36585 ON public.cart_cartproductinfo USING btree (cart_id);
 9   DROP INDEX public.cart_cartproductinfo_cart_id_f3f36585;
       public         postgres    false    251            ╘	           1259    18495 (   cart_cartproductinfo_product_id_a90df363    INDEX     o   CREATE INDEX cart_cartproductinfo_product_id_a90df363 ON public.cart_cartproductinfo USING btree (product_id);
 <   DROP INDEX public.cart_cartproductinfo_product_id_a90df363;
       public         postgres    false    251            í	           1259    18171 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    225            ñ	           1259    18172 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    225            
           1259    18856 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    282            
           1259    18855 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    282            ╫	           1259    18532 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    255            ╪	           1259    18533 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     Ç   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    255            █	           1259    18530 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    255            ▄	           1259    18531 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     É   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    255            ß	           1259    18541 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    257            Γ	           1259    18542 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     å   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    257            σ	           1259    18543 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    257            µ	           1259    18539 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    257            τ	           1259    18540 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     û   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    257            ·	           1259    18691 6   newsletter_customerrecipie_customerprofile_id_9018117b    INDEX     û   CREATE INDEX newsletter_customerrecipie_customerprofile_id_9018117b ON public.newsletter_customerrecipientlist_user USING btree (customerprofile_id);
 J   DROP INDEX public.newsletter_customerrecipie_customerprofile_id_9018117b;
       public         postgres    false    271            √	           1259    18690 <   newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa    INDEX     ó   CREATE INDEX newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa ON public.newsletter_customerrecipientlist_user USING btree (customerrecipientlist_id);
 P   DROP INDEX public.newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa;
       public         postgres    false    271            ≥	           1259    18728 0   newsletter_newsletter_recipient_lsit_id_fd1ee318    INDEX        CREATE INDEX newsletter_newsletter_recipient_lsit_id_fd1ee318 ON public.newsletter_newsletter USING btree (recipient_list_id);
 D   DROP INDEX public.newsletter_newsletter_recipient_lsit_id_fd1ee318;
       public         postgres    false    265            ⌡	           1259    18734 5   newsletter_staffnewsletter_recipient_lsit_id_8d46e482    INDEX     ë   CREATE INDEX newsletter_staffnewsletter_recipient_lsit_id_8d46e482 ON public.newsletter_staffnewsletter USING btree (recipient_list_id);
 I   DROP INDEX public.newsletter_staffnewsletter_recipient_lsit_id_8d46e482;
       public         postgres    false    267            
           1259    18705 3   newsletter_staffrecipientl_staffprofile_id_016e1174    INDEX     ì   CREATE INDEX newsletter_staffrecipientl_staffprofile_id_016e1174 ON public.newsletter_staffrecipientlist_user USING btree (staffprofile_id);
 G   DROP INDEX public.newsletter_staffrecipientl_staffprofile_id_016e1174;
       public         postgres    false    275            
           1259    18704 9   newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3    INDEX     Ö   CREATE INDEX newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3 ON public.newsletter_staffrecipientlist_user USING btree (staffrecipientlist_id);
 M   DROP INDEX public.newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3;
       public         postgres    false    275            ╞	           1259    18436 (   product_product_service_type_id_162999e8    INDEX     o   CREATE INDEX product_product_service_type_id_162999e8 ON public.product_product USING btree (service_type_id);
 <   DROP INDEX public.product_product_service_type_id_162999e8;
       public         postgres    false    245            
           1259    18818     receipt_receipt_user_id_1eff22df    INDEX     _   CREATE INDEX receipt_receipt_user_id_1eff22df ON public.receipt_receipt USING btree (user_id);
 4   DROP INDEX public.receipt_receipt_user_id_1eff22df;
       public         postgres    false    277            	
           1259    18816 *   receipt_receiptproduct_Product_id_8cfdd43d    INDEX     u   CREATE INDEX "receipt_receiptproduct_Product_id_8cfdd43d" ON public.receipt_receiptproduct USING btree (product_id);
 @   DROP INDEX public."receipt_receiptproduct_Product_id_8cfdd43d";
       public         postgres    false    279            
           1259    18817 *   receipt_receiptproduct_receipt_id_d4fcf685    INDEX     s   CREATE INDEX receipt_receiptproduct_receipt_id_d4fcf685 ON public.receipt_receiptproduct USING btree (receipt_id);
 >   DROP INDEX public.receipt_receiptproduct_receipt_id_d4fcf685;
       public         postgres    false    279            
           1259    18845    review_review_user_id_ff798828    INDEX     [   CREATE INDEX review_review_user_id_ff798828 ON public.review_review USING btree (user_id);
 2   DROP INDEX public.review_review_user_id_ff798828;
       public         postgres    false    281            ⌐	           1259    18200 (   service_service_service_type_id_3b639d4b    INDEX     o   CREATE INDEX service_service_service_type_id_3b639d4b ON public.service_service USING btree (service_type_id);
 <   DROP INDEX public.service_service_service_type_id_3b639d4b;
       public         postgres    false    229            
           1259    18921    social_auth_code_code_a2393167    INDEX     [   CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);
 2   DROP INDEX public.social_auth_code_code_a2393167;
       public         postgres    false    288            
           1259    18922 #   social_auth_code_code_a2393167_like    INDEX     t   CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);
 7   DROP INDEX public.social_auth_code_code_a2393167_like;
       public         postgres    false    288            "
           1259    18953 #   social_auth_code_timestamp_176b341f    INDEX     g   CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");
 7   DROP INDEX public.social_auth_code_timestamp_176b341f;
       public         postgres    false    288            .
           1259    18955 &   social_auth_partial_timestamp_50f2119f    INDEX     m   CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");
 :   DROP INDEX public.social_auth_partial_timestamp_50f2119f;
       public         postgres    false    294            /
           1259    18950 "   social_auth_partial_token_3017fea3    INDEX     c   CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);
 6   DROP INDEX public.social_auth_partial_token_3017fea3;
       public         postgres    false    294            0
           1259    18951 '   social_auth_partial_token_3017fea3_like    INDEX     |   CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);
 ;   DROP INDEX public.social_auth_partial_token_3017fea3_like;
       public         postgres    false    294            +
           1259    18928 +   social_auth_usersocialauth_user_id_17d28448    INDEX     u   CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);
 ?   DROP INDEX public.social_auth_usersocialauth_user_id_17d28448;
       public         postgres    false    292            ▓	           1259    18241 7   staff_staffprofile_service_type_servicetype_id_ab16a4fe    INDEX     ì   CREATE INDEX staff_staffprofile_service_type_servicetype_id_ab16a4fe ON public.staff_staffprofile_service_type USING btree (servicetype_id);
 K   DROP INDEX public.staff_staffprofile_service_type_servicetype_id_ab16a4fe;
       public         postgres    false    233            │	           1259    18240 8   staff_staffprofile_service_type_staffprofile_id_56929247    INDEX     Å   CREATE INDEX staff_staffprofile_service_type_staffprofile_id_56929247 ON public.staff_staffprofile_service_type USING btree (staffprofile_id);
 L   DROP INDEX public.staff_staffprofile_service_type_staffprofile_id_56929247;
       public         postgres    false    233            3
           1259    18977 )   testimonial_testimonial_staff_id_a48ef218    INDEX     q   CREATE INDEX testimonial_testimonial_staff_id_a48ef218 ON public.testimonial_testimonial USING btree (staff_id);
 =   DROP INDEX public.testimonial_testimonial_staff_id_a48ef218;
       public         postgres    false    296            4
           1259    18978 (   testimonial_testimonial_user_id_eef7f4f9    INDEX     o   CREATE INDEX testimonial_testimonial_user_id_eef7f4f9 ON public.testimonial_testimonial USING btree (user_id);
 <   DROP INDEX public.testimonial_testimonial_user_id_eef7f4f9;
       public         postgres    false    296            E
           2606    18347 N   appointment_appointment appointment_appointm_customer_id_92575998_fk_customer_ 
   FK CONSTRAINT     Γ   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_customer_id_92575998_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_customer_id_92575998_fk_customer_;
       public       postgres    false    235    237    2485            C
           2606    18326 M   appointment_appointment appointment_appointm_service_id_c235daf3_fk_service_s 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_service_id_c235daf3_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_service_id_c235daf3_fk_service_s;
       public       postgres    false    2472    237    229            D
           2606    18331 K   appointment_appointment appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta FOREIGN KEY (staff_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta;
       public       postgres    false    2475    231    237            7
           2606    18111 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm 
   FK CONSTRAINT     ▄   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    213    217    2436            6
           2606    18106 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    217    2441    215            5
           2606    18097 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    211    2431    213            9
           2606    18126 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id 
   FK CONSTRAINT     ╟   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    221    215    2441            8
           2606    18121 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    219    2449    221            ;
           2606    18140 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm 
   FK CONSTRAINT     α   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    223    2436    213            :
           2606    18135 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Ç   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2449    223    219            F
           2606    18420 J   blog_articleimage blog_articleimage_article_id_a06f9bef_fk_blog_article_id 
   FK CONSTRAINT     ╤   ALTER TABLE ONLY public.blog_articleimage
    ADD CONSTRAINT blog_articleimage_article_id_a06f9bef_fk_blog_article_id FOREIGN KEY (article_id) REFERENCES public.blog_article(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.blog_articleimage DROP CONSTRAINT blog_articleimage_article_id_a06f9bef_fk_blog_article_id;
       public       postgres    false    243    2496    241            I
           2606    18467 C   cart_cartproduct cart_cart_product_cart_id_a1873123_fk_cart_cart_id 
   FK CONSTRAINT     ─   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_cart_id_a1873123_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_cart_id_a1873123_fk_cart_cart_id;
       public       postgres    false    2504    249    247            J
           2606    18472 L   cart_cartproduct cart_cart_product_product_id_69b79752_fk_product_product_id 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_product_id_69b79752_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_product_id_69b79752_fk_product_product_id;
       public       postgres    false    245    2501    249            H
           2606    18462 C   cart_cart cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id;
       public       postgres    false    2485    235    247            K
           2606    18490 J   cart_cartproductinfo cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id 
   FK CONSTRAINT     ╦   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id;
       public       postgres    false    247    2504    251            L
           2606    18496 S   cart_cartproductinfo cart_cartproductinfo_product_id_a90df363_fk_product_product_id 
   FK CONSTRAINT     ▌   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_product_id_a90df363_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_product_id_a90df363_fk_product_product_id;
       public       postgres    false    245    251    2501            B
           2606    18305 R   customer_customerprofile customer_customerprofile_user_id_e2b7d938_fk_auth_user_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_user_id_e2b7d938_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_user_id_e2b7d938_fk_auth_user_id;
       public       postgres    false    235    2449    219            <
           2606    18161 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co 
   FK CONSTRAINT     ┌   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    211    225    2431            =
           2606    18166 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    219    2449    225            M
           2606    18534 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum 
   FK CONSTRAINT     ▐   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    257    255    2522            N
           2606    18556 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum 
   FK CONSTRAINT     ±   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 à   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    257    2532    259            Q
           2606    18770 c   newsletter_customerrecipientlist_user newsletter_customerr_customerprofile_id_aa29376d_fk_customer_ 
   FK CONSTRAINT     ■   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerr_customerprofile_id_aa29376d_fk_customer_ FOREIGN KEY (customerprofile_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ì   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerr_customerprofile_id_aa29376d_fk_customer_;
       public       postgres    false    271    2485    235            R
           2606    18775 e   newsletter_customerrecipientlist_user newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette 
   FK CONSTRAINT       ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette FOREIGN KEY (customerrecipientlist_id) REFERENCES public.newsletter_customerrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 Å   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette;
       public       postgres    false    271    269    2551            O
           2606    18750 R   newsletter_newsletter newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette 
   FK CONSTRAINT     ⌠   ALTER TABLE ONLY public.newsletter_newsletter
    ADD CONSTRAINT newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette FOREIGN KEY (recipient_list_id) REFERENCES public.newsletter_customerrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.newsletter_newsletter DROP CONSTRAINT newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette;
       public       postgres    false    269    265    2551            P
           2606    18755 W   newsletter_staffnewsletter newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette 
   FK CONSTRAINT     ÷   ALTER TABLE ONLY public.newsletter_staffnewsletter
    ADD CONSTRAINT newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette FOREIGN KEY (recipient_list_id) REFERENCES public.newsletter_staffrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 ü   ALTER TABLE ONLY public.newsletter_staffnewsletter DROP CONSTRAINT newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette;
       public       postgres    false    2559    273    267            S
           2606    18780 ]   newsletter_staffrecipientlist_user newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta 
   FK CONSTRAINT     ∩   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta FOREIGN KEY (staffprofile_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ç   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta;
       public       postgres    false    275    231    2475            T
           2606    18785 b   newsletter_staffrecipientlist_user newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette 
   FK CONSTRAINT       ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette FOREIGN KEY (staffrecipientlist_id) REFERENCES public.newsletter_staffrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 î   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette;
       public       postgres    false    273    2559    275            G
           2606    18437 E   product_product product_product_service_type_id_162999e8_fk_service_s 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_service_type_id_162999e8_fk_service_s FOREIGN KEY (service_type_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_service_type_id_162999e8_fk_service_s;
       public       postgres    false    227    245    2470            U
           2606    18819 O   receipt_receipt receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id 
   FK CONSTRAINT     ▀   ALTER TABLE ONLY public.receipt_receipt
    ADD CONSTRAINT receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.receipt_receipt DROP CONSTRAINT receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id;
       public       postgres    false    235    277    2485            W
           2606    18824 L   receipt_receiptproduct receipt_receiptprodu_product_id_25b734e8_fk_product_p 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptprodu_product_id_25b734e8_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptprodu_product_id_25b734e8_fk_product_p;
       public       postgres    false    279    2501    245            V
           2606    18811 L   receipt_receiptproduct receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r FOREIGN KEY (receipt_id) REFERENCES public.receipt_receipt(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r;
       public       postgres    false    279    2567    277            X
           2606    18840 K   review_review review_review_user_id_ff798828_fk_customer_customerprofile_id 
   FK CONSTRAINT     █   ALTER TABLE ONLY public.review_review
    ADD CONSTRAINT review_review_user_id_ff798828_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.review_review DROP CONSTRAINT review_review_user_id_ff798828_fk_customer_customerprofile_id;
       public       postgres    false    2485    235    281            >
           2606    18195 E   service_service service_service_service_type_id_3b639d4b_fk_service_s 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_service_type_id_3b639d4b_fk_service_s FOREIGN KEY (service_type_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.service_service DROP CONSTRAINT service_service_service_type_id_3b639d4b_fk_service_s;
       public       postgres    false    229    227    2470            Y
           2606    18872 P   site_admin_adminprofile site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id 
   FK CONSTRAINT     ╤   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id;
       public       postgres    false    219    2449    284            Z
           2606    18929 V   social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Ç   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id;
       public       postgres    false    219    292    2449            A
           2606    18233 Y   staff_staffprofile_service_type staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s 
   FK CONSTRAINT     δ   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s FOREIGN KEY (servicetype_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 â   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s;
       public       postgres    false    227    233    2470            @
           2606    18228 Z   staff_staffprofile_service_type staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta 
   FK CONSTRAINT     ∞   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta FOREIGN KEY (staffprofile_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ä   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta;
       public       postgres    false    2475    231    233            ?
           2606    18223 F   staff_staffprofile staff_staffprofile_user_id_de1feaad_fk_auth_user_id 
   FK CONSTRAINT     ╟   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_user_id_de1feaad_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_user_id_de1feaad_fk_auth_user_id;
       public       postgres    false    231    219    2449            [
           2606    18967 K   testimonial_testimonial testimonial_testimon_staff_id_a48ef218_fk_staff_sta 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimon_staff_id_a48ef218_fk_staff_sta FOREIGN KEY (staff_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimon_staff_id_a48ef218_fk_staff_sta;
       public       postgres    false    296    231    2475            \
           2606    18972 J   testimonial_testimonial testimonial_testimon_user_id_eef7f4f9_fk_customer_ 
   FK CONSTRAINT     ┌   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimon_user_id_eef7f4f9_fk_customer_ FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimon_user_id_eef7f4f9_fk_customer_;
       public       postgres    false    235    296    2485            ┘
     x┌UÅ╜n├0äτ°)ε!nù6[åvjÇ Y│0δá)W?~■J.2t#Nw▀¥å▌Wê<CûTf°á!"I═£{î┴ÅÖsë /ïñQl½dçôA<(Ä++tc-è£#ü'NÖÆ├GÜQTiC\8÷0╣?`┴■uLæV±╘Ce*Jÿ⌐DI¥▓▄ï╢à╘π«d╛«╦}òMRm»ÿÆ≡Sjdª╔╚ßâl+⌐J¬╡┼╞{N½╛£¢«┌*ôòσ¢═7⌐╟*ÖZ6≥÷E@^╖;█F╣┼¢╜_8╣3÷åπßÇï;╗÷pÑ╝┐kτ[╙½╟U╙╦≤εn«δ║_ƒ0ç0      π
   2   x┌3Σ╠╠MLO-╓OL╩/-ë/╚L.)-J╒╧H-╩ÅOJÅ7╓╦*Hτè╤πΓΓ E╪      █
   ⁿ   x┌═ÉAN├@E╫ôS° U*í┬!ò▓E¬╠î	V3₧t╞nTN╧(VÇ▌≈ùσ ╛7ε«δ▌╜2Fα⌐Xä╚+≡I

N¼H╒╙á≈
(ïτ`óÇ6╡╨íe.Ç#ì≥Gou╬▐áp]ï╒¥2)[lG¿¼q╞╩~LC*k/j V╗═╦⌐¥dh«]█╣çöΘç.ñ1σ▀ô▀ñ^I-₧╕xûhdmß╘*╡╘╣q█■╔mE)*'┴*Ne=K▒îΓ⌐R╞	σ₧▓≥;S ö I│└£≥f⌠gùt∙!¥ƒ»>wKΦk█4═8ì▒-      ▌
   s   x┌3Σ╚╚╧KU≡+═MJ-Γ╘╢43T0T017P057π2Γ⌠═O╩╠Aò╩+ÿÿZpÖp·&fµ)8ªñÑs║Σùτò ▒éSjfQiëÄé[brf^║éobQIeQ▒║BpIbIi*Wî {#      ▀
   j   x┌34σ⌠÷τH,*╔K-*╬╚,PP6Σ╠╠MLO-╓/@ê╟τΣºτδgτâYzyΘ\åf£┴Ä╛
┴zÄzAz>z¿ªß1Ñ81╔sNg▀`ÿ)¿åπ1$9╖aHî 
ÜE╖      ß
   ô   x┌}╦╜é0@ß╣}
₧ Ω¬ëñ$hbrâri+ûV~óÅo¼+:₧Σ;1x╡CL#1ìqw$·╙╞ß8┘2¿{ΣE╜oN╥äTJÅδâ6pUnτô±Üæ\w│·⌐Sα╟Ñ∞╤z¥í_t;^▒6√Ω(!à¥µU¡p┤pæ├πÖµ£/■8çö╥7P╩       
   ≥  x┌àö╦Ä█0E╫≥Wh_ñ )∙5_0│ÖE╤Mü┘hα¿▒¥┌@m#Φ▀Wy8"cgg£+^]ÆBEÇv┘Aây┐o`╘δ■x∞ª╩¬T∙≡}╝+ƒ╨/w╣&┌┬
╟┴nßVα%├▀▐p╩añ»ßⁿ#j("|αF╞/"n5d_α├Φ|¿ÆöQ▄@T£·ô>╘
ì2A4åo÷âüK╕º╫zò╟╚âF╞ p]╒ ╤∩²╕Å║█MÉ₧k+▀╣íZDàF(0*ÜO▀5«≥g╔lεz 1A+T╝SS╣n¬½╞¡┬∞εoÄ.ⁿ⌡LzM█<î▌üRC■└δƒ}σ■═ADòΦ░ ~⌡'EFσùÄ▐πª╪Ju┘σⁿ¢bLêE¥i4+≈╚┼.┼áë4ß╙
3╧".5ûÆ?₧y╣½qCE#∩~Σ∙Öα═&ƒ▐n≥▒oThLe¥¬Æ=≡îfºîÅδa`%═╦<p~εV║OY}¿█µ│╬â■X─D	æwU3u▐-%6J¼ÿú╢qçΩwδ¢ER&σ╛ΩS╨t~hΩnY([l╡├Σ▒Hº|Ñⁿ%/εtx}h▒a Ñ¢2≥°╚▀pf╞┐±:╬N╖±lΘ╞≈«[û ßêVo└y├pô╖ⁿ|á¡ⁿ?╛'I≥r╤ï└            x┌3Σ4Γ┤αè╤πΓΓ 	`      Θ
   
   x┌ï╤πΓΓ ┼ ⌐      δ
   
   x┌ï╤πΓΓ ┼ ⌐      τ
   Ä  x┌uÖ▌Äú8à»╔SΣ	V═?╣▐╫i┼║)ü╚îµφ╫╪U«:eµ«▒┐âÄùφΣm¢²█╧╫■~┐>û»δ8∩δƒ¼¬3╫≡ƒk≡╧ù╝φ<5|≈≤╫ê`h╙∞═│≈±1εå
mèφ><√k#y┤h.Å._π·£╢mZµ¼j╝Miq`íì"KN/╡W─╔,αò╪E╪√┤ÄÄ┐╓σ²╩¬╓¢⌡«╗╤>#Aj╡╗æ1å:±oçü[t≥▐╞5½:oΣ°√Æ▀>┤ε'äΣ┌#déÉB<0α-Pw╦╝╗oz▌ ╝╞¼║y'╘v49╢╥å,N╞PQkVA>Q╤ê]╦{█HKB╢1|≡·├ºGç@<E~äl(Él2X|¿`(╠╗HR±╜<▌ⁿ¥å²╜ÄY¥{{G59éaq≥ë
╚åUÉaT¿xX▐;GZ≥∞_.■C┐√a▐╜kπ&╟B\,NεQ┘▒
rÅ
$╦{≈HK¬·√sÜ»»u∙£n¼Ñ╖∩⌐φRΣ│D@0╚]óí!ì
bó≡â0╝$s█√╧O┴½0├ÅFí!¢ëÇ';j ¥ëåτ=jT>Eê ≥Æ╨ß╜φnÆ¡óÑî█Eæ=ô±Zô(!├gJ^s¼▓Pí>╙à╡'Qσ║Bì≈½√¼LmY▌p¡v]╙;£░0E√L+σ;æùªÄƒ╔Ñó'≥
J√Öÿï|"òòí ╣╝≈¼╡╙?╕nX"┴!"≥!N
A*≥	1!@Ñⁿw┐▐│:O p)Jî5∞ä ╠1C∞ä \Fé░å÷├ε■¥ƒ╦·ñ5JJ⌐δR=NÖT╘▒*¼ë>⌐»'zUf╜⌐╢'ΩXt¡$√╒»√∞ª╟≈⌠╩ÜPUôC!╨åµ¡ ╟F└¢?-¿T|
╢ Kj╖■▒╠▒6í8√╞X+êj"αò5É╧D├++jT(EXYæ7I╝ÉD
¥St@EôµTkt^Ecc½_ßoj╖■Üå1l≈ÜÆ╢q╛═∩÷è·╖rê╟²£VΣ╕ºCE▄╪iEí7w╚╙O╙Ñuƒ5ò6εÉΩ─⌠Aí_╓'^m:░I,ÿvτ ò╬u╣┐ç=kB╣ÑGç`*àΓDF╙( 'æ┴FºP░É└I··╫kÖµ²Θ÷≤YjÑjr(D╧╨<eA ╣3₧» Pí3xÿ¼ ╫g╬»√⌠tá╡÷Åfºi■2ä(K╟A╩÷/cë╩t@ñ∞NuvdñÆ$n╡╠ÜPNÅ┐/E╤π~«Lü¼1┬┼' *\ä·║Kp SΦ¥─Y╘V╓É╞ò1Q╘╓ƒV(ƒóh╨«µúmí%qδ8î╙k╧┌PΘ╤!É8Eæ_!q
$¢╘ù4
≤ε╩¡│8Æ6╫πX≡¬µDäåEW₧°╓:⌠/║*åVΘßêªVú:ê¼-h0╟ô3╤;a-zf,Z%¼╙"gäHé÷qs⌐Zµ⌐dm(e¬ΘRα▌Äí╔ 
 ]F@VQá▓fpoaI▐<■▐▄█÷q═┌P╩ñ┼ü;d╔6αÉ9─╔4α*p{╦Ç╢µt¼∙Z╚áΘ╥32╩⌠1ö╖⌠ñîJ}XV╩.ïNtrdU₧₧Ü▌ⁿƒ^╙▒Ä?ª═┼óü├s∞=:▌è╙#t·sÆ╢»)O╧╙Θk╠▒┌╛ª:9\º/ü3╢}Em╛╖ò╖≥═¡┤I?{¬╓ƒ▐╛áM┐~·=∞:;	R╣L+Vτ▄uƒå╟ÿ╡t╥
Åù╥\a	┼{ïΓyW@▐JDPƒy;çò╓┘uz÷_Ä╝i╛═╤╒ëIáU╓╘'~Eâ«Y╙$╓Eí└╝ZIû≈Ω6╙]!√'α▓₧1îß1₧äΘï&ü┬╫gD╥┐┐ƒ?τ~zd]¿╘▒┴aÉq ╣é(Æ0W½╝*çδ╘Θ⌡ε╢ô≤q╛e]üªÑ╦i¢S√FnGohO╟d▐`çoΦNj⌠8fP½dn█2Lß╥ñú[fi║öµ6
i₧· └ñóÇτ=tbô`}cuw3░ó+¬╗¢~÷R*⌠╟[(Åÿ{ºÇ─ï&Å└╒R Φ.╔wKΩµe>Bè╢p▌É╣H≡â H\äxc }3æ░¥  ç▀α«■▀⌠╕÷∩²;δÜ°{\h>Z¥ñ░┐╠Yò·òäÑ²╜╬
╒ow ¼≡W<+ï┐Φü¿å║c≈╫╡±vε╪°òx-ñ(u+└╓▐╚¿nπ╪ßMa±εÇ~ⁿs╣\■r}▄      φ
   ▒  x┌àû[Åó<╟»¥O1▄MK[(Él▓ΦαEQ9i6ÖαO  áΦº≈UwFwß┌ª²= >'N¿ä╙φ▄àƒ±╩ü,G1Σ5┬ge~úúX&╡Θæ═PNñ0÷═╓╝■µKía├	_[α░ÖñDZºE╖╛¿éßαwê^!ü Dê¿ÆT£╣┐▐U≥'╔▀╦J⌠∙WÇEå╦╙<╔W┬ci÷t╫φ╪c/pcjz╘├µV	VU.5H▐0úë⌡áΘ─║╨jZ╢h∞O╙■╩?*┐z╖Æ,Γ$ì{íóτ_úⁿ╝■£╛│▐╤│└/╓^∙≤Ü├▒H─ê╞\n╚aπ-7╔üùÑ%C9ä░âz┬ G';Ñ9Ö&ú±mgâ╞ó╛▄E≥Bπ5g▀U#"biü)√ì'Äδ■µ▀°6î FND6▀Éí≤í>╣p¿c¥2╣=ºvh√║Γÿ¥V7$k╠¼╬ε═7╜n{╢┴⌡Ω╟▓>⌡S|Cg°R&Ad!-|%g∩╚┘╗ßÉ├b3╚_╚±c≥└░╪í╞¬⌡i (∩l█┌j╧┬╛'Ñà∙┴Θ╥║╗J╡■j┌>	L-ε¿µ\u∞πó3éÿƒ╟4ÿ·gßƒ≡µ-≡Ω-≡19~≡ò╔▒┘iépI╬>&O}Oƒôy╦╪:┼|∞[▄Y┼YÜ&v╚╓Z│╒]εûîjçâvs;Qò╞lï<█ûnΣÇ2a^DÉF╠7rεFÄ«ΣΦoΣHPDêµ)╔╣╟Σ╟s X│?^╩èr╛Zçc}ò╠║2L'|∞╬╓xÜ╢╬mOF╝P=Ω₧╤¡J█?╚a.ô├╙æ»ΣΣFÄ»Σ°)y)D"Γi└Æ£<&∩ƒ",4.┤ôêÜ»kΘiô▒σ╞.«à╥IOÜ¿╢F{8ì╙í?åW├╞═yæaEäi┬~#┐x·z╖,ß»∞∞▀╪╦φ í∙▀Θà╠εg}vδ₧`Ç6E⌠═¢»Lò═1:î6├░[Oⁿ)9º╪█╣¥╬"RUî=w½w1
A! ╣│╙ÇC7÷±&∙uΦ)┤≡
≤½╦│6á[2?)$╙╚█z▒╩âyâ2╒╥]┤sC4Qj÷`OFmïw╗φ₧|╨ñ-ô═ê╣n╬N₧qùW╕╫ⁿf╩S═÷N∩2à|2α.╖Σ?╫Σ┬Çg°╫-1G«ΣτƒT£üôód1╥'┴ΦLu└0h1P└½╨L╡âg(n╪9OZ╢¡░K.3╒z▄Saöd▓ⁿGv¼╚`▓∙│_²e┐â}r╙~x∙  .╙O
!»y╝┌α<d╦4╔?⌐M▐\;'B(u╩ ╧+«┐1¡■LK▓╣04UVYφ╨∞╝çÜ¼I÷£'■╠▀ò╬{`°ò~Aå `fE└╤ê+₧Röⁿhò·xrçLó&I╩⌠>Zπ╬▒╩╒ñ╬▓?miìv¼[ßd╗è╔[┴Ü£ij<Z■°π0\╘n─╤·&■╠╣ù╛ε▄	_L²═är╫<f	ΣK╨cåu▌╘πD╥kì
∙íCs╛╝Γ,ñ¢╜ukΣY╪[fUXEoo▐■h─╒Öz'{Θ╠7╥╥╧»¿╫╔░Γó±≡Γδ°Y√2ΓΩ╞╘┴R(ïkπcìL'+O¬╔µ┴╨G»í*C╡╝⌡<∩^─rb±_Y}gτ,w┤Ωeα╦éº─ùF"'╬3"@%±ô
┌∞┼¼╫U{@HδTR3≤α┘s!î╖zUB╦AT7│%▀╖╪*_╦▄ £òzäî{º╛d╧ë∩⌡φ┐W▐b≥φ%╝≤╠╦.¥╩_p╫√╔╣╣₧╦ö⌡í╩ß,╥≈⌡▒;u÷╜╨Φ≈é╚qF╗ò▌9φjMΘ≡f╦▐>qε≤7[╢EE╖L≤Ç°[╔gnε╠Tⁿ⌡l╡≡╢Äù Éƒ╦▄ ∩Y├é≤É,α╤/// 2Yü!      ∩
   
   x┌ï╤πΓΓ ┼ ⌐      ±
   
   x┌ï╤πΓΓ ┼ ⌐         `   x┌34Σ╧H,Q/V-αI-.Qp,*╔L╬Iσ24Γt╠╦/╔H-R≡╧Kσ⌠⌐rÇ╞£ß⌐9╔∙╣⌐
%∙
╣ò
iÖE@}ë}£P²
╔∙y%⌐y%\1z\\\ £^ δ         ¥   x┌}ÅA
┬0D╫╔)Γ*╡╘╓Ñ
╥║(é╕>⌐~cΣ7	IQ╝╜ö╢.│xoå╔XàDûΘN*KΘ{}#ä):⌠┴Hí╜╫∩KQ'/ºXÜ≥<jΘNA>úδ[%╡ë	P6┤3⌠ÿ┼é┤╜¿F£eτú■qoèô¥åW╝d
~D%çÆ/ß"~±»mó╫₧Φ-┤
▓╧°5ß£  ╛╔m└      	   +   x┌3Σ42ß44µ2Γ4α44ß2RFª\ª ╩î╦DÖs┼Φqqq r╝^            x┌32ß4Σ4µ4Σè╤πΓΓ ╡╔      
   
   x┌ï╤πΓΓ ┼ ⌐      ²
     x┌à╨;O├0α∙µ┐ñ╜~▄╪Y"$LHòóL╚Ky≡√qpi#5<>:L@ÜWεL┘O#<Üc▐┤
░8ªUê
)è8CP╩:/╠░¢å▒¡M?∞╦║╚h≈┘ô>Hçà≤{3bdEyu÷j¢L8ï6K1╜░╚k¥{EÉÿzEπ╚0Db╝╨"»╞£ªV¢],▒░ö╫Æ┐┘l┘A»û^ƒ₧;Hé=ç' ▀µ▐═G>UúK<Å'╙»ⁿΘ·█eQH┬ê@úïlÿ║²]8╘┐≡YÑà╩nU[¿═ÄE&▓T₧╛Æ√W╟*_╫yk;æ\¿|KM*¬MΩT²╖ò█[	║$σ?╔½I█╔├.éH8▒         
   x┌ï╤πΓΓ ┼ ⌐      ≤
   
   x┌ï╤πΓΓ ┼ ⌐      σ
   «  x┌uSYnπ0²3HRk╔]YqXX$║An_┌Ä╫ED≥=èΓªF
█îóO¥ÅT₧╨(a║ï∞K└Z1Eh⌠u%
3[C⌡Ü│p)_Ñg÷ukÇ<êΩºuQ@E░ⁿ▄=ƒ╤╤P╪∩4c┴µ>9Kô▀ç¿H■2'7¥╣ñ÷∞▐êJ÷v¢╧ò┬
ò8lYòòSoÄδ∞|ïq*H«εÜÜOÉf1╢┤ ╧/s¼╠:┬xK%╠I¬├ï╦╢PΣXw╠áÄ/░┌>┼ÑFu┌>▓ó\Ñ/_Φⁿ"º╞⌐fâÆé½iGï┼â╩9añ└▀Ωá⌠_aα`F8╬x:@¥▀╞ZD±╬cªEé>εí╒∙─╚·╟KÇ■Σ+┐ö"┌~½ânD⌠Å┌{"₧┼[-╖─4┘-½╢∞2:╬3rQ=VNC è░s0Γ╩╙\':▐
}■ac░¥s▐╓τàεC╕Fï=»n
O└1½
µ⌠7┘r╦π⌠└≡╝ôπF\┌O╗$l¥∞i¢L│#]j∙Y╣Ccèc6jÅ┐qF╞╧	F∩°qE╟	ⁿ  ▀≥}e■      ╫
   _  x┌òÿ█r█6å»ΘºΦ}'`wq╩│t├H░├ö"UÆrÜ╖∩É(áR╣±╪▓■╦=â▓(┐╡╫íBH_5╒PòuB║/é╛Ç·CΩ»J}Es #à▒
|âç|yZ?~_ 8/¡░O╘Vh╒°Pπ\ì┬KÆ:»v  F5=╘┤Uτ╧V ┼│╒C¡|ⁿ⌡Rçk≥:4N╚Qºïc█íå_ù╨∩√Ji▓Ii
6≥√╛┬ ╥ú┬σΘ\5√ etè{H└╫φ┌²≥]8╖ƒ!9⌐<¥≥$aúkñx@≡aí/ÅC╒6■╜.?ⁿ±{[┘YæPa▓ΦC≈╔▀|ß1┤u╓E╠Uα∩ΣTNÉ╤_τ¬uJ>I)'╔║Φ=IE?ö∩∩√ª:ç·÷ÇΩíY╘ J/┤╩σí=≡G╩ª#⌡CÄ+╣$σ≥rDòRDÜΓxφç÷║=úYª⌐t¬]╚û╡k╜ ∙Σ`╦Ñò"Σ⌠Wv²Ñk▀½:°!⌠â»B}╩S£óT ┌╪ídû ╤üK╣ ¿M'@╠@pè.X⌠ûá≤à╬ÖH└┴l⌠ä`àâDá┴«	JΣ²ÇáìSæá╖!P>æ┤╔='Hq∩≈∩┴¥é╠
0ÅTεÄ\dºö[╓≈vh≤Z'╚"Wσ<Wë3W╩'E┬)ón^Σ¬─5T>>─ÿΓâ▄/ù╢jå37├²J#c╨&Ñ\+ù@cò½,DüHâ╓\C4=üh.┘Φ.ää╦φ±ü?û═1╘!_▓╩╩█t@Zc╘╙à«\■ßt╓σ82≥Pº%/⌐5TτáU≤√╠≤▄╙┬q∙Dñ^#═
∙#G3├`═δâë
═Ünτ⌠í:?▒Å	J÷┘═&S╔Ñ─╟⌠M∙îÑ¥ÑXⁿΦª▌é│½╪Cù╨¥½╛º⌡≡τ≥__çµâ┐òemul¿$&▐X╤σß\V⌡.╞üM≤üΣäí9fⁿ
j/CƒeíLr┴─PsF]≥xß╜ñΓg╗╓∙
4)Ö'èÄ┴«║╔├╤⌡~t[╥ñ╒éhéÿ¢)ƒe]¥╩íφ·╕à«k;}_~ä'Oåè█u─⌐	g│▐┘±│ß╬ûZ,Åû;╔m|⌠╩≡ûæjS|c»εw7╬╘q∙ßírù,┌└8⌡≥ô╫ZΓ▒╒nR/·áτ?▀╧xCL-Yëéº╚Θz|í;αδD<Æ≈ëÖ
ⁿφÅ√é∙╝▒8┼Cî¥é9'g#╧ÿπ▀y╣^ú|▒,HZ4r╟╣°daqπ
$=├bYÉjKá<┴╤¡7≥└9û▌«π▄AJ	╦≥«XÜφ)tV╠;çJà¼╠ñ╞ì6ïë■*Φ FÖ⌠╕v╙Zî|W╔ëQÇN│_-g┐√╞G8U═²╙~ÉpÉÆ┐m╫óe ╦▀»τo
≈└ ┐⌠E5iε≤▒@┤╠⌐ß±≈ë'E3╢Θ╝J è
wαf pEd╒'╔║:à┌╢╝¢ZKù£]å╚╟_∩k[∙:εr╛+╟æ£τhöi8iU4ßg_ça╪╣ñDß╪╕!áW┬eµ■eûa∩~╔f┼└-#∩ºQñ┼I█â╢ôaαü╖¢φV╡fdû╨╚ÉZ¬ΦG#V╜φ╕öE≡ëΘ}ìæEÄí║{ü└"Åÿs╒2
╩│≤╟"/(⌐δd└g~εƒJ╥┌~C3╤:⌠O%$+ô┐╘ⁿm M-■=öπ{₧S^N╩╪Σ*╛ÿç>Uµ╛╒û/+Ifè╛╕Dv▀▄D!ù¢J]▌╪òp┌π'»▄╛Q#┼╓c▄
ê/▄	é ƒÜƒ┼)╝ù╫·à|1N██{+Y⌠φæ┐τw▀x▌öε3≤≤ .V]αì£╖≤▄σÑQΘ`\ⁿ2╙^oin└}▐█}âäN¥╙¬╡┐	φb≈▓zn═úφΦ┤#±8╧ö╗φÖ╓¼-yóÑN╪┌5D═ ╕yßviIîHæuw╚ΘG┘|┤⌐ü]x░?╦
'
%78▒╒^ßO\<>y4¥/ywët
wrï░≈π≈(d(
T┼°j½:╖═h⌡Nb╙ü╧ /!╖τ┐ΦE╞Hî⌡Φhïy1ó#FAZ█¥┌b~#EGöü⌠&╤Θ-j╟)╥$ºÿ¡÷Ñée∩ì#√╫ßφφφ?o√j,      ,   ║	  x┌φÜ[Åú8å»½E▌»&≥sê┤╒MÆI╘8ô4	┌¢ I└╪╚	ⁿδ≈âΩε9∞t╧J╗Ü╛ëöRE
Æφ╟▀ß}m≡εûÑ¬½$├èT╞ε\7f₧1KtÄe4Ωë╗/╠╙ü┐╬≤'äδI╗⌠_pΦ»tñ*+
╧α·H╜Ö▀+k.¥,}]ƒ^ΘVG»ï├.Xσ╦|▐yƒµτ?■¬⌐╪æφ5·07τj]ç+πÄëÿ0ö(ÖTS£╬Ä╫»╧²∞]²└)óá²╝ëV╠≤{■J·τ▓C·╩e"¥S°╩Osq╩9±êτ/Σ╥ù*
V≡=═B=G\,rleΦ{öô	≥⌠Gnª<-Ñ≈aß<ä¥ƒ√	╧╪kî£æë£ ·ÄÿW≤p╕╔µα¿+;τú<köσÄZå|
²Hq≈}µ αY╠⌡0ÉHε ≥εëLx.Ω«║Plƒ¡╛«√√┴à$æÇMwô╓╙¢;WΩæHrÄ==Θ╫ó=2!KX_ΦO│╚_╡a■£±6ƒ13{L╔╚╢╠£q?Tgz 	¡ÄëP¬½3╣ÖWæºöaÆ>±Ä;gæÉ╣äî╗æ≡╘Hs«_p┐kæ ╛Ç($K╖áí╧EΣ~\√'╠┐.═¬,VΘφúΓ╖╕\w╗`~
_╖h≈ü}}.ΘÅ╔Z╞ôEÆïî╒* °6ánΩαäl╗WÆe	9÷c┬Cö⌐
π╩c\]4öjQp1┐/!0 [0wy┘─"╡ÿs:/╤?ççêcc├ß╖êc╠lφV5┤╙Ns:]╩ΩêO]╝?fÜ┘WK>└
αîgé╟╘élQ¢÷αL|Σ£∞»Θ╣3π┤▄_c█8█ΩlWzû÷ñóZ╬`α┘£-▌M┴`╤lQxnZíÜ▄▌╤î├V@wí mp▐çQπóµ⌐║₧^▌C▓é┤\uæ┐üì.HΣ╬!Ö_:/αy$B⌡╧².U┘3Acî╟1╟└▌:R╘2│╦°▌╥⌐█.╬½┌:ΦX╡═#Γ>ââç
°î"╬fùâû¼+±╜┌╔·ñ≤:╣┌ù$I▓╘:║╕φkv╞╘Y╪Φ┴9ûu!ìâ¬V#ε╬¿┴rG║Cs¡1e:Γ0A å╜┘Zr±╥züwÅ@ûä┴╩α~bxε{┴²-╛ir─▄çp ╕!G Ää5B▓\└Ræl'+Φ▓i╓ù!╧ÅèPD∙╥I2█Φ▀╚æí½óí½"{ä╚É¬N£¢Γh∩╗&⌡╫Gv╜öéíky╢j:«G∞g"╬dä╗ùûI}╜ínZSiòóåª⌐-u/
%*π)r'║∙/}Üé&
Σoï!M╔
╞6!╝ùÉ╥K ╪B│Çë8H╖ÿñτΦ╛
)Σ.	]gΘl y∞n[┤5≈■·Γ+A∞¿d+I·≤╢Mσz│/NxUñß■wá╧êìßzèÜ├╬∩A½3v╢wùóEB╒σQ:⌐è¢Xe∙ü)δ▒≤8ⁿLåö!xd▓ü¢u┌φ⌠φx/Γ╩U∞\Xnε╙≤┼┬º√╒Å²YNAg3£1▓FÜ[╓ÖV╫╥╘nO$▌1zp┌îß∞r▐æ>{⌠▄»╬ç╥>α(".╙√╢;¡*╛µY¬Yφoé₧Ukö4ΘÆΣεï*0╟ÿ÷┐	xQÆ[m£Ük▓;u(?[╣àHb[σò5L╥╕/:ö÷╜ü8#┬p╨	{W\H"╥3╗εM▌╪Γ|├è∞è⌠ó5ε¡7░gä╟╚#4┬t╨í▓2│√If╗¬═2ú┼╟ûVYû6÷Uù╕ßX╠Ω-#éµ@GoÄQÑ▒l┤Φ¬¢u,/å4εΣ▐
+ò═ü╓vnƒ3A}1BF÷o'òÑë┌┌2w╙▐╒àqÄ»:╔U╥╥NÇ|∩}îæXτ₧■Al╪╥ƒ#O╠█0ÿ3≡>z9â▒}≡╩kù3₧{·/Uh╞'╙u║ëZ»êΦz║°eσ≤|	╖^╕▄╙f=òôφƒi|▐─ Ωd▓Σ╖É╚,₧:"ª∙Q}ß╝╓┐╬Å²ºîg█_V├<τ▀█┤µ4≥╙┬S╙<⌠C║£M vñΣ╜Wr═╢='ΩäyΓEâ░╜≈▒ÆG∞éΘ∙K╠─│⌐Nº╬µP┼îΓ▄"╥╩Å┴█┌~s\▒╧≤
J£Ä╠7+Q╗_═≤═r2JΣ)╣`╝╧»Wâα╗dÅ6⌡UQZc├Sg─l▄â½│┤ö╡╘IY#[φε¼sLS∩HQVI≤Σ∙∩8{}½éτJH(╓╥≤╫9wSß╣!DⁿDâôåταÜ#╣ⁿ68²└üü┘öuÄ ╛t▀g▄=jε≈w₧ß+
çF╜ù/l¼≤Ñ?U.îcdé▓«Θ∙RÉπ▌6ovR;;ì⌠₧u┼╣╣▌Q\æ'Å¼pΣoUû¬âΣAT,gß¥δ6gCûAöyb¢y│)X¿éFbnx▀▒~?ÇσεT@É╡▄]▐,äñÿw\¡Z«µdΘs⌐I)¿éP╡ó┘ªì|) π(▌∞M?d¬e
mΩ╓uIó[ª█▓9k┴t¿vI╠HægR?y3╚JâÇkÄáöå═²q╫s█<
6F¿┴?√G
╞s┐` E╣-ΓbZFô⌠£┬é╢ε▄°Σ╩═V▌╔f╗αae╦	√░æ╙Uⁿ╜r¢ φσ6╫¥f₧∩!╧}»·≤ß£Ç¼'íµ┴┤≡4ç╓│A▄⌡εíd ▀r;T
░SÿÄ¬╞¥Æ[╒è╩iwqæ(,N¿<8÷╛¬Ä╫G╣²⌡>─0╞ì¿1\$╡IW₧KºM.WY)}ô-Ñfy4┤Æ╡ë∙ ≈Ñ▄Zcb÷Γ╓pp]r╕ε÷±▌*D│ùΓ@Hi¿ô6╣4e?└
α¼^▌╓pæ⌠µC⌡aWKj░║╜z╪;√ûí²⌐╦KπXWJ>AC╫!Θ/Éí┴├díë+¿⌐╨╝µαI.2¬░ïⁿèI╟âà⌠╛Ä ê╦r╡ΘB╒┐┤₧>"hL╨P├S!µ3h≥ÜX ╨4}╜VKw╒■■-╥7*µî;5\ûkQ∩;½╙°V▌█║Is3⌐╗ömûª╠Φ
ⁿπp≈═çΓ1ec6tw▌₧rénw╗9¥╧Iy)bπdεφªuè╗v≥G}√
▒±á(G°φd╫iNx_û'åjK├ε╓√⌠`£Ω5Dαc^=y┴ MPE~öCxCJ╬╡7¢┤QN@├·=─>u╫ ≥¢αΦÅxºσÅ6ºo╠ v#█4╔██ ╜{≈ε▀Iï0z         à  x┌¡Ö╔R;å╫ß)╝┐e]IGc∩C┬h @ΩV⌐┌φ÷cl<Ñ┬╙_
É`[¥rw╗è½∩╫9}å_2∙╘╒φNNEJ8YG┘òî╢;└≥Lf£τƒú┤ù╧■¥Σ╙┘°┘ ·1Θ}óÿΦ&å&U
╠FáHk⌡ª{┤,Qÿ√a.»ε?╟╔É──æak≥`╘3╠╚■╡Ü?ÄΓXNÉó┌aY),7≥aq=╠╟1,$ÿ"ßá╝öÿ}y╦:ó J0╠'WöM.3/z6─x'Sî4πÄ,╦Æi£)ΓSá╢&÷≤Θ╪┤{±┌éäIñä?ñ.√⌐─╕;╜l¡cëM)O _XùΓé╣┐┬ΓÄl|-èJBσ>äl═Mª╙╬╠<ì{c+2√ ╨Σ∙_70KÇ'£! ƒBδ±M>?=ƒoΦ≡äÉärä	x¿ªôìfEqpÖ`ëh¿┬Ω±M{6╝b¡σ╓─║AöMû/j╗÷»ª3KGδq¼≥5'₧/Ω±══ⁿ⌡ε╡∙ÿä╬Æ>_%Ü5¥╬ƒm├÷ô┐|╓ñ╨ "ß8!q«}4j*ªç[⌠╖╓c▓╣c6&àäá>&╜╡÷±■π╤╦≈B5à}τP╝╡πⁿX~φæB5φCúd7ëñ≤√E«─4┬a¥Q║╡_φ▐┴π═ULì&X ┴ÖWâ:jæA≈^èL'L!╛qΘóôw╙┼╙▄╬Σ|π─*íq≥├δ£°w½Ä»╧≤││╟╪HÉv╗ Ñà?╣(oç~┤^╚┴±Ωvyƒ6v*â
ül?f∙t9╚>║u╞X/²╡ó╕a╫╖ûï┘╔·DU╫(f╦P:║<█¢ÑB00?ùv╘╝ⁿΣGR«┌$ 
;w╣N¿╢	æε{⌐└nσ╦╦ïô╙B╢╛Vá┤uµµ√┴ß£─╤L#ó└úíªS°ⁿ:∞∩gje8p¢ëï╨\VºΓ&Åz╩7>╡ª
YÜτ≤║ÄgyqM_»
6╣B$╚ê]L53Éwó╡_0#ä¡)µ╒d∙∩><]₧¬oæ|1Öp░«>ökë>w┘ⁿO▌Æu╕¢ñ÷▄àSδ≥hìqj]├(ÿm▀╗│y┌φ╛gΣπamÆ-ù█Öƒà░≡└H505Wô3}≤σ..αJ┬╔╖∩▐îσ"═Öjj╠xô╚ÜJ4╗¼½░ä╢ö┤╗.g∩╪▀eJå#p[│N₧7ôó╔tªÜi[Ωª╨y╓┴É+ÖfM{α╩^└⌐e%E²=|âjæ▄ìkû;π┐L!X2▀┼l√.╬│∙xd╣▒gº
bùîJ@ └▐δ3Y╬7α~╠┘1Jê▀LU-╓π±@Θ╡* ▌
ö3ëÇâÇ«~z▓'2íαT@°Nα╕<÷Φ╓╝qGù┬ù/▒ü-:fG,7\╓▌≤b,pi9ε∩⌡█?à îwò,b\;~%┬:ñÖU;0─┴╠.q≡K£ùX▓φ±bn&âl╛ÿµ╛▌7╙Aφ╘r╡MUáïè⌠≈╬4τφ┘>εƒDäB√÷τ▓«╨m·y8╜P1!σ₧/@√Y╠U⌡fZ+K{╫╖3ù╣9╧ñƒ3╝Jº·╫»┘µ╟y╡ÉQÑM ▄▓╓┘ l╖φ¢T=╡y╕Åf7¡uà░ ∞α┬τE╨:Ejg▌Q∩╢╜íB£íQTábtâL▌êwÅ┘"d¿d≈åcô~q4Xü▄ ╓δ█	/æª╛"/∩═6kå°{fεa}ëïÆï)Kº.OÄzº+6ÿHwhùë¿≡εB╚≥∞bª
▀OU»qâ/σ¥Tç½9Qεq┬v¿¥3o╬RΦ:δ╬}}Γúⁿ╝P┼┐%├₧¼╡T═9δÅNU8°|IR├ÿ┘brúû╜BIC(┤Σç~  çù⌠ΦNⁿ°°─≤.α█╦▐z<*⌐<Öî^╧WΩ#┌//Y╓╟ù«╦╗æå╘╣─╥¥╬┘SnV∩ä½╢îB├5é÷i╢LèÜ
P¼ëöuc0φ╬Θ≥N₧n(1w┘f≈K¿SU7iù\╛+àÉtUí═y·Fw∩æS┐«à7ΩΓΘ≤≤S╖X&xfEΩ╔|9xûWπh4■√≤ôP╤Ü_σ/
2√ÅnÉyΓßHI┐}½Φ'Γ▄;6╡╫Q_│j7╧∙╫∩Ωu■-÷d«£c!▒▒°OD╪Ü0╩╖r├f═∙<ß▐mö≡├ⁿ?┤╖╖≈?═¢'ä         ε  x┌╡Ü[S╔╟ƒ¡O┴√ëΘSÖu∩7à@XAd├êÄ╣⌠8├\╪]>²╔¬bP÷S╒▌>hß/│*δƒ╖åW#╘âz8K▌J[Å·╞
M_╕>ê>╟╤Φ╒σMR/╛~¥╒≤┼⌠{%èo│Ií8 ¢■T╖@
τ╙Ö Θ+Σαz\⌠╨nqUJ,à(8ê p|│Q║·|U¢ú╧orÉR¼G"Θ╚╦¢I%+s±╤.╧orx

+òτ	&≤x¬2g½ÅW⌡4¥'JÄàπyÆ⌐<T»═'9╥Y<αà╓╥≤╙┘W(½[╖╕Γ|òâD^8
⌐Ö╔FbJ╕┬
⌠(├l:Ωó₧O½┴$τ1êRÜ┬┌αûe.;R⌠t< p£╞║6σƒo╧1αy<Q}>Γ·#yëXhΓcτ ò°▀■_²∙hQ]O'SÅ_L├?ï┘≈_æΘº?╚nï╦R¿R╔B¿p▓ ░%╣¬ù√çg╙├t,Q(^	 ╤Ñ■6YαJ.
pzmüⁿ-¿g
Éα
0Çk╘∩:é_├┴╩⌐5\w	GéπpßSÄ│b
7
ß├¢┼Å└▀ UªΣª@c^0░-í╒`qu$Å∩ß$¢hΓqK«!|╤┐I⌠Xò£$╞:2C▐ÆY¥,∩O∩/>%▒!µëx┼Ü!ty┌¢å,p%║B8∙pΣê]Z ╔∙╝√└KE≥╢╛n]▓▒┼l╥[(√∩T╪6├Q\¡uUù₧┐(j'I╫àéG╧╙Em╓ƒ/┐S1tq9╦R┘C▒║T╝≤ÖxåíΘ]M°1ε≤πìO¼ùta├ú≈ûíφ╞ä┴█╫τ╗╖_╥M░o▀1t▌ÿ≡╢~k▐M ▌'B╣Å£	▐╤Eα≥≤¬v⌐&╕"▐╨ì &█τ'GIá:jRSç▌=äù▐áG╦dk├äh~R╪nxü╥ò╥+Å≥/	▓7¬╟²╒⌡Æj≤·_  ôj=:fKöδè%¬òkÅIu·±░>88O║Vδ[τçöåè	▌`>≡φ°v╢▀ªt)¬ñWt╔π|@3æ«lïz~w9|╥┌┌)'²²┘|ïz#àLT░àXBè%█£tügÖp
xafÉ:zτÿΣ∙¡4V╖⌐]cR&╢¿&Sí(B╥öαLBΩq}≈ß²▐~&╒r¿└d■\KU_╢w▐½╦╜¿$WÖl▌a╛╣┐║x=┤/┐T╛ⁿÑ█╒~¿Fp┴ñ∞■¼?┬⌐?ç5╝i
÷d:⌠|<G(û@⌐_DÅ%ô║ΦO	E$╦ΣjZù║w∩?Γ²Q╥úo» Γ1+&mw╣εÖ■9╫Që»ß!╫I╫	║║4█º·°uÆ≈ó╝@mé≈Ü)▐αM_φ▀∞╪?▀┤ûJNç/S╨E²Γsó∞'╜Éh<Ñ>ZaùA╢	Nôt·4éLëε½ÄM&X_╤Apƒèò.e│∙t┤.╩Év╒╛╓1╘╬R╞╫eÖR
░.¬FÉ:8╔icl9ª╥l▒∞Å╟Åa╜┘G┘πäT>▓H3╣ù+9Sª!½ú┘ü;∙π4M
&▄¬ª2&∙CYδ~-m╧q⌐z─░g¥╜▒[n─└ºé▄δ≡┬ΦÉ7$2σr╧@≤üôú║εIitO║íφ⌡╞⌡┤½ç#.jk·├dsÇr'5╤(é9éi₧kN╪è%≥ªBíúNJªíid"M(╞ñb:]╬å½┼rzC╝î═&Qq¿▐╡Ñ╨à└δÜi╤½▒!IS-2zkÿûìƒ╪█ΘÑug6mⁿ4╩»8\!DD[ªUÅ!
ªDÜDj"Θÿ╓M░Θ█║╚ÑµXy«q┴]┼ÖN│éª╡j½3εⁿjxP
L█6░
ε"p┐Z╩5╤e█ºd$å∙╜╨±Dæ▐╞╔gJΘGÿ▀╖R·s■h╙Θε┐ééXX(┴6<Qæâö║P6J2ô╤ª½e5╗.W≤:¬|ΩMbXΦ░Y&¼bF6┼«e╖:,^≤ï╜dóτ.µ5ÑÖQ¡M°╘s5o╙M░~'1▐╖aF╖╨├ñçδ╢8=\Θ╤s╦îié
_$3}╒Nq&ú<9flµÅΘdUh┐°ß⌠Bsf:Y2╛┤kd_;SUü─┘+╡Hûw┘"Ñ[áA=⌠I÷╖φù■├pAV@2ï]ⁿ│Pi┼·╠┼∩:≤gßÄ»gVv║µSö¬╘Kp ]É▒δπV¥LRá╬¼º Vw:╪ºn-V■╕═oÿl0ü▓╡*b½èdüφ~Γö`ü.P┘çëôuìà╝:;Ö▐,NÄ╙ñ5v⌐T▄*Ñÿπ¡
çju0╛Ö|$≥┴'╨O█┬{╙╚4⌡ÖΦ['¬⌐úL┴\n}]àïï╒ε≥,|ⁿ»⌠╨B¥¡%só┴▄'5[C╪≡0α[kB*µ▓{─a^±¥╗╜▌╔~B╞π²⌠╟k╓T¡ÖS
¿╣┤ÿ-┤aN╖¿H*■┴£╗ôr┬╓╧½⌐úΩô█á┌2gZ⌡ñ╒ε╗kuSf≥1è╖v╠┘vⁿCyq╡╗w₧╔W1c╬£k3
¿½┘ë╜¢dΓM¿ì0·═▄P[_ⁿ╬▄=╒▀Γ┬<tñp1s$64y\fovsvÿε?ccEfa1¢╙]z¿±▀█q*èΓ1KbfTd≤σσ≡║«■╡!ëSƒƒ?╣·6è- ╕]╕ΓαF[╢eï\╢úú	«Z;^
F√wºf?╤ê░ÑÆÜƒ°─í[ƒ@%╢√c°p¢kä	:g,a±#ç%æ²╫!Σ~╝ ⌡║mG«∞√δ7▀»╟╣Φ`üσdüki┴█▀═╤4πBè8δ╡ñs└█å@6▄D≈IΦ Ü*NJëµí¬▄""IΣr>πZòµê]D√-4&Ä╥,⌐t┤Ö¼▀}▒≈╦?ô>∙▓~α!U< R╜îo°_▓!±âONADôµAs═{z°â═╖#:|l╗1k╪╫é1÷?╪╔»g         
   x┌ï╤πΓΓ ┼ ⌐         ú   x┌m═▒
┬0àß9yèδΣ╓F½ Ä¡h]T¿ââPb╣$╤╘+I¬°÷åΓbq;ⁿ├w2fZ⌐╨ºÜZL5:¬/¬╬ÆδC▒╛áö╞∙≡╢╚
ì═
╢÷]1Kì┤Ü|X.ä|÷ùÖ÷Ln;∞X╤}áÉYà╣%çh╡∙Åf┌(╒¡╗u8⌡bë╓π
▓M║ºi╨ñ╘;?'£≤Ω╬Nq         -   x┌3Σt╠M-╩LN╠S═╦,K-*╬,⌐T╚OSpJ═,*-ßè╤πΓΓ ±╕∩            x┌3Σè╤πΓΓ Z Σ      !      x┌3σ4Σ44µ2RF╞\1z\\\ ╖w         _   x┌3Σ⌠H═╔╔WΣ,╔╚,V óDàÆ╘Γà▄─╠N+─J╦/J╔J╠K╧wHq⌡Æ≤s9
╣î8=29CH╫h▒ö3<5(É¬PÆ»££ÿS@H_î Es<T         H   x┌3ΣI-.Q≡M╠╠ß⌠H═╔╔τ,≥Ssüⁿ┤ⁿóö¼─╝⌠|çtW/9?ù╙É╦êT
╞ñj0ü*iâaBzb⌠╕╕╕ fWFL      #      x┌3Σè╤πΓΓ Z Σ      %   /   x┌┼┴
  ▒77R╘╩.∞?┴+åFótà╩5Zεáφ¿ ╔¥└ñü         └   x┌e╬Mè┬@åßuσuφDEf=3ΓB▌¿;!⌠$Eºå■	]0╖7-óáP╦ùτ½÷∞Åi┤∞
~k⌐I<£:£Nú╦à<èµU£=]íRP*`º
╔╝ÅíÜ$≤Äb¿ L]╬■{+HE[═Å}╘#ⁿÉ░±╘b
('├Q║v9≤D¡└^[éà╩∩_J=Θ∞╪qÜ╕▀û≤oÅò-Y`C.3╒.çå¥⌐Wwh=AùYQ7ñ
Zµ      '   >   x┌5╩╣
└0└Ü╞i┼╧.┘é╥╜Ω╘└vb""▒α
j├O▐Φ£¼·╪╙_#y &uh      )   G   x┌%╩┴└0┴7*&cAlp/Θ┐Ä`δ╖ssina£(c│▒]8öñZ╦╒
╡
╛W>└)\≈;J5K
|Ç┌÷      +   ,   x┌3Σî╠/U.M╬µt╔L╔S/Q≡╔╠NU≡,ß4Σ44µè╤πΓΓ └═	,      ≈
   φ   x┌MÅOO├0┼╧εºp/pÖP7hwτƒ ëë╖]╝╓▌"┌drh┐=nèF/V^⌠ⁿ{╧╖≡BFΩα-·Çô≡a∞▐I╟║Ç²Jh│;╕'oΩ62{ägε'τªP[Ñ╞╣ïπ╒_	ÄP¡½σ▐
╔6╪:╫α°¢àÄ¼ZÉm`	dl»»>¡±<@Y└ª╘êÉU░sóÖsB¢₧µ3óc∩1£ΘÅ{S3║6}≈c≤σ}[ÑnS╒╣>
gQ<╕^Gæäs|
╫~Ö@6/x┬C1┴]z»ºÇJ÷7Yû²It!      ⌡
   █   x┌eÄ┴N─0D╧φWÿ√ªHH└Ç«H{@H½lΩM╜█&`;¡≥≈$æα 'Åe╧╝╣∩÷ûX4╧|≈┤"g¥èä8ánWêg8s\`╠XÄ;pëτ&D┘ÆƒC[Q▌0-╓ú▄
≥J«ê-.6ÿìt2s▐Lày⌠_|w╕∞Y} ╨j└╚╣╓xMó╡ ├╔
9¿∩α8∩αô▄l╚αΓr·⌐╣┘á7 ÿ╒T≥Éì╨<┼ä¬XΣêf%▄⌡▒Q]╥▀∙7DëDc├h*≤°Ä/oçφ╣∙?å╛∩┐xùs¡      .      x┌3Σ4│Σè╤πΓΓ Ç\      0   
   x┌ï╤πΓΓ ┼ ⌐      2   
   x┌ï╤πΓΓ ┼ ⌐      4   
   x┌ï╤πΓΓ ┼ ⌐      8   
   x┌ï╤πΓΓ ┼ ⌐      6   
   x┌ï╤πΓΓ ┼ ⌐      ∙
   ╘   x┌m╨╜é0α∙÷)Ü8â╖
╗!:¿âÄ&ñΩ5 ╨τ╖╔▌Ü≤σ£j╪q[≥Sg│î/4ê86Jwpº╠~è.|╒ö├Z└▐kT┌α╩Ça╬╘v╝⌡Q╙'EÇ²┴│┤9╡K ▓¼⌐i½w*¥π		ò#H│╢T≈MN H°o2≥n╢	δ╖úΓ	u9░x░·6╪╖QbÆNq≤▌&∙╬+æéc≈áfä5RΣdôTΘ5OòΘ9C 
ë¿\┬╠├╟Dfn═%dî² úïrg      √
   >   x┌ë╔ 1├▐ªÿ╠BÄ^╢ :bxI▓Θ─D▌┼-▓[+ûÿ8▌K¼πv▒■FI|αöⁿ├╠ ¢D      :   =   x┌3Σ⌠HU/Vp╧╧Oß⌠T≡╔╠NU≡╚╠σ4σ4ß44µ2╩µΣΣWqåºµpàìî╣b⌠╕╕╕ ùº
6      ╪   =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            @           1262    17963    scalp    DATABASE     ò   CREATE DATABASE scalp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE scalp;
             postgres    false            ╟            1259    17977    about_about    TABLE     x   CREATE TABLE public.about_about (
    id integer NOT NULL,
    info text NOT NULL,
    operating_hours text NOT NULL
);
    DROP TABLE public.about_about;
       public         postgres    false            ╞            1259    17975    about_about_id_seq    SEQUENCE     è   CREATE SEQUENCE public.about_about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.about_about_id_seq;
       public       postgres    false    199            A           0    0    about_about_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.about_about_id_seq OWNED BY public.about_about.id;
            public       postgres    false    198            ╤            1259    18029    about_aboutpicture    TABLE     o   CREATE TABLE public.about_aboutpicture (
    id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 &   DROP TABLE public.about_aboutpicture;
       public         postgres    false            ╨            1259    18027    about_aboutpicture_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.about_aboutpicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_aboutpicture_id_seq;
       public       postgres    false    209            B           0    0    about_aboutpicture_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.about_aboutpicture_id_seq OWNED BY public.about_aboutpicture.id;
            public       postgres    false    208            ╔            1259    17988    about_award    TABLE     ░   CREATE TABLE public.about_award (
    id integer NOT NULL,
    title character varying(45) NOT NULL,
    description text NOT NULL,
    logo character varying(100) NOT NULL
);
    DROP TABLE public.about_award;
       public         postgres    false            ╚            1259    17986    about_award_id_seq    SEQUENCE     è   CREATE SEQUENCE public.about_award_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.about_award_id_seq;
       public       postgres    false    201            C           0    0    about_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.about_award_id_seq OWNED BY public.about_award.id;
            public       postgres    false    200            ╦            1259    17996    about_contactinformation    TABLE     ô   CREATE TABLE public.about_contactinformation (
    id integer NOT NULL,
    contact_type character varying(20) NOT NULL,
    info text NOT NULL
);
 ,   DROP TABLE public.about_contactinformation;
       public         postgres    false            ╩            1259    17994    about_contactinformation_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.about_contactinformation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.about_contactinformation_id_seq;
       public       postgres    false    203            D           0    0    about_contactinformation_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.about_contactinformation_id_seq OWNED BY public.about_contactinformation.id;
            public       postgres    false    202            ═            1259    18004    about_partnership    TABLE     «   CREATE TABLE public.about_partnership (
    id integer NOT NULL,
    company_name character varying(45) NOT NULL,
    about text,
    logo character varying(100) NOT NULL
);
 %   DROP TABLE public.about_partnership;
       public         postgres    false            ╠            1259    18002    about_partnership_id_seq    SEQUENCE     É   CREATE SEQUENCE public.about_partnership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.about_partnership_id_seq;
       public       postgres    false    205            E           0    0    about_partnership_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.about_partnership_id_seq OWNED BY public.about_partnership.id;
            public       postgres    false    204            ╧            1259    18012    about_salonpicture    TABLE     ö   CREATE TABLE public.about_salonpicture (
    id integer NOT NULL,
    caption character varying(45),
    picture character varying(100) NOT NULL
);
 &   DROP TABLE public.about_salonpicture;
       public         postgres    false            ╬            1259    18010    about_salonpicture_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.about_salonpicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_salonpicture_id_seq;
       public       postgres    false    207            F           0    0    about_salonpicture_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.about_salonpicture_id_seq OWNED BY public.about_salonpicture.id;
            public       postgres    false    206            φ            1259    18312    appointment_appointment    TABLE     ó  CREATE TABLE public.appointment_appointment (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    notes text NOT NULL,
    customer_id integer NOT NULL,
    service_id integer NOT NULL,
    staff_id integer NOT NULL,
    canceled boolean NOT NULL,
    requested_cancellation boolean NOT NULL,
    requesting_user_type character varying(10),
    rejected_requested_cancellation boolean NOT NULL
);
 +   DROP TABLE public.appointment_appointment;
       public         postgres    false            ∞            1259    18310    appointment_appointment_id_seq    SEQUENCE     û   CREATE SEQUENCE public.appointment_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointment_appointment_id_seq;
       public       postgres    false    237            G           0    0    appointment_appointment_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointment_appointment_id_seq OWNED BY public.appointment_appointment.id;
            public       postgres    false    236            ∩            1259    18357    appointment_appointmenttime    TABLE     ₧   CREATE TABLE public.appointment_appointmenttime (
    id integer NOT NULL,
    length integer NOT NULL,
    last_minute_cancellation_time integer NOT NULL
);
 /   DROP TABLE public.appointment_appointmenttime;
       public         postgres    false            ε            1259    18355 "   appointment_appointmenttime_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.appointment_appointmenttime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.appointment_appointmenttime_id_seq;
       public       postgres    false    239            H           0    0 "   appointment_appointmenttime_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.appointment_appointmenttime_id_seq OWNED BY public.appointment_appointmenttime.id;
            public       postgres    false    238            ╫            1259    18055 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            ╓            1259    18053    auth_group_id_seq    SEQUENCE     ë   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    215            I           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    214            ┘            1259    18065    auth_group_permissions    TABLE     ï   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            ╪            1259    18063    auth_group_permissions_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    217            J           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    216            ╒            1259    18047    auth_permission    TABLE     ┐   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            ╘            1259    18045    auth_permission_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    213            K           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    212            █            1259    18073 	   auth_user    TABLE     ▐  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            ▌            1259    18083    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            ▄            1259    18081    auth_user_groups_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    221            L           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    220            ┌            1259    18071    auth_user_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    219            M           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    218            ▀            1259    18091    auth_user_user_permissions    TABLE     Ä   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            ▐            1259    18089 !   auth_user_user_permissions_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    223            N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    222            ±            1259    18371    blog_article    TABLE     ä   CREATE TABLE public.blog_article (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    content text NOT NULL
);
     DROP TABLE public.blog_article;
       public         postgres    false            ≡            1259    18369    blog_article_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.blog_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_article_id_seq;
       public       postgres    false    241            O           0    0    blog_article_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_article_id_seq OWNED BY public.blog_article.id;
            public       postgres    false    240            ≤            1259    18382    blog_articleimage    TABLE     │   CREATE TABLE public.blog_articleimage (
    id integer NOT NULL,
    caption character varying(500) NOT NULL,
    image character varying(100) NOT NULL,
    article_id integer
);
 %   DROP TABLE public.blog_articleimage;
       public         postgres    false            ≥            1259    18380    blog_articleimage_id_seq    SEQUENCE     É   CREATE SEQUENCE public.blog_articleimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_articleimage_id_seq;
       public       postgres    false    243            P           0    0    blog_articleimage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_articleimage_id_seq OWNED BY public.blog_articleimage.id;
            public       postgres    false    242            ≈            1259    18446 	   cart_cart    TABLE     {   CREATE TABLE public.cart_cart (
    id integer NOT NULL,
    total_price integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.cart_cart;
       public         postgres    false            ÷            1259    18444    cart_cart_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       postgres    false    247            Q           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;
            public       postgres    false    246            ∙            1259    18456    cart_cartproduct    TABLE     ù   CREATE TABLE public.cart_cartproduct (
    id integer NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer
);
 $   DROP TABLE public.cart_cartproduct;
       public         postgres    false            °            1259    18454    cart_cart_product_id_seq    SEQUENCE     É   CREATE SEQUENCE public.cart_cart_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cart_cart_product_id_seq;
       public       postgres    false    249            R           0    0    cart_cart_product_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.cart_cart_product_id_seq OWNED BY public.cart_cartproduct.id;
            public       postgres    false    248            √            1259    18483    cart_cartproductinfo    TABLE     ñ   CREATE TABLE public.cart_cartproductinfo (
    id integer NOT NULL,
    quantity integer NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL
);
 (   DROP TABLE public.cart_cartproductinfo;
       public         postgres    false            ·            1259    18481    cart_cartproductinfo_id_seq    SEQUENCE     ô   CREATE SEQUENCE public.cart_cartproductinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cart_cartproductinfo_id_seq;
       public       postgres    false    251            S           0    0    cart_cartproductinfo_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cart_cartproductinfo_id_seq OWNED BY public.cart_cartproductinfo.id;
            public       postgres    false    250            δ            1259    18267    customer_customerprofile    TABLE     X  CREATE TABLE public.customer_customerprofile (
    id integer NOT NULL,
    gender character varying(10) NOT NULL,
    city character varying(45) NOT NULL,
    country character varying(45) NOT NULL,
    birthdate date,
    phone_number character varying(15) NOT NULL,
    user_id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 ,   DROP TABLE public.customer_customerprofile;
       public         postgres    false            Ω            1259    18265    customer_customerprofile_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.customer_customerprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.customer_customerprofile_id_seq;
       public       postgres    false    235            T           0    0    customer_customerprofile_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.customer_customerprofile_id_seq OWNED BY public.customer_customerprofile.id;
            public       postgres    false    234            ²            1259    18504    customer_loggedincustomers    TABLE     i   CREATE TABLE public.customer_loggedincustomers (
    id integer NOT NULL,
    number integer NOT NULL
);
 .   DROP TABLE public.customer_loggedincustomers;
       public         postgres    false            ⁿ            1259    18502 !   customer_loggedincustomers_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.customer_loggedincustomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.customer_loggedincustomers_id_seq;
       public       postgres    false    253            U           0    0 !   customer_loggedincustomers_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.customer_loggedincustomers_id_seq OWNED BY public.customer_loggedincustomers.id;
            public       postgres    false    252            ß            1259    18151    django_admin_log    TABLE     ê  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            α            1259    18149    django_admin_log_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    225            V           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    224            ╙            1259    18037    django_content_type    TABLE     ƒ   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            ╥            1259    18035    django_content_type_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    211            W           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    210            ┼            1259    17966    django_migrations    TABLE     ┼   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            ─            1259    17964    django_migrations_id_seq    SEQUENCE     É   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            X           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196                       1259    18847    django_session    TABLE     ¬   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false                         1259    18512    easy_thumbnails_source    TABLE     ╙   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false            ■            1259    18510    easy_thumbnails_source_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    255            Y           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    254                       1259    18520    easy_thumbnails_thumbnail    TABLE     ÷   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false                        1259    18518     easy_thumbnails_thumbnail_id_seq    SEQUENCE     ÿ   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    257            Z           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    256                       1259    18546 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false                       1259    18544 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     ó   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    259            [           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    258                       1259    18563    main_homepicture    TABLE     ⌠   CREATE TABLE public.main_homepicture (
    id integer NOT NULL,
    photo character varying(100) NOT NULL,
    caption character varying(50) NOT NULL,
    url_text character varying(50) NOT NULL,
    url_link character varying(500) NOT NULL
);
 $   DROP TABLE public.main_homepicture;
       public         postgres    false                       1259    18561    main_homepicture_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.main_homepicture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_homepicture_id_seq;
       public       postgres    false    261            \           0    0    main_homepicture_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_homepicture_id_seq OWNED BY public.main_homepicture.id;
            public       postgres    false    260                       1259    18574    main_maplocation    TABLE     u   CREATE TABLE public.main_maplocation (
    id integer NOT NULL,
    location_text character varying(100) NOT NULL
);
 $   DROP TABLE public.main_maplocation;
       public         postgres    false                       1259    18572    main_maplocation_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.main_maplocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_maplocation_id_seq;
       public       postgres    false    263            ]           0    0    main_maplocation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_maplocation_id_seq OWNED BY public.main_maplocation.id;
            public       postgres    false    262            
           1259    18648     newsletter_customerrecipientlist    TABLE     R   CREATE TABLE public.newsletter_customerrecipientlist (
    id integer NOT NULL
);
 4   DROP TABLE public.newsletter_customerrecipientlist;
       public         postgres    false                       1259    18646 '   newsletter_customerrecipientlist_id_seq    SEQUENCE     ƒ   CREATE SEQUENCE public.newsletter_customerrecipientlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.newsletter_customerrecipientlist_id_seq;
       public       postgres    false    269            ^           0    0 '   newsletter_customerrecipientlist_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.newsletter_customerrecipientlist_id_seq OWNED BY public.newsletter_customerrecipientlist.id;
            public       postgres    false    268                       1259    18656 %   newsletter_customerrecipientlist_user    TABLE     »   CREATE TABLE public.newsletter_customerrecipientlist_user (
    id integer NOT NULL,
    customerrecipientlist_id integer NOT NULL,
    customerprofile_id integer NOT NULL
);
 9   DROP TABLE public.newsletter_customerrecipientlist_user;
       public         postgres    false                       1259    18654 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE     «   CREATE SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq;
       public       postgres    false    271            _           0    0 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE OWNED BY     ç   ALTER SEQUENCE public.newsletter_customerrecipientlist_recipient_list_id_seq OWNED BY public.newsletter_customerrecipientlist_user.id;
            public       postgres    false    270            	           1259    18582    newsletter_newsletter    TABLE     τ   CREATE TABLE public.newsletter_newsletter (
    id integer NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    email_from character varying(200) NOT NULL,
    recipient_list_id integer NOT NULL
);
 )   DROP TABLE public.newsletter_newsletter;
       public         postgres    false                       1259    18580    newsletter_newsletter_id_seq    SEQUENCE     ö   CREATE SEQUENCE public.newsletter_newsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.newsletter_newsletter_id_seq;
       public       postgres    false    265            `           0    0    newsletter_newsletter_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.newsletter_newsletter_id_seq OWNED BY public.newsletter_newsletter.id;
            public       postgres    false    264                       1259    18601    newsletter_staffnewsletter    TABLE     ∞   CREATE TABLE public.newsletter_staffnewsletter (
    id integer NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    email_from character varying(200) NOT NULL,
    recipient_list_id integer NOT NULL
);
 .   DROP TABLE public.newsletter_staffnewsletter;
       public         postgres    false            
           1259    18599 !   newsletter_staffnewsletter_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.newsletter_staffnewsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.newsletter_staffnewsletter_id_seq;
       public       postgres    false    267            a           0    0 !   newsletter_staffnewsletter_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.newsletter_staffnewsletter_id_seq OWNED BY public.newsletter_staffnewsletter.id;
            public       postgres    false    266                       1259    18664    newsletter_staffrecipientlist    TABLE     O   CREATE TABLE public.newsletter_staffrecipientlist (
    id integer NOT NULL
);
 1   DROP TABLE public.newsletter_staffrecipientlist;
       public         postgres    false                       1259    18662 $   newsletter_staffrecipientlist_id_seq    SEQUENCE     £   CREATE SEQUENCE public.newsletter_staffrecipientlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.newsletter_staffrecipientlist_id_seq;
       public       postgres    false    273            b           0    0 $   newsletter_staffrecipientlist_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.newsletter_staffrecipientlist_id_seq OWNED BY public.newsletter_staffrecipientlist.id;
            public       postgres    false    272                       1259    18672 "   newsletter_staffrecipientlist_user    TABLE     ª   CREATE TABLE public.newsletter_staffrecipientlist_user (
    id integer NOT NULL,
    staffrecipientlist_id integer NOT NULL,
    staffprofile_id integer NOT NULL
);
 6   DROP TABLE public.newsletter_staffrecipientlist_user;
       public         postgres    false                       1259    18670 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE     ½   CREATE SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq;
       public       postgres    false    275            c           0    0 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE OWNED BY     ü   ALTER SEQUENCE public.newsletter_staffrecipientlist_recipient_list_id_seq OWNED BY public.newsletter_staffrecipientlist_user.id;
            public       postgres    false    274            ⌡            1259    18427    product_product    TABLE     ^  CREATE TABLE public.product_product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    gender character varying(10) NOT NULL,
    price integer NOT NULL,
    discounted_price integer,
    photo character varying(100) NOT NULL,
    service_type_id integer NOT NULL,
    in_stock boolean NOT NULL
);
 #   DROP TABLE public.product_product;
       public         postgres    false            ⌠            1259    18425    product_product_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public       postgres    false    245            d           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;
            public       postgres    false    244                       1259    18792    receipt_receipt    TABLE     ü   CREATE TABLE public.receipt_receipt (
    id integer NOT NULL,
    total_price integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.receipt_receipt;
       public         postgres    false                       1259    18790    receipt_receipt_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.receipt_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.receipt_receipt_id_seq;
       public       postgres    false    277            e           0    0    receipt_receipt_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.receipt_receipt_id_seq OWNED BY public.receipt_receipt.id;
            public       postgres    false    276                       1259    18800    receipt_receiptproduct    TABLE     ⌐   CREATE TABLE public.receipt_receiptproduct (
    id integer NOT NULL,
    quantity integer NOT NULL,
    product_id integer NOT NULL,
    receipt_id integer NOT NULL
);
 *   DROP TABLE public.receipt_receiptproduct;
       public         postgres    false                       1259    18798    receipt_receiptproduct_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.receipt_receiptproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.receipt_receiptproduct_id_seq;
       public       postgres    false    279            f           0    0    receipt_receiptproduct_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.receipt_receiptproduct_id_seq OWNED BY public.receipt_receiptproduct.id;
            public       postgres    false    278                       1259    18831 
   review_review    TABLE     ╢   CREATE TABLE public.review_review (
    id integer NOT NULL,
    summary character varying(200) NOT NULL,
    info text,
    rating integer NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.review_review;
       public         postgres    false                       1259    18829    review_review_id_seq    SEQUENCE     î   CREATE SEQUENCE public.review_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.review_review_id_seq;
       public       postgres    false    281            g           0    0    review_review_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.review_review_id_seq OWNED BY public.review_review.id;
            public       postgres    false    280            σ            1259    18186    service_service    TABLE     3  CREATE TABLE public.service_service (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    gender character varying(10) NOT NULL,
    price integer NOT NULL,
    discounted_price integer,
    service_type_id integer NOT NULL,
    featured boolean NOT NULL
);
 #   DROP TABLE public.service_service;
       public         postgres    false            Σ            1259    18184    service_service_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public       postgres    false    229            h           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service_service.id;
            public       postgres    false    228            π            1259    18175    service_servicetype    TABLE     ╖   CREATE TABLE public.service_servicetype (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    icon character varying(100) NOT NULL
);
 '   DROP TABLE public.service_servicetype;
       public         postgres    false            Γ            1259    18173    service_servicetype_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.service_servicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.service_servicetype_id_seq;
       public       postgres    false    227            i           0    0    service_servicetype_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.service_servicetype_id_seq OWNED BY public.service_servicetype.id;
            public       postgres    false    226                       1259    18859    site_admin_adminprofile    TABLE     g   CREATE TABLE public.site_admin_adminprofile (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public.site_admin_adminprofile;
       public         postgres    false                       1259    18857    site_admin_adminprofile_id_seq    SEQUENCE     û   CREATE SEQUENCE public.site_admin_adminprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.site_admin_adminprofile_id_seq;
       public       postgres    false    284            j           0    0    site_admin_adminprofile_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.site_admin_adminprofile_id_seq OWNED BY public.site_admin_adminprofile.id;
            public       postgres    false    283                       1259    18879    social_auth_association    TABLE     <  CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);
 +   DROP TABLE public.social_auth_association;
       public         postgres    false                       1259    18877    social_auth_association_id_seq    SEQUENCE     û   CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.social_auth_association_id_seq;
       public       postgres    false    286            k           0    0    social_auth_association_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;
            public       postgres    false    285                        1259    18890    social_auth_code    TABLE     Φ   CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 $   DROP TABLE public.social_auth_code;
       public         postgres    false                       1259    18888    social_auth_code_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.social_auth_code_id_seq;
       public       postgres    false    288            l           0    0    social_auth_code_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;
            public       postgres    false    287            "           1259    18898    social_auth_nonce    TABLE     ╛   CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);
 %   DROP TABLE public.social_auth_nonce;
       public         postgres    false            !           1259    18896    social_auth_nonce_id_seq    SEQUENCE     É   CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.social_auth_nonce_id_seq;
       public       postgres    false    290            m           0    0    social_auth_nonce_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;
            public       postgres    false    289            &           1259    18940    social_auth_partial    TABLE     T  CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);
 '   DROP TABLE public.social_auth_partial;
       public         postgres    false            %           1259    18938    social_auth_partial_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.social_auth_partial_id_seq;
       public       postgres    false    294            n           0    0    social_auth_partial_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;
            public       postgres    false    293            $           1259    18906    social_auth_usersocialauth    TABLE     ▐   CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 .   DROP TABLE public.social_auth_usersocialauth;
       public         postgres    false            #           1259    18904 !   social_auth_usersocialauth_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.social_auth_usersocialauth_id_seq;
       public       postgres    false    292            o           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;
            public       postgres    false    291            τ            1259    18204    staff_staffprofile    TABLE     2  CREATE TABLE public.staff_staffprofile (
    id integer NOT NULL,
    about text NOT NULL,
    birthdate date,
    photo character varying(100) NOT NULL,
    user_id integer NOT NULL,
    gender character varying(10) NOT NULL,
    phone_number character varying(20) NOT NULL,
    average_rating integer
);
 &   DROP TABLE public.staff_staffprofile;
       public         postgres    false            µ            1259    18202    staff_staffprofile_id_seq    SEQUENCE     æ   CREATE SEQUENCE public.staff_staffprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_staffprofile_id_seq;
       public       postgres    false    231            p           0    0    staff_staffprofile_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staffprofile_id_seq OWNED BY public.staff_staffprofile.id;
            public       postgres    false    230            Θ            1259    18217    staff_staffprofile_service_type    TABLE     £   CREATE TABLE public.staff_staffprofile_service_type (
    id integer NOT NULL,
    staffprofile_id integer NOT NULL,
    servicetype_id integer NOT NULL
);
 3   DROP TABLE public.staff_staffprofile_service_type;
       public         postgres    false            Φ            1259    18215 &   staff_staffprofile_service_type_id_seq    SEQUENCE     ₧   CREATE SEQUENCE public.staff_staffprofile_service_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.staff_staffprofile_service_type_id_seq;
       public       postgres    false    233            q           0    0 &   staff_staffprofile_service_type_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.staff_staffprofile_service_type_id_seq OWNED BY public.staff_staffprofile_service_type.id;
            public       postgres    false    232            (           1259    18958    testimonial_testimonial    TABLE     ▀   CREATE TABLE public.testimonial_testimonial (
    id integer NOT NULL,
    summary character varying(200) NOT NULL,
    info text,
    rating integer NOT NULL,
    staff_id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public.testimonial_testimonial;
       public         postgres    false            '           1259    18956    testimonial_testimonial_id_seq    SEQUENCE     û   CREATE SEQUENCE public.testimonial_testimonial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.testimonial_testimonial_id_seq;
       public       postgres    false    296            r           0    0    testimonial_testimonial_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.testimonial_testimonial_id_seq OWNED BY public.testimonial_testimonial.id;
            public       postgres    false    295            9	           2604    17980    about_about id    DEFAULT     p   ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_about_id_seq'::regclass);
 =   ALTER TABLE public.about_about ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            >	           2604    18032    about_aboutpicture id    DEFAULT     ~   ALTER TABLE ONLY public.about_aboutpicture ALTER COLUMN id SET DEFAULT nextval('public.about_aboutpicture_id_seq'::regclass);
 D   ALTER TABLE public.about_aboutpicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            :	           2604    17991    about_award id    DEFAULT     p   ALTER TABLE ONLY public.about_award ALTER COLUMN id SET DEFAULT nextval('public.about_award_id_seq'::regclass);
 =   ALTER TABLE public.about_award ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            ;	           2604    17999    about_contactinformation id    DEFAULT     è   ALTER TABLE ONLY public.about_contactinformation ALTER COLUMN id SET DEFAULT nextval('public.about_contactinformation_id_seq'::regclass);
 J   ALTER TABLE public.about_contactinformation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            <	           2604    18007    about_partnership id    DEFAULT     |   ALTER TABLE ONLY public.about_partnership ALTER COLUMN id SET DEFAULT nextval('public.about_partnership_id_seq'::regclass);
 C   ALTER TABLE public.about_partnership ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            =	           2604    18015    about_salonpicture id    DEFAULT     ~   ALTER TABLE ONLY public.about_salonpicture ALTER COLUMN id SET DEFAULT nextval('public.about_salonpicture_id_seq'::regclass);
 D   ALTER TABLE public.about_salonpicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            M	           2604    18315    appointment_appointment id    DEFAULT     ê   ALTER TABLE ONLY public.appointment_appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_appointment_id_seq'::regclass);
 I   ALTER TABLE public.appointment_appointment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            N	           2604    18360    appointment_appointmenttime id    DEFAULT     É   ALTER TABLE ONLY public.appointment_appointmenttime ALTER COLUMN id SET DEFAULT nextval('public.appointment_appointmenttime_id_seq'::regclass);
 M   ALTER TABLE public.appointment_appointmenttime ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            A	           2604    18058 
   auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            B	           2604    18068    auth_group_permissions id    DEFAULT     å   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            @	           2604    18050    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            C	           2604    18076    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            D	           2604    18086    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            E	           2604    18094    auth_user_user_permissions id    DEFAULT     Ä   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            O	           2604    18374    blog_article id    DEFAULT     r   ALTER TABLE ONLY public.blog_article ALTER COLUMN id SET DEFAULT nextval('public.blog_article_id_seq'::regclass);
 >   ALTER TABLE public.blog_article ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240    241            P	           2604    18385    blog_articleimage id    DEFAULT     |   ALTER TABLE ONLY public.blog_articleimage ALTER COLUMN id SET DEFAULT nextval('public.blog_articleimage_id_seq'::regclass);
 C   ALTER TABLE public.blog_articleimage ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            R	           2604    18449    cart_cart id    DEFAULT     l   ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart_cart ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            S	           2604    18459    cart_cartproduct id    DEFAULT     {   ALTER TABLE ONLY public.cart_cartproduct ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_product_id_seq'::regclass);
 B   ALTER TABLE public.cart_cartproduct ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            T	           2604    18486    cart_cartproductinfo id    DEFAULT     é   ALTER TABLE ONLY public.cart_cartproductinfo ALTER COLUMN id SET DEFAULT nextval('public.cart_cartproductinfo_id_seq'::regclass);
 F   ALTER TABLE public.cart_cartproductinfo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            L	           2604    18270    customer_customerprofile id    DEFAULT     è   ALTER TABLE ONLY public.customer_customerprofile ALTER COLUMN id SET DEFAULT nextval('public.customer_customerprofile_id_seq'::regclass);
 J   ALTER TABLE public.customer_customerprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            U	           2604    18507    customer_loggedincustomers id    DEFAULT     Ä   ALTER TABLE ONLY public.customer_loggedincustomers ALTER COLUMN id SET DEFAULT nextval('public.customer_loggedincustomers_id_seq'::regclass);
 L   ALTER TABLE public.customer_loggedincustomers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            F	           2604    18154    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            ?	           2604    18040    django_content_type id    DEFAULT     Ç   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            8	           2604    17969    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            V	           2604    18515    easy_thumbnails_source id    DEFAULT     å   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            W	           2604    18523    easy_thumbnails_thumbnail id    DEFAULT     î   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            X	           2604    18549 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     á   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    259    259            [	           2604    18566    main_homepicture id    DEFAULT     z   ALTER TABLE ONLY public.main_homepicture ALTER COLUMN id SET DEFAULT nextval('public.main_homepicture_id_seq'::regclass);
 B   ALTER TABLE public.main_homepicture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    260    261    261            \	           2604    18577    main_maplocation id    DEFAULT     z   ALTER TABLE ONLY public.main_maplocation ALTER COLUMN id SET DEFAULT nextval('public.main_maplocation_id_seq'::regclass);
 B   ALTER TABLE public.main_maplocation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    262    263    263            _	           2604    18651 #   newsletter_customerrecipientlist id    DEFAULT     Ü   ALTER TABLE ONLY public.newsletter_customerrecipientlist ALTER COLUMN id SET DEFAULT nextval('public.newsletter_customerrecipientlist_id_seq'::regclass);
 R   ALTER TABLE public.newsletter_customerrecipientlist ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    269    269            `	           2604    18659 (   newsletter_customerrecipientlist_user id    DEFAULT     «   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user ALTER COLUMN id SET DEFAULT nextval('public.newsletter_customerrecipientlist_recipient_list_id_seq'::regclass);
 W   ALTER TABLE public.newsletter_customerrecipientlist_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    271    271            ]	           2604    18585    newsletter_newsletter id    DEFAULT     ä   ALTER TABLE ONLY public.newsletter_newsletter ALTER COLUMN id SET DEFAULT nextval('public.newsletter_newsletter_id_seq'::regclass);
 G   ALTER TABLE public.newsletter_newsletter ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    265    265            ^	           2604    18604    newsletter_staffnewsletter id    DEFAULT     Ä   ALTER TABLE ONLY public.newsletter_staffnewsletter ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffnewsletter_id_seq'::regclass);
 L   ALTER TABLE public.newsletter_staffnewsletter ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    266    267            a	           2604    18667     newsletter_staffrecipientlist id    DEFAULT     ö   ALTER TABLE ONLY public.newsletter_staffrecipientlist ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffrecipientlist_id_seq'::regclass);
 O   ALTER TABLE public.newsletter_staffrecipientlist ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272    273            b	           2604    18675 %   newsletter_staffrecipientlist_user id    DEFAULT     ¿   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user ALTER COLUMN id SET DEFAULT nextval('public.newsletter_staffrecipientlist_recipient_list_id_seq'::regclass);
 T   ALTER TABLE public.newsletter_staffrecipientlist_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    274    275            Q	           2604    18430    product_product id    DEFAULT     x   ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            c	           2604    18795    receipt_receipt id    DEFAULT     x   ALTER TABLE ONLY public.receipt_receipt ALTER COLUMN id SET DEFAULT nextval('public.receipt_receipt_id_seq'::regclass);
 A   ALTER TABLE public.receipt_receipt ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    276    277    277            d	           2604    18803    receipt_receiptproduct id    DEFAULT     å   ALTER TABLE ONLY public.receipt_receiptproduct ALTER COLUMN id SET DEFAULT nextval('public.receipt_receiptproduct_id_seq'::regclass);
 H   ALTER TABLE public.receipt_receiptproduct ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    279    278    279            e	           2604    18834    review_review id    DEFAULT     t   ALTER TABLE ONLY public.review_review ALTER COLUMN id SET DEFAULT nextval('public.review_review_id_seq'::regclass);
 ?   ALTER TABLE public.review_review ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    281    280    281            I	           2604    18189    service_service id    DEFAULT     x   ALTER TABLE ONLY public.service_service ALTER COLUMN id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service_service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            H	           2604    18178    service_servicetype id    DEFAULT     Ç   ALTER TABLE ONLY public.service_servicetype ALTER COLUMN id SET DEFAULT nextval('public.service_servicetype_id_seq'::regclass);
 E   ALTER TABLE public.service_servicetype ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            f	           2604    18862    site_admin_adminprofile id    DEFAULT     ê   ALTER TABLE ONLY public.site_admin_adminprofile ALTER COLUMN id SET DEFAULT nextval('public.site_admin_adminprofile_id_seq'::regclass);
 I   ALTER TABLE public.site_admin_adminprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283    284            g	           2604    18882    social_auth_association id    DEFAULT     ê   ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);
 I   ALTER TABLE public.social_auth_association ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    286    285    286            h	           2604    18893    social_auth_code id    DEFAULT     z   ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);
 B   ALTER TABLE public.social_auth_code ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    287    288            i	           2604    18901    social_auth_nonce id    DEFAULT     |   ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);
 C   ALTER TABLE public.social_auth_nonce ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    289    290    290            k	           2604    18943    social_auth_partial id    DEFAULT     Ç   ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);
 E   ALTER TABLE public.social_auth_partial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    293    294    294            j	           2604    18909    social_auth_usersocialauth id    DEFAULT     Ä   ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);
 L   ALTER TABLE public.social_auth_usersocialauth ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    292    291    292            J	           2604    18207    staff_staffprofile id    DEFAULT     ~   ALTER TABLE ONLY public.staff_staffprofile ALTER COLUMN id SET DEFAULT nextval('public.staff_staffprofile_id_seq'::regclass);
 D   ALTER TABLE public.staff_staffprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            K	           2604    18220 "   staff_staffprofile_service_type id    DEFAULT     ÿ   ALTER TABLE ONLY public.staff_staffprofile_service_type ALTER COLUMN id SET DEFAULT nextval('public.staff_staffprofile_service_type_id_seq'::regclass);
 Q   ALTER TABLE public.staff_staffprofile_service_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            m	           2604    18961    testimonial_testimonial id    DEFAULT     ê   ALTER TABLE ONLY public.testimonial_testimonial ALTER COLUMN id SET DEFAULT nextval('public.testimonial_testimonial_id_seq'::regclass);
 I   ALTER TABLE public.testimonial_testimonial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    295    296    296            ┘
          0    17977    about_about 
   TABLE DATA               @   COPY public.about_about (id, info, operating_hours) FROM stdin;
    public       postgres    false    199   ∞	       π
          0    18029    about_aboutpicture 
   TABLE DATA               7   COPY public.about_aboutpicture (id, photo) FROM stdin;
    public       postgres    false    209          █
          0    17988    about_award 
   TABLE DATA               C   COPY public.about_award (id, title, description, logo) FROM stdin;
    public       postgres    false    201   E       ▌
          0    17996    about_contactinformation 
   TABLE DATA               J   COPY public.about_contactinformation (id, contact_type, info) FROM stdin;
    public       postgres    false    203   Q       ▀
          0    18004    about_partnership 
   TABLE DATA               J   COPY public.about_partnership (id, company_name, about, logo) FROM stdin;
    public       postgres    false    205   ╘       ß
          0    18012    about_salonpicture 
   TABLE DATA               B   COPY public.about_salonpicture (id, caption, picture) FROM stdin;
    public       postgres    false    207   N
        
          0    18312    appointment_appointment 
   TABLE DATA               ╛   COPY public.appointment_appointment (id, date, notes, customer_id, service_id, staff_id, canceled, requested_cancellation, requesting_user_type, rejected_requested_cancellation) FROM stdin;
    public       postgres    false    237   ±
                 0    18357    appointment_appointmenttime 
   TABLE DATA               `   COPY public.appointment_appointmenttime (id, length, last_minute_cancellation_time) FROM stdin;
    public       postgres    false    239   ≤       Θ
          0    18055 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    215           δ
          0    18065    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    217   3        τ
          0    18047    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    213   P        φ
          0    18073 	   auth_user 
   TABLE DATA               ò   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    219   ε       ∩
          0    18083    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    221   »       ±
          0    18091    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    223   ╠                 0    18371    blog_article 
   TABLE DATA               :   COPY public.blog_article (id, title, content) FROM stdin;
    public       postgres    false    241   Θ                 0    18382    blog_articleimage 
   TABLE DATA               K   COPY public.blog_articleimage (id, caption, image, article_id) FROM stdin;
    public       postgres    false    243   Y
       	          0    18446 	   cart_cart 
   TABLE DATA               =   COPY public.cart_cart (id, total_price, user_id) FROM stdin;
    public       postgres    false    247                    0    18456    cart_cartproduct 
   TABLE DATA               M   COPY public.cart_cartproduct (id, cart_id, product_id, quantity) FROM stdin;
    public       postgres    false    249   A       
          0    18483    cart_cartproductinfo 
   TABLE DATA               Q   COPY public.cart_cartproductinfo (id, quantity, cart_id, product_id) FROM stdin;
    public       postgres    false    251   g       ²
          0    18267    customer_customerprofile 
   TABLE DATA               v   COPY public.customer_customerprofile (id, gender, city, country, birthdate, phone_number, user_id, photo) FROM stdin;
    public       postgres    false    235   ä                 0    18504    customer_loggedincustomers 
   TABLE DATA               @   COPY public.customer_loggedincustomers (id, number) FROM stdin;
    public       postgres    false    253   ¡       ≤
          0    18151    django_admin_log 
   TABLE DATA               è   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    225   ╩       σ
          0    18037    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    211   τ       ╫
          0    17966    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   Ñ       ,          0    18847    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    282                    0    18512    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    255   ▐                 0    18520    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    257   s                 0    18546 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    259   q                 0    18563    main_homepicture 
   TABLE DATA               R   COPY public.main_homepicture (id, photo, caption, url_text, url_link) FROM stdin;
    public       postgres    false    261   Ä                 0    18574    main_maplocation 
   TABLE DATA               =   COPY public.main_maplocation (id, location_text) FROM stdin;
    public       postgres    false    263   A                 0    18648     newsletter_customerrecipientlist 
   TABLE DATA               >   COPY public.newsletter_customerrecipientlist (id) FROM stdin;
    public       postgres    false    269   ~       !          0    18656 %   newsletter_customerrecipientlist_user 
   TABLE DATA               q   COPY public.newsletter_customerrecipientlist_user (id, customerrecipientlist_id, customerprofile_id) FROM stdin;
    public       postgres    false    271   ¥                 0    18582    newsletter_newsletter 
   TABLE DATA               d   COPY public.newsletter_newsletter (id, subject, message, email_from, recipient_list_id) FROM stdin;
    public       postgres    false    265   ╞                 0    18601    newsletter_staffnewsletter 
   TABLE DATA               i   COPY public.newsletter_staffnewsletter (id, subject, message, email_from, recipient_list_id) FROM stdin;
    public       postgres    false    267   5       #          0    18664    newsletter_staffrecipientlist 
   TABLE DATA               ;   COPY public.newsletter_staffrecipientlist (id) FROM stdin;
    public       postgres    false    273   ì       %          0    18672 "   newsletter_staffrecipientlist_user 
   TABLE DATA               h   COPY public.newsletter_staffrecipientlist_user (id, staffrecipientlist_id, staffprofile_id) FROM stdin;
    public       postgres    false    275   ¼                 0    18427    product_product 
   TABLE DATA               â   COPY public.product_product (id, name, description, gender, price, discounted_price, photo, service_type_id, in_stock) FROM stdin;
    public       postgres    false    245   δ       '          0    18792    receipt_receipt 
   TABLE DATA               C   COPY public.receipt_receipt (id, total_price, user_id) FROM stdin;
    public       postgres    false    277   ╗       )          0    18800    receipt_receiptproduct 
   TABLE DATA               V   COPY public.receipt_receiptproduct (id, quantity, product_id, receipt_id) FROM stdin;
    public       postgres    false    279   	       +          0    18831 
   review_review 
   TABLE DATA               K   COPY public.review_review (id, summary, info, rating, user_id) FROM stdin;
    public       postgres    false    281   `       ≈
          0    18186    service_service 
   TABLE DATA               |   COPY public.service_service (id, name, description, gender, price, discounted_price, service_type_id, featured) FROM stdin;
    public       postgres    false    229   £       ⌡
          0    18175    service_servicetype 
   TABLE DATA               J   COPY public.service_servicetype (id, name, description, icon) FROM stdin;
    public       postgres    false    227   Ö       .          0    18859    site_admin_adminprofile 
   TABLE DATA               >   COPY public.site_admin_adminprofile (id, user_id) FROM stdin;
    public       postgres    false    284   ä       0          0    18879    social_auth_association 
   TABLE DATA               o   COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
    public       postgres    false    286   ª       2          0    18890    social_auth_code 
   TABLE DATA               R   COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
    public       postgres    false    288   ├       4          0    18898    social_auth_nonce 
   TABLE DATA               N   COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
    public       postgres    false    290   α       8          0    18940    social_auth_partial 
   TABLE DATA               _   COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
    public       postgres    false    294   ²       6          0    18906    social_auth_usersocialauth 
   TABLE DATA               \   COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
    public       postgres    false    292          ∙
          0    18204    staff_staffprofile 
   TABLE DATA               x   COPY public.staff_staffprofile (id, about, birthdate, photo, user_id, gender, phone_number, average_rating) FROM stdin;
    public       postgres    false    231   7       √
          0    18217    staff_staffprofile_service_type 
   TABLE DATA               ^   COPY public.staff_staffprofile_service_type (id, staffprofile_id, servicetype_id) FROM stdin;
    public       postgres    false    233   	       :          0    18958    testimonial_testimonial 
   TABLE DATA               _   COPY public.testimonial_testimonial (id, summary, info, rating, staff_id, user_id) FROM stdin;
    public       postgres    false    296   i	       s           0    0    about_about_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.about_about_id_seq', 1, true);
            public       postgres    false    198            t           0    0    about_aboutpicture_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.about_aboutpicture_id_seq', 1, true);
            public       postgres    false    208            u           0    0    about_award_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.about_award_id_seq', 6, true);
            public       postgres    false    200            v           0    0    about_contactinformation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.about_contactinformation_id_seq', 4, true);
            public       postgres    false    202            w           0    0    about_partnership_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.about_partnership_id_seq', 17, true);
            public       postgres    false    204            x           0    0    about_salonpicture_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.about_salonpicture_id_seq', 13, true);
            public       postgres    false    206            y           0    0    appointment_appointment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.appointment_appointment_id_seq', 44, true);
            public       postgres    false    236            z           0    0 "   appointment_appointmenttime_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.appointment_appointmenttime_id_seq', 1, true);
            public       postgres    false    238            {           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    214            |           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    216            }           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 348, true);
            public       postgres    false    212            ~           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    220                       0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 85, true);
            public       postgres    false    218            Ç           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    222            ü           0    0    blog_article_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_article_id_seq', 13, true);
            public       postgres    false    240            é           0    0    blog_articleimage_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.blog_articleimage_id_seq', 9, true);
            public       postgres    false    242            â           0    0    cart_cart_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cart_id_seq', 6, true);
            public       postgres    false    246            ä           0    0    cart_cart_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cart_cart_product_id_seq', 24, true);
            public       postgres    false    248            à           0    0    cart_cartproductinfo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cart_cartproductinfo_id_seq', 1, false);
            public       postgres    false    250            å           0    0    customer_customerprofile_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.customer_customerprofile_id_seq', 38, true);
            public       postgres    false    234            ç           0    0 !   customer_loggedincustomers_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_loggedincustomers_id_seq', 1, false);
            public       postgres    false    252            ê           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    224            ë           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 87, true);
            public       postgres    false    210            è           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 97, true);
            public       postgres    false    196            ï           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 87, true);
            public       postgres    false    254            î           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 115, true);
            public       postgres    false    256            ì           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    258            Ä           0    0    main_homepicture_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.main_homepicture_id_seq', 5, true);
            public       postgres    false    260            Å           0    0    main_maplocation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.main_maplocation_id_seq', 1, true);
            public       postgres    false    262            É           0    0 '   newsletter_customerrecipientlist_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.newsletter_customerrecipientlist_id_seq', 1, true);
            public       postgres    false    268            æ           0    0 6   newsletter_customerrecipientlist_recipient_list_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.newsletter_customerrecipientlist_recipient_list_id_seq', 6, true);
            public       postgres    false    270            Æ           0    0    newsletter_newsletter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.newsletter_newsletter_id_seq', 3, true);
            public       postgres    false    264            ô           0    0 !   newsletter_staffnewsletter_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.newsletter_staffnewsletter_id_seq', 4, true);
            public       postgres    false    266            ö           0    0 $   newsletter_staffrecipientlist_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.newsletter_staffrecipientlist_id_seq', 1, true);
            public       postgres    false    272            ò           0    0 3   newsletter_staffrecipientlist_recipient_list_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.newsletter_staffrecipientlist_recipient_list_id_seq', 18, true);
            public       postgres    false    274            û           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 3, true);
            public       postgres    false    244            ù           0    0    receipt_receipt_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receipt_receipt_id_seq', 23, true);
            public       postgres    false    276            ÿ           0    0    receipt_receiptproduct_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.receipt_receiptproduct_id_seq', 18, true);
            public       postgres    false    278            Ö           0    0    review_review_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.review_review_id_seq', 1, true);
            public       postgres    false    280            Ü           0    0    service_service_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_service_id_seq', 7, true);
            public       postgres    false    228            ¢           0    0    service_servicetype_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.service_servicetype_id_seq', 7, true);
            public       postgres    false    226            £           0    0    site_admin_adminprofile_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.site_admin_adminprofile_id_seq', 1, true);
            public       postgres    false    283            ¥           0    0    social_auth_association_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);
            public       postgres    false    285            ₧           0    0    social_auth_code_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);
            public       postgres    false    287            ƒ           0    0    social_auth_nonce_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);
            public       postgres    false    289            á           0    0    social_auth_partial_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);
            public       postgres    false    293            í           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);
            public       postgres    false    291            ó           0    0    staff_staffprofile_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_staffprofile_id_seq', 14, true);
            public       postgres    false    230            ú           0    0 &   staff_staffprofile_service_type_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.staff_staffprofile_service_type_id_seq', 130, true);
            public       postgres    false    232            ñ           0    0    testimonial_testimonial_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.testimonial_testimonial_id_seq', 2, true);
            public       postgres    false    295            q	           2606    17985    about_about about_about_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_about_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.about_about DROP CONSTRAINT about_about_pkey;
       public         postgres    false    199            {	           2606    18034 *   about_aboutpicture about_aboutpicture_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.about_aboutpicture
    ADD CONSTRAINT about_aboutpicture_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_aboutpicture DROP CONSTRAINT about_aboutpicture_pkey;
       public         postgres    false    209            s	           2606    17993    about_award about_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.about_award
    ADD CONSTRAINT about_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.about_award DROP CONSTRAINT about_award_pkey;
       public         postgres    false    201            u	           2606    18001 6   about_contactinformation about_contactinformation_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.about_contactinformation
    ADD CONSTRAINT about_contactinformation_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.about_contactinformation DROP CONSTRAINT about_contactinformation_pkey;
       public         postgres    false    203            w	           2606    18009 (   about_partnership about_partnership_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.about_partnership
    ADD CONSTRAINT about_partnership_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.about_partnership DROP CONSTRAINT about_partnership_pkey;
       public         postgres    false    205            y	           2606    18017 *   about_salonpicture about_salonpicture_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.about_salonpicture
    ADD CONSTRAINT about_salonpicture_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_salonpicture DROP CONSTRAINT about_salonpicture_pkey;
       public         postgres    false    207            ║	           2606    18320 4   appointment_appointment appointment_appointment_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointment_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointment_pkey;
       public         postgres    false    237            ╛	           2606    18362 <   appointment_appointmenttime appointment_appointmenttime_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.appointment_appointmenttime
    ADD CONSTRAINT appointment_appointmenttime_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.appointment_appointmenttime DROP CONSTRAINT appointment_appointmenttime_pkey;
       public         postgres    false    239            ç	           2606    18062    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    215            î	           2606    18117 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     á   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    217    217            Å	           2606    18070 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    217            ë	           2606    18060    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    215            é	           2606    18103 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     û   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    213    213            ä	           2606    18052 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    213            ù	           2606    18088 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    221            Ü	           2606    18132 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ê   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    221    221            æ	           2606    18078    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    219            ¥	           2606    18096 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    223            á	           2606    18146 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ª   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 â   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    223    223            ö	           2606    18364     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    219            └	           2606    18379    blog_article blog_article_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_article
    ADD CONSTRAINT blog_article_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_article DROP CONSTRAINT blog_article_pkey;
       public         postgres    false    241            ├	           2606    18390 (   blog_articleimage blog_articleimage_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_articleimage
    ADD CONSTRAINT blog_articleimage_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_articleimage DROP CONSTRAINT blog_articleimage_pkey;
       public         postgres    false    243            ╚	           2606    18451    cart_cart cart_cart_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_pkey;
       public         postgres    false    247            ═	           2606    18478 C   cart_cartproduct cart_cart_product_cart_id_product_id_7a5822b5_uniq 
   CONSTRAINT     ì   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_cart_id_product_id_7a5822b5_uniq UNIQUE (cart_id, product_id);
 m   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_cart_id_product_id_7a5822b5_uniq;
       public         postgres    false    249    249            ╧	           2606    18461 '   cart_cartproduct cart_cart_product_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_pkey;
       public         postgres    false    249            ╩	           2606    18453    cart_cart cart_cart_user_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_key UNIQUE (user_id);
 I   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_user_id_key;
       public         postgres    false    247            ╙	           2606    18488 .   cart_cartproductinfo cart_cartproductinfo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_pkey;
       public         postgres    false    251            ╡	           2606    18272 6   customer_customerprofile customer_customerprofile_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_pkey;
       public         postgres    false    235            ╖	           2606    18274 =   customer_customerprofile customer_customerprofile_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_user_id_key UNIQUE (user_id);
 g   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_user_id_key;
       public         postgres    false    235            ╓	           2606    18509 :   customer_loggedincustomers customer_loggedincustomers_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.customer_loggedincustomers
    ADD CONSTRAINT customer_loggedincustomers_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.customer_loggedincustomers DROP CONSTRAINT customer_loggedincustomers_pkey;
       public         postgres    false    253            ú	           2606    18160 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    225            }	           2606    18044 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     î   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    211    211            	           2606    18042 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    211            o	           2606    17974 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            
           2606    18854 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    282            ┌	           2606    18517 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    255            ▐	           2606    18529 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     û   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    255    255            α	           2606    18527 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     ¡   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 â   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    257    257    257            Σ	           2606    18525 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    257            Θ	           2606    18553 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     è   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    259            δ	           2606    18555 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     ¢   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 é   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    259            φ	           2606    18571 &   main_homepicture main_homepicture_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_homepicture
    ADD CONSTRAINT main_homepicture_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_homepicture DROP CONSTRAINT main_homepicture_pkey;
       public         postgres    false    261            ∩	           2606    18579 &   main_maplocation main_maplocation_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_maplocation
    ADD CONSTRAINT main_maplocation_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_maplocation DROP CONSTRAINT main_maplocation_pkey;
       public         postgres    false    263            ∙	           2606    18689 e   newsletter_customerrecipientlist_user newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq 
   CONSTRAINT     ╚   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq UNIQUE (customerrecipientlist_id, customerprofile_id);
 Å   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerrecip_customerrecipientlist_id_edff7850_uniq;
       public         postgres    false    271    271            ≈	           2606    18653 F   newsletter_customerrecipientlist newsletter_customerrecipientlist_pkey 
   CONSTRAINT     ä   ALTER TABLE ONLY public.newsletter_customerrecipientlist
    ADD CONSTRAINT newsletter_customerrecipientlist_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.newsletter_customerrecipientlist DROP CONSTRAINT newsletter_customerrecipientlist_pkey;
       public         postgres    false    269            ²	           2606    18661 Z   newsletter_customerrecipientlist_user newsletter_customerrecipientlist_recipient_list_pkey 
   CONSTRAINT     ÿ   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerrecipientlist_recipient_list_pkey PRIMARY KEY (id);
 ä   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerrecipientlist_recipient_list_pkey;
       public         postgres    false    271            ±	           2606    18590 0   newsletter_newsletter newsletter_newsletter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.newsletter_newsletter
    ADD CONSTRAINT newsletter_newsletter_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.newsletter_newsletter DROP CONSTRAINT newsletter_newsletter_pkey;
       public         postgres    false    265            ⌠	           2606    18609 :   newsletter_staffnewsletter newsletter_staffnewsletter_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.newsletter_staffnewsletter
    ADD CONSTRAINT newsletter_staffnewsletter_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.newsletter_staffnewsletter DROP CONSTRAINT newsletter_staffnewsletter_pkey;
       public         postgres    false    267            
           2606    18703 b   newsletter_staffrecipientlist_user newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq 
   CONSTRAINT     ┐   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq UNIQUE (staffrecipientlist_id, staffprofile_id);
 î   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffrecipien_staffrecipientlist_id_st_a3ef252a_uniq;
       public         postgres    false    275    275             	           2606    18669 @   newsletter_staffrecipientlist newsletter_staffrecipientlist_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.newsletter_staffrecipientlist
    ADD CONSTRAINT newsletter_staffrecipientlist_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.newsletter_staffrecipientlist DROP CONSTRAINT newsletter_staffrecipientlist_pkey;
       public         postgres    false    273            
           2606    18677 T   newsletter_staffrecipientlist_user newsletter_staffrecipientlist_recipient_list_pkey 
   CONSTRAINT     Æ   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffrecipientlist_recipient_list_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffrecipientlist_recipient_list_pkey;
       public         postgres    false    275            ┼	           2606    18435 $   product_product product_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_pkey;
       public         postgres    false    245            
           2606    18797 $   receipt_receipt receipt_receipt_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.receipt_receipt
    ADD CONSTRAINT receipt_receipt_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.receipt_receipt DROP CONSTRAINT receipt_receipt_pkey;
       public         postgres    false    277            
           2606    18805 2   receipt_receiptproduct receipt_receiptproduct_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptproduct_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptproduct_pkey;
       public         postgres    false    279            
           2606    18839     review_review review_review_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.review_review
    ADD CONSTRAINT review_review_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.review_review DROP CONSTRAINT review_review_pkey;
       public         postgres    false    281            ¿	           2606    18194 $   service_service service_service_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.service_service DROP CONSTRAINT service_service_pkey;
       public         postgres    false    229            ª	           2606    18183 ,   service_servicetype service_servicetype_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.service_servicetype
    ADD CONSTRAINT service_servicetype_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.service_servicetype DROP CONSTRAINT service_servicetype_pkey;
       public         postgres    false    227            
           2606    18864 4   site_admin_adminprofile site_admin_adminprofile_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_pkey;
       public         postgres    false    284            
           2606    18866 ;   site_admin_adminprofile site_admin_adminprofile_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_user_id_key;
       public         postgres    false    284            
           2606    18887 4   social_auth_association social_auth_association_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_pkey;
       public         postgres    false    286            
           2606    18937 O   social_auth_association social_auth_association_server_url_handle_078befa2_uniq 
   CONSTRAINT     ÿ   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);
 y   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq;
       public         postgres    false    286    286            
           2606    18935 :   social_auth_code social_auth_code_email_code_801b2d02_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);
 d   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_email_code_801b2d02_uniq;
       public         postgres    false    288    288            !
           2606    18895 &   social_auth_code social_auth_code_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_pkey;
       public         postgres    false    288            $
           2606    18903 (   social_auth_nonce social_auth_nonce_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_pkey;
       public         postgres    false    290            &
           2606    18920 K   social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq 
   CONSTRAINT     ƒ   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);
 u   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq;
       public         postgres    false    290    290    290            -
           2606    18949 ,   social_auth_partial social_auth_partial_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.social_auth_partial DROP CONSTRAINT social_auth_partial_pkey;
       public         postgres    false    294            (
           2606    18914 :   social_auth_usersocialauth social_auth_usersocialauth_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_pkey;
       public         postgres    false    292            *
           2606    18916 P   social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq 
   CONSTRAINT     ö   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);
 z   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq;
       public         postgres    false    292    292            ½	           2606    18212 *   staff_staffprofile staff_staffprofile_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_pkey;
       public         postgres    false    231            »	           2606    18239 _   staff_staffprofile_service_type staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq 
   CONSTRAINT     ╡   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq UNIQUE (staffprofile_id, servicetype_id);
 ë   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_servi_staffprofile_id_servicet_59bb9ff5_uniq;
       public         postgres    false    233    233            ▒	           2606    18222 D   staff_staffprofile_service_type staff_staffprofile_service_type_pkey 
   CONSTRAINT     é   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_service_type_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_service_type_pkey;
       public         postgres    false    233            ¡	           2606    18214 1   staff_staffprofile staff_staffprofile_user_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_user_id_key UNIQUE (user_id);
 [   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_user_id_key;
       public         postgres    false    231            2
           2606    18966 4   testimonial_testimonial testimonial_testimonial_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimonial_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimonial_pkey;
       public         postgres    false    296            ╕	           1259    18346 ,   appointment_appointment_customer_id_92575998    INDEX     w   CREATE INDEX appointment_appointment_customer_id_92575998 ON public.appointment_appointment USING btree (customer_id);
 @   DROP INDEX public.appointment_appointment_customer_id_92575998;
       public         postgres    false    237            ╗	           1259    18337 +   appointment_appointment_service_id_c235daf3    INDEX     u   CREATE INDEX appointment_appointment_service_id_c235daf3 ON public.appointment_appointment USING btree (service_id);
 ?   DROP INDEX public.appointment_appointment_service_id_c235daf3;
       public         postgres    false    237            ╝	           1259    18338 )   appointment_appointment_staff_id_3b6a9e8d    INDEX     q   CREATE INDEX appointment_appointment_staff_id_3b6a9e8d ON public.appointment_appointment USING btree (staff_id);
 =   DROP INDEX public.appointment_appointment_staff_id_3b6a9e8d;
       public         postgres    false    237            à	           1259    18105    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    215            è	           1259    18118 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    217            ì	           1259    18119 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    217            Ç	           1259    18104 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    213            ò	           1259    18134 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    221            ÿ	           1259    18133 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    221            ¢	           1259    18148 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ü   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    223            ₧	           1259    18147 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    223            Æ	           1259    18365     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    219            ┴	           1259    18414 %   blog_articleimage_article_id_a06f9bef    INDEX     i   CREATE INDEX blog_articleimage_article_id_a06f9bef ON public.blog_articleimage USING btree (article_id);
 9   DROP INDEX public.blog_articleimage_article_id_a06f9bef;
       public         postgres    false    243            ╦	           1259    18479 "   cart_cart_product_cart_id_a1873123    INDEX     b   CREATE INDEX cart_cart_product_cart_id_a1873123 ON public.cart_cartproduct USING btree (cart_id);
 6   DROP INDEX public.cart_cart_product_cart_id_a1873123;
       public         postgres    false    249            ╨	           1259    18480 %   cart_cart_product_product_id_69b79752    INDEX     h   CREATE INDEX cart_cart_product_product_id_69b79752 ON public.cart_cartproduct USING btree (product_id);
 9   DROP INDEX public.cart_cart_product_product_id_69b79752;
       public         postgres    false    249            ╤	           1259    18489 %   cart_cartproductinfo_cart_id_f3f36585    INDEX     i   CREATE INDEX cart_cartproductinfo_cart_id_f3f36585 ON public.cart_cartproductinfo USING btree (cart_id);
 9   DROP INDEX public.cart_cartproductinfo_cart_id_f3f36585;
       public         postgres    false    251            ╘	           1259    18495 (   cart_cartproductinfo_product_id_a90df363    INDEX     o   CREATE INDEX cart_cartproductinfo_product_id_a90df363 ON public.cart_cartproductinfo USING btree (product_id);
 <   DROP INDEX public.cart_cartproductinfo_product_id_a90df363;
       public         postgres    false    251            í	           1259    18171 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    225            ñ	           1259    18172 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    225            
           1259    18856 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    282            
           1259    18855 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    282            ╫	           1259    18532 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    255            ╪	           1259    18533 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     Ç   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    255            █	           1259    18530 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    255            ▄	           1259    18531 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     É   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    255            ß	           1259    18541 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    257            Γ	           1259    18542 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     å   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    257            σ	           1259    18543 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    257            µ	           1259    18539 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    257            τ	           1259    18540 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     û   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    257            ·	           1259    18691 6   newsletter_customerrecipie_customerprofile_id_9018117b    INDEX     û   CREATE INDEX newsletter_customerrecipie_customerprofile_id_9018117b ON public.newsletter_customerrecipientlist_user USING btree (customerprofile_id);
 J   DROP INDEX public.newsletter_customerrecipie_customerprofile_id_9018117b;
       public         postgres    false    271            √	           1259    18690 <   newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa    INDEX     ó   CREATE INDEX newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa ON public.newsletter_customerrecipientlist_user USING btree (customerrecipientlist_id);
 P   DROP INDEX public.newsletter_customerrecipie_customerrecipientlist_id_a3b3dafa;
       public         postgres    false    271            ≥	           1259    18728 0   newsletter_newsletter_recipient_lsit_id_fd1ee318    INDEX        CREATE INDEX newsletter_newsletter_recipient_lsit_id_fd1ee318 ON public.newsletter_newsletter USING btree (recipient_list_id);
 D   DROP INDEX public.newsletter_newsletter_recipient_lsit_id_fd1ee318;
       public         postgres    false    265            ⌡	           1259    18734 5   newsletter_staffnewsletter_recipient_lsit_id_8d46e482    INDEX     ë   CREATE INDEX newsletter_staffnewsletter_recipient_lsit_id_8d46e482 ON public.newsletter_staffnewsletter USING btree (recipient_list_id);
 I   DROP INDEX public.newsletter_staffnewsletter_recipient_lsit_id_8d46e482;
       public         postgres    false    267            
           1259    18705 3   newsletter_staffrecipientl_staffprofile_id_016e1174    INDEX     ì   CREATE INDEX newsletter_staffrecipientl_staffprofile_id_016e1174 ON public.newsletter_staffrecipientlist_user USING btree (staffprofile_id);
 G   DROP INDEX public.newsletter_staffrecipientl_staffprofile_id_016e1174;
       public         postgres    false    275            
           1259    18704 9   newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3    INDEX     Ö   CREATE INDEX newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3 ON public.newsletter_staffrecipientlist_user USING btree (staffrecipientlist_id);
 M   DROP INDEX public.newsletter_staffrecipientl_staffrecipientlist_id_f1676ea3;
       public         postgres    false    275            ╞	           1259    18436 (   product_product_service_type_id_162999e8    INDEX     o   CREATE INDEX product_product_service_type_id_162999e8 ON public.product_product USING btree (service_type_id);
 <   DROP INDEX public.product_product_service_type_id_162999e8;
       public         postgres    false    245            
           1259    18818     receipt_receipt_user_id_1eff22df    INDEX     _   CREATE INDEX receipt_receipt_user_id_1eff22df ON public.receipt_receipt USING btree (user_id);
 4   DROP INDEX public.receipt_receipt_user_id_1eff22df;
       public         postgres    false    277            	
           1259    18816 *   receipt_receiptproduct_Product_id_8cfdd43d    INDEX     u   CREATE INDEX "receipt_receiptproduct_Product_id_8cfdd43d" ON public.receipt_receiptproduct USING btree (product_id);
 @   DROP INDEX public."receipt_receiptproduct_Product_id_8cfdd43d";
       public         postgres    false    279            
           1259    18817 *   receipt_receiptproduct_receipt_id_d4fcf685    INDEX     s   CREATE INDEX receipt_receiptproduct_receipt_id_d4fcf685 ON public.receipt_receiptproduct USING btree (receipt_id);
 >   DROP INDEX public.receipt_receiptproduct_receipt_id_d4fcf685;
       public         postgres    false    279            
           1259    18845    review_review_user_id_ff798828    INDEX     [   CREATE INDEX review_review_user_id_ff798828 ON public.review_review USING btree (user_id);
 2   DROP INDEX public.review_review_user_id_ff798828;
       public         postgres    false    281            ⌐	           1259    18200 (   service_service_service_type_id_3b639d4b    INDEX     o   CREATE INDEX service_service_service_type_id_3b639d4b ON public.service_service USING btree (service_type_id);
 <   DROP INDEX public.service_service_service_type_id_3b639d4b;
       public         postgres    false    229            
           1259    18921    social_auth_code_code_a2393167    INDEX     [   CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);
 2   DROP INDEX public.social_auth_code_code_a2393167;
       public         postgres    false    288            
           1259    18922 #   social_auth_code_code_a2393167_like    INDEX     t   CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);
 7   DROP INDEX public.social_auth_code_code_a2393167_like;
       public         postgres    false    288            "
           1259    18953 #   social_auth_code_timestamp_176b341f    INDEX     g   CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");
 7   DROP INDEX public.social_auth_code_timestamp_176b341f;
       public         postgres    false    288            .
           1259    18955 &   social_auth_partial_timestamp_50f2119f    INDEX     m   CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");
 :   DROP INDEX public.social_auth_partial_timestamp_50f2119f;
       public         postgres    false    294            /
           1259    18950 "   social_auth_partial_token_3017fea3    INDEX     c   CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);
 6   DROP INDEX public.social_auth_partial_token_3017fea3;
       public         postgres    false    294            0
           1259    18951 '   social_auth_partial_token_3017fea3_like    INDEX     |   CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);
 ;   DROP INDEX public.social_auth_partial_token_3017fea3_like;
       public         postgres    false    294            +
           1259    18928 +   social_auth_usersocialauth_user_id_17d28448    INDEX     u   CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);
 ?   DROP INDEX public.social_auth_usersocialauth_user_id_17d28448;
       public         postgres    false    292            ▓	           1259    18241 7   staff_staffprofile_service_type_servicetype_id_ab16a4fe    INDEX     ì   CREATE INDEX staff_staffprofile_service_type_servicetype_id_ab16a4fe ON public.staff_staffprofile_service_type USING btree (servicetype_id);
 K   DROP INDEX public.staff_staffprofile_service_type_servicetype_id_ab16a4fe;
       public         postgres    false    233            │	           1259    18240 8   staff_staffprofile_service_type_staffprofile_id_56929247    INDEX     Å   CREATE INDEX staff_staffprofile_service_type_staffprofile_id_56929247 ON public.staff_staffprofile_service_type USING btree (staffprofile_id);
 L   DROP INDEX public.staff_staffprofile_service_type_staffprofile_id_56929247;
       public         postgres    false    233            3
           1259    18977 )   testimonial_testimonial_staff_id_a48ef218    INDEX     q   CREATE INDEX testimonial_testimonial_staff_id_a48ef218 ON public.testimonial_testimonial USING btree (staff_id);
 =   DROP INDEX public.testimonial_testimonial_staff_id_a48ef218;
       public         postgres    false    296            4
           1259    18978 (   testimonial_testimonial_user_id_eef7f4f9    INDEX     o   CREATE INDEX testimonial_testimonial_user_id_eef7f4f9 ON public.testimonial_testimonial USING btree (user_id);
 <   DROP INDEX public.testimonial_testimonial_user_id_eef7f4f9;
       public         postgres    false    296            E
           2606    18347 N   appointment_appointment appointment_appointm_customer_id_92575998_fk_customer_ 
   FK CONSTRAINT     Γ   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_customer_id_92575998_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_customer_id_92575998_fk_customer_;
       public       postgres    false    235    237    2485            C
           2606    18326 M   appointment_appointment appointment_appointm_service_id_c235daf3_fk_service_s 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_service_id_c235daf3_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_service_id_c235daf3_fk_service_s;
       public       postgres    false    2472    237    229            D
           2606    18331 K   appointment_appointment appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.appointment_appointment
    ADD CONSTRAINT appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta FOREIGN KEY (staff_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.appointment_appointment DROP CONSTRAINT appointment_appointm_staff_id_3b6a9e8d_fk_staff_sta;
       public       postgres    false    2475    231    237            7
           2606    18111 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm 
   FK CONSTRAINT     ▄   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    213    217    2436            6
           2606    18106 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    217    2441    215            5
           2606    18097 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    211    2431    213            9
           2606    18126 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id 
   FK CONSTRAINT     ╟   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    221    215    2441            8
           2606    18121 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    219    2449    221            ;
           2606    18140 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm 
   FK CONSTRAINT     α   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    223    2436    213            :
           2606    18135 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Ç   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2449    223    219            F
           2606    18420 J   blog_articleimage blog_articleimage_article_id_a06f9bef_fk_blog_article_id 
   FK CONSTRAINT     ╤   ALTER TABLE ONLY public.blog_articleimage
    ADD CONSTRAINT blog_articleimage_article_id_a06f9bef_fk_blog_article_id FOREIGN KEY (article_id) REFERENCES public.blog_article(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.blog_articleimage DROP CONSTRAINT blog_articleimage_article_id_a06f9bef_fk_blog_article_id;
       public       postgres    false    243    2496    241            I
           2606    18467 C   cart_cartproduct cart_cart_product_cart_id_a1873123_fk_cart_cart_id 
   FK CONSTRAINT     ─   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_cart_id_a1873123_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_cart_id_a1873123_fk_cart_cart_id;
       public       postgres    false    2504    249    247            J
           2606    18472 L   cart_cartproduct cart_cart_product_product_id_69b79752_fk_product_product_id 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cart_product_product_id_69b79752_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.cart_cartproduct DROP CONSTRAINT cart_cart_product_product_id_69b79752_fk_product_product_id;
       public       postgres    false    245    2501    249            H
           2606    18462 C   cart_cart cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_user_id_9b4220b9_fk_customer_customerprofile_id;
       public       postgres    false    2485    235    247            K
           2606    18490 J   cart_cartproductinfo cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id 
   FK CONSTRAINT     ╦   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_cart_id_f3f36585_fk_cart_cart_id;
       public       postgres    false    247    2504    251            L
           2606    18496 S   cart_cartproductinfo cart_cartproductinfo_product_id_a90df363_fk_product_product_id 
   FK CONSTRAINT     ▌   ALTER TABLE ONLY public.cart_cartproductinfo
    ADD CONSTRAINT cart_cartproductinfo_product_id_a90df363_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cart_cartproductinfo DROP CONSTRAINT cart_cartproductinfo_product_id_a90df363_fk_product_product_id;
       public       postgres    false    245    251    2501            B
           2606    18305 R   customer_customerprofile customer_customerprofile_user_id_e2b7d938_fk_auth_user_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.customer_customerprofile
    ADD CONSTRAINT customer_customerprofile_user_id_e2b7d938_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.customer_customerprofile DROP CONSTRAINT customer_customerprofile_user_id_e2b7d938_fk_auth_user_id;
       public       postgres    false    235    2449    219            <
           2606    18161 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co 
   FK CONSTRAINT     ┌   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    211    225    2431            =
           2606    18166 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    219    2449    225            M
           2606    18534 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum 
   FK CONSTRAINT     ▐   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    257    255    2522            N
           2606    18556 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum 
   FK CONSTRAINT     ±   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 à   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    257    2532    259            Q
           2606    18770 c   newsletter_customerrecipientlist_user newsletter_customerr_customerprofile_id_aa29376d_fk_customer_ 
   FK CONSTRAINT     ■   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerr_customerprofile_id_aa29376d_fk_customer_ FOREIGN KEY (customerprofile_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ì   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerr_customerprofile_id_aa29376d_fk_customer_;
       public       postgres    false    271    2485    235            R
           2606    18775 e   newsletter_customerrecipientlist_user newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette 
   FK CONSTRAINT       ALTER TABLE ONLY public.newsletter_customerrecipientlist_user
    ADD CONSTRAINT newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette FOREIGN KEY (customerrecipientlist_id) REFERENCES public.newsletter_customerrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 Å   ALTER TABLE ONLY public.newsletter_customerrecipientlist_user DROP CONSTRAINT newsletter_customerr_customerrecipientlis_995ed76f_fk_newslette;
       public       postgres    false    271    269    2551            O
           2606    18750 R   newsletter_newsletter newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette 
   FK CONSTRAINT     ⌠   ALTER TABLE ONLY public.newsletter_newsletter
    ADD CONSTRAINT newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette FOREIGN KEY (recipient_list_id) REFERENCES public.newsletter_customerrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.newsletter_newsletter DROP CONSTRAINT newsletter_newslette_recipient_list_id_fb18efb2_fk_newslette;
       public       postgres    false    269    265    2551            P
           2606    18755 W   newsletter_staffnewsletter newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette 
   FK CONSTRAINT     ÷   ALTER TABLE ONLY public.newsletter_staffnewsletter
    ADD CONSTRAINT newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette FOREIGN KEY (recipient_list_id) REFERENCES public.newsletter_staffrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 ü   ALTER TABLE ONLY public.newsletter_staffnewsletter DROP CONSTRAINT newsletter_staffnews_recipient_list_id_70ed890a_fk_newslette;
       public       postgres    false    2559    273    267            S
           2606    18780 ]   newsletter_staffrecipientlist_user newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta 
   FK CONSTRAINT     ∩   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta FOREIGN KEY (staffprofile_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ç   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffreci_staffprofile_id_f8e6bd3d_fk_staff_sta;
       public       postgres    false    275    231    2475            T
           2606    18785 b   newsletter_staffrecipientlist_user newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette 
   FK CONSTRAINT       ALTER TABLE ONLY public.newsletter_staffrecipientlist_user
    ADD CONSTRAINT newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette FOREIGN KEY (staffrecipientlist_id) REFERENCES public.newsletter_staffrecipientlist(id) DEFERRABLE INITIALLY DEFERRED;
 î   ALTER TABLE ONLY public.newsletter_staffrecipientlist_user DROP CONSTRAINT newsletter_staffreci_staffrecipientlist_i_5c74467b_fk_newslette;
       public       postgres    false    273    2559    275            G
           2606    18437 E   product_product product_product_service_type_id_162999e8_fk_service_s 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_service_type_id_162999e8_fk_service_s FOREIGN KEY (service_type_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_service_type_id_162999e8_fk_service_s;
       public       postgres    false    227    245    2470            U
           2606    18819 O   receipt_receipt receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id 
   FK CONSTRAINT     ▀   ALTER TABLE ONLY public.receipt_receipt
    ADD CONSTRAINT receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.receipt_receipt DROP CONSTRAINT receipt_receipt_user_id_1eff22df_fk_customer_customerprofile_id;
       public       postgres    false    235    277    2485            W
           2606    18824 L   receipt_receiptproduct receipt_receiptprodu_product_id_25b734e8_fk_product_p 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptprodu_product_id_25b734e8_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptprodu_product_id_25b734e8_fk_product_p;
       public       postgres    false    279    2501    245            V
           2606    18811 L   receipt_receiptproduct receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.receipt_receiptproduct
    ADD CONSTRAINT receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r FOREIGN KEY (receipt_id) REFERENCES public.receipt_receipt(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.receipt_receiptproduct DROP CONSTRAINT receipt_receiptprodu_receipt_id_d4fcf685_fk_receipt_r;
       public       postgres    false    279    2567    277            X
           2606    18840 K   review_review review_review_user_id_ff798828_fk_customer_customerprofile_id 
   FK CONSTRAINT     █   ALTER TABLE ONLY public.review_review
    ADD CONSTRAINT review_review_user_id_ff798828_fk_customer_customerprofile_id FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.review_review DROP CONSTRAINT review_review_user_id_ff798828_fk_customer_customerprofile_id;
       public       postgres    false    2485    235    281            >
           2606    18195 E   service_service service_service_service_type_id_3b639d4b_fk_service_s 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_service_type_id_3b639d4b_fk_service_s FOREIGN KEY (service_type_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.service_service DROP CONSTRAINT service_service_service_type_id_3b639d4b_fk_service_s;
       public       postgres    false    229    227    2470            Y
           2606    18872 P   site_admin_adminprofile site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id 
   FK CONSTRAINT     ╤   ALTER TABLE ONLY public.site_admin_adminprofile
    ADD CONSTRAINT site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.site_admin_adminprofile DROP CONSTRAINT site_admin_adminprofile_user_id_9ce27d64_fk_auth_user_id;
       public       postgres    false    219    2449    284            Z
           2606    18929 V   social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Ç   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id;
       public       postgres    false    219    292    2449            A
           2606    18233 Y   staff_staffprofile_service_type staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s 
   FK CONSTRAINT     δ   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s FOREIGN KEY (servicetype_id) REFERENCES public.service_servicetype(id) DEFERRABLE INITIALLY DEFERRED;
 â   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_s_servicetype_id_ab16a4fe_fk_service_s;
       public       postgres    false    227    233    2470            @
           2606    18228 Z   staff_staffprofile_service_type staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta 
   FK CONSTRAINT     ∞   ALTER TABLE ONLY public.staff_staffprofile_service_type
    ADD CONSTRAINT staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta FOREIGN KEY (staffprofile_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ä   ALTER TABLE ONLY public.staff_staffprofile_service_type DROP CONSTRAINT staff_staffprofile_s_staffprofile_id_56929247_fk_staff_sta;
       public       postgres    false    2475    231    233            ?
           2606    18223 F   staff_staffprofile staff_staffprofile_user_id_de1feaad_fk_auth_user_id 
   FK CONSTRAINT     ╟   ALTER TABLE ONLY public.staff_staffprofile
    ADD CONSTRAINT staff_staffprofile_user_id_de1feaad_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.staff_staffprofile DROP CONSTRAINT staff_staffprofile_user_id_de1feaad_fk_auth_user_id;
       public       postgres    false    231    219    2449            [
           2606    18967 K   testimonial_testimonial testimonial_testimon_staff_id_a48ef218_fk_staff_sta 
   FK CONSTRAINT     ╓   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimon_staff_id_a48ef218_fk_staff_sta FOREIGN KEY (staff_id) REFERENCES public.staff_staffprofile(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimon_staff_id_a48ef218_fk_staff_sta;
       public       postgres    false    296    231    2475            \
           2606    18972 J   testimonial_testimonial testimonial_testimon_user_id_eef7f4f9_fk_customer_ 
   FK CONSTRAINT     ┌   ALTER TABLE ONLY public.testimonial_testimonial
    ADD CONSTRAINT testimonial_testimon_user_id_eef7f4f9_fk_customer_ FOREIGN KEY (user_id) REFERENCES public.customer_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.testimonial_testimonial DROP CONSTRAINT testimonial_testimon_user_id_eef7f4f9_fk_customer_;
       public       postgres    false    235    296    2485           
