----------- DB 테이블 생성 -----------
create table member(
	m_mail varchar(500),
    m_pw varchar(500) not null,
    m_nick varchar(500) not null,
    m_name varchar(500) not null,
    m_age int not null,
    m_birth varchar(30) not null,
    m_gen varchar(10) not null,
    m_add varchar(500) not null,
    m_size int not null,
    primary key(m_mail),
    unique key uk_nick(m_nick)
)


create table color(
	c_name varchar(100),
	c_code varchar(100) not null,
	c_rgb varchar(100) not null,
	primary key(c_name)
)

create table palette(
	pl_num int auto_increment,
	pl_c1 varchar(100),
	pl_c2 varchar(100),
	pl_c3 varchar(100),
	pl_c4 varchar(100),
	pl_c5 varchar(100),
	m_mail varchar(500) not null,
	primary key(pl_num),
	foreign key(m_mail)
	references member(m_mail) on update cascade on delete cascade
)

create table interior_img(
	i_num int auto_increment,
	i_sort varchar(100) not null,
	i_style varchar(100) not null,
	i_purpose varchar(100) not null,
	i_url text not null,
	i_name varchar(100) not null,
	i_tag varchar(100) not null,
	primary key(i_num)
)

create table benjamin(
	b_num int auto_increment,
	b_color varchar(200) not null,
	b_title varchar(200) not null,
	b_img text not null,
	primary key(b_num)
)

create table video(
	v_num int auto_increment,
	v_url text not null,
	v_title varchar(200) not null,
	v_tag varchar(1000) not null,
	v_count int not null,
	v_channel varchar(500) not null,
	v_upload varchar(200) not null,
	primary key(v_num)
)

create table magazine(
	mg_num int auto_increment,
	mg_img text not null,
	mg_title varchar(200) not null,
	mg_site varchar(200) not null,
	mg_url text not null,
	primary key(mg_num)
)

create table product(
	p_num int auto_increment,
	p_name varchar(500) not null,
	p_color varchar(300) not null,
	p_price varchar(300) not null,
	p_brand varchar(300) not null,
	p_sort varchar(100) not null,
	primary key(p_num)
)

create table board(
	b_num int auto_increment,
	b_title varchar(500) not null,
	m_nick varchar(300) not null,
	b_contents text not null,
	b_date date default(current_time) not null,
	b_pw varchar(100) not null,
	b_img text not null,
	b_like int not null,
	primary key(b_num),
	foreign key(m_nick)
	references member(m_nick) on update cascade on delete cascade
)

create table reply(
	rp_num int auto_increment, 
	m_nick varchar(100) not null,
	rp_contents text not null,
	rp_date date default(current_time) not null,
	rp_pw varchar(100) not null,
	rp_img text not null,
	b_num int not null,
	primary key(rp_num),
	foreign key(m_nick)
	references member(m_nick) on update cascade on delete cascade,
	foreign key(b_num)
	references board(b_num) on update cascade on delete cascade
)


--------- DB 테이블 검색 --------------

select * from member
select * from color
select * from palette
select * from interior_img
select * from benjamin
select * from video
select * from magazine
select * from product
select * from board
select * from reply