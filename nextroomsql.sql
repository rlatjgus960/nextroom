DROP SEQUENCE userNO;
DROP SEQUENCE cafeNo;
DROP SEQUENCE themeNo;
DROP SEQUENCE partyNo;
DROP SEQUENCE reserveDateNo;
DROP SEQUENCE reserveTimeNo;
DROP SEQUENCE reserveNo;
DROP SEQUENCE reserveMemberNo;
DROP SEQUENCE reviewNo;
DROP SEQUENCE recordNo;
DROP SEQUENCE gameNo;


ALTER TABLE users
   DROP
      UNIQUE (
         id,
         nickname,
         email
      )
      CASCADE
      KEEP INDEX;

DROP INDEX UIX_users;

DROP INDEX PK_users;

/* user */
DROP TABLE users 
   CASCADE CONSTRAINTS;

/* user */
CREATE TABLE users (
   userNo NUMBER NOT NULL, /* 회원번호 */
   id VARCHAR2(20) NOT NULL, /* 아이디 */
   password VARCHAR2(50) NOT NULL, /* 비밀번호 */
   userName VARCHAR2(20) NOT NULL, /* 이름 */
   userHp VARCHAR2(20), /* 전화번호 */
   email VARCHAR2(50), /* 이메일 */
   nickname VARCHAR2(20) NOT NULL, /* 닉네임 */
   userType VARCHAR2(20) /* 유저타입(일반 사용자, 업체관리자) */
);

COMMENT ON TABLE users IS 'user';

COMMENT ON COLUMN users.userNo IS '회원번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.password IS '비밀번호';

COMMENT ON COLUMN users.userName IS '이름';

COMMENT ON COLUMN users.userHp IS '전화번호';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.nickname IS '닉네임';

COMMENT ON COLUMN users.userType IS '유저타입(일반 사용자, 업체관리자)';

CREATE UNIQUE INDEX PK_users
   ON users (
      userNo ASC
   );

CREATE UNIQUE INDEX UIX_users
   ON users (
      id ASC,
      nickname ASC,
      email ASC
   );

ALTER TABLE users
   ADD
      CONSTRAINT PK_users
      PRIMARY KEY (
         userNo
      );

ALTER TABLE users
   ADD
      CONSTRAINT UK_users
      UNIQUE (
         id,
         nickname,
         email
      );
        
/************************************************/
/************************************************/

DROP INDEX PK_cafe;

/* 카페 */
DROP TABLE cafe 
   CASCADE CONSTRAINTS;

/* 카페 */
CREATE TABLE cafe (
   cafeNo NUMBER NOT NULL, /* 카페번호 */
   userNo NUMBER NOT NULL, /* 회원번호 */
   cafeName VARCHAR2(50), /* 카페이름 */
   cafeHp VARCHAR2(20), /* 카페전화번호 */
   openTime VARCHAR2(20), /* 카페오픈시간 */
   closeTime VARCHAR2(20), /* 카페마감시간 */
   cafeIntro VARCHAR2(2000), /* 카페소개글 */
   url VARCHAR2(200), /* 카페URL */
   cafeImg VARCHAR2(200), /* 메인이미지경로 */
   address VARCHAR2(500), /* 출력용주소 */
   sido VARCHAR2(50), /* ---관리용주소1 시/도 */
   sidoDetail VARCHAR2(50) /* ---관리용주소2 서울시/경기도만 사용 */
);

COMMENT ON TABLE cafe IS '카페';

COMMENT ON COLUMN cafe.cafeNo IS '카페번호';

COMMENT ON COLUMN cafe.userNo IS '회원번호';

COMMENT ON COLUMN cafe.cafeName IS '카페이름';

COMMENT ON COLUMN cafe.cafeHp IS '카페전화번호';

COMMENT ON COLUMN cafe.openTime IS '카페오픈시간';

COMMENT ON COLUMN cafe.closeTime IS '카페마감시간';

COMMENT ON COLUMN cafe.cafeIntro IS '카페소개글';

COMMENT ON COLUMN cafe.url IS '카페URL';

COMMENT ON COLUMN cafe.cafeImg IS '메인이미지경로';

COMMENT ON COLUMN cafe.address IS '출력용주소';

COMMENT ON COLUMN cafe.sido IS '---관리용주소1 시/도';

COMMENT ON COLUMN cafe.sidoDetail IS '---관리용주소2 서울시/경기도만 사용';

CREATE UNIQUE INDEX PK_cafe
   ON cafe (
      cafeNo ASC
   );

ALTER TABLE cafe
   ADD
      CONSTRAINT PK_cafe
      PRIMARY KEY (
         cafeNo
      );

ALTER TABLE cafe
   ADD
      CONSTRAINT FK_users_TO_cafe
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

/************************************************/
/************************************************/

DROP INDEX PK_theme;

/* 테마 */
DROP TABLE theme 
   CASCADE CONSTRAINTS;

/* 테마 */
CREATE TABLE theme (
   themeNo NUMBER NOT NULL, /* 테마번호 */
   cafeNo NUMBER NOT NULL, /* 카페번호 */
   themeName VARCHAR2(50) NOT NULL, /* 테마이름 */
   themeImg VARCHAR2(200), /* 테마포스터 */
   jenre VARCHAR2(20), /* 테마장르 */
   levels NUMBER, /* 테마난이도 */
   themeType VARCHAR2(20), /* 테마유형 */
   playTime NUMBER, /* 플레이타임 */
   activity VARCHAR2(20), /* 테마활동성 */
   themeIntro VARCHAR2(2000), /* 테마소개 */
   pRecommend VARCHAR2(20), /* 추천인원 */
   pMin NUMBER, /* 최소인원 */
   pMax NUMBER /* 최대인원 */
);

COMMENT ON TABLE theme IS '테마';

COMMENT ON COLUMN theme.themeNo IS '테마번호';

COMMENT ON COLUMN theme.cafeNo IS '카페번호';

COMMENT ON COLUMN theme.themeName IS '테마이름';

COMMENT ON COLUMN theme.themeImg IS '테마포스터';

COMMENT ON COLUMN theme.jenre IS '테마장르';

COMMENT ON COLUMN theme.levels IS '테마난이도';

COMMENT ON COLUMN theme.themeType IS '테마유형';

COMMENT ON COLUMN theme.playTime IS '플레이타임';

COMMENT ON COLUMN theme.activity IS '테마활동성';

COMMENT ON COLUMN theme.themeIntro IS '테마소개';

COMMENT ON COLUMN theme.pRecommend IS '추천인원';

COMMENT ON COLUMN theme.pMin IS '최소인원';

COMMENT ON COLUMN theme.pMax IS '최대인원';

CREATE UNIQUE INDEX PK_theme
   ON theme (
      themeNo ASC
   );

ALTER TABLE theme
   ADD
      CONSTRAINT PK_theme
      PRIMARY KEY (
         themeNo
      );

ALTER TABLE theme
   ADD
      CONSTRAINT FK_cafe_TO_theme
      FOREIGN KEY (
         cafeNo
      )
      REFERENCES cafe (
         cafeNo
      );

/************************************************/
/************************************************/

DROP INDEX PK_thmePrice;

/* 테마별가격 */
DROP TABLE thmePrice 
   CASCADE CONSTRAINTS;

/* 테마별가격 */
CREATE TABLE thmePrice (
   themeNo NUMBER NOT NULL, /* 테마번호 */
   headCount NUMBER, /* 인원 */
   price NUMBER /* 가격 */
);

COMMENT ON TABLE thmePrice IS '테마별가격';

COMMENT ON COLUMN thmePrice.themeNo IS '테마번호';

COMMENT ON COLUMN thmePrice.headCount IS '인원';

COMMENT ON COLUMN thmePrice.price IS '가격';

CREATE UNIQUE INDEX PK_thmePrice
   ON thmePrice (
      themeNo ASC
   );

ALTER TABLE thmePrice
   ADD
      CONSTRAINT PK_thmePrice
      PRIMARY KEY (
         themeNo
      );

ALTER TABLE thmePrice
   ADD
      CONSTRAINT FK_theme_TO_thmePrice
      FOREIGN KEY (
         themeNo
      )
      REFERENCES theme (
         themeNo
      );

/************************************************/
/************************************************/

DROP INDEX PK_review;

/* 후기게시판 */
DROP TABLE review 
   CASCADE CONSTRAINTS;

/* 후기게시판 */
CREATE TABLE review (
   reviewNo NUMBER NOT NULL, /* 후기게시판번호 */
   themeNo NUMBER NOT NULL, /* 테마번호 */
   userNo NUMBER NOT NULL, /* 회원번호 */
   feelLevel NUMBER, /* 체감난이도 */
   rating NUMBER, /* 별점 */
   recTime NUMBER, /* 기록시간 */
   reviewHints NUMBER, /* 힌트수 */
   reviewClear VARCHAR2(20), /* 성공여부 */
   memberNum NUMBER, /* 인원수 */
   playDate DATE /* 게임날짜 */
);

COMMENT ON TABLE review IS '후기게시판';

COMMENT ON COLUMN review.reviewNo IS '후기게시판번호';

COMMENT ON COLUMN review.themeNo IS '테마번호';

COMMENT ON COLUMN review.userNo IS '회원번호';

COMMENT ON COLUMN review.feelLevel IS '체감난이도';

COMMENT ON COLUMN review.rating IS '별점';

COMMENT ON COLUMN review.recTime IS '기록시간';

COMMENT ON COLUMN review.reviewHints IS '힌트수';

COMMENT ON COLUMN review.reviewClear IS '성공여부';

COMMENT ON COLUMN review.memberNum IS '인원수';

COMMENT ON COLUMN review.playDate IS '게임날짜';

CREATE UNIQUE INDEX PK_review
   ON review (
      reviewNo ASC
   );

ALTER TABLE review
   ADD
      CONSTRAINT PK_review
      PRIMARY KEY (
         reviewNo
      );

ALTER TABLE review
   ADD
      CONSTRAINT FK_theme_TO_review
      FOREIGN KEY (
         themeNo
      )
      REFERENCES theme (
         themeNo
      );

ALTER TABLE review
   ADD
      CONSTRAINT FK_users_TO_review
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

DROP INDEX PK_reserveDate;

/* 예약날짜 */
DROP TABLE reserveDate 
   CASCADE CONSTRAINTS;

/* 예약날짜 */
CREATE TABLE reserveDate (
   reserveDateNo NUMBER NOT NULL, /* 예약날짜번호 */
   themeNo NUMBER NOT NULL, /* 테마번호 */
   reserveDate DATE NOT NULL /* 예약날짜 */
);

COMMENT ON TABLE reserveDate IS '예약날짜';

COMMENT ON COLUMN reserveDate.reserveDateNo IS '예약날짜번호';

COMMENT ON COLUMN reserveDate.themeNo IS '테마번호';

COMMENT ON COLUMN reserveDate.reserveDate IS '예약날짜';

CREATE UNIQUE INDEX PK_reserveDate
   ON reserveDate (
      reserveDateNo ASC
   );

ALTER TABLE reserveDate
   ADD
      CONSTRAINT PK_reserveDate
      PRIMARY KEY (
         reserveDateNo
      );

ALTER TABLE reserveDate
   ADD
      CONSTRAINT FK_theme_TO_reserveDate
      FOREIGN KEY (
         themeNo
      )
      REFERENCES theme (
         themeNo
      );
        
DROP INDEX PK_reserveTime;

/* 예약시간 */
DROP TABLE reserveTime 
   CASCADE CONSTRAINTS;

/* 예약시간 */
CREATE TABLE reserveTime (
   reserveTimeNo NUMBER NOT NULL, /* 예약시간번호 */
   reserveDateNo NUMBER NOT NULL, /* 예약날짜번호 */
   reserveTime VARCHAR(20), /* 예약시간 */
   reserveState VARCHAR2(20) /* 업체예약상태표시용 */
);

COMMENT ON TABLE reserveTime IS '예약시간';

COMMENT ON COLUMN reserveTime.reserveTimeNo IS '예약시간번호';

COMMENT ON COLUMN reserveTime.reserveDateNo IS '예약날짜번호';

COMMENT ON COLUMN reserveTime.reserveTime IS '예약시간';

COMMENT ON COLUMN reserveTime.reserveState IS '업체예약상태표시용';

CREATE UNIQUE INDEX PK_reserveTime
   ON reserveTime (
      reserveTimeNo ASC
   );

ALTER TABLE reserveTime
   ADD
      CONSTRAINT PK_reserveTime
      PRIMARY KEY (
         reserveTimeNo
      );

ALTER TABLE reserveTime
   ADD
      CONSTRAINT FK_reserveDate_TO_reserveTime
      FOREIGN KEY (
         reserveDateNo
      )
      REFERENCES reserveDate (
         reserveDateNo
      );
        
DROP INDEX PK_reserve;

/* 예약정보 */
DROP TABLE reserve 
   CASCADE CONSTRAINTS;

/* 예약정보 */
CREATE TABLE reserve (
   reserveNo NUMBER NOT NULL, /* 예약번호 */
   reserveTimeNo NUMBER NOT NULL, /* 예약시간번호 */
   reserveName VARCHAR2(20), /* 예약자이름 */
   reserveHp VARCHAR2(20), /* 핸드폰번호 */
   payment VARCHAR2(20), /* 결제금액 */
   reservePerson NUMBER, /* 예약인원 */
   paymentState VARCHAR2(20) /* 결제상태 */
);

COMMENT ON TABLE reserve IS '예약정보';

COMMENT ON COLUMN reserve.reserveNo IS '예약번호';

COMMENT ON COLUMN reserve.reserveTimeNo IS '예약시간번호';

COMMENT ON COLUMN reserve.reserveName IS '예약자이름';

COMMENT ON COLUMN reserve.reserveHp IS '핸드폰번호';

COMMENT ON COLUMN reserve.payment IS '결제금액';

COMMENT ON COLUMN reserve.reservePerson IS '예약인원';

COMMENT ON COLUMN reserve.paymentState IS '결제상태';

CREATE UNIQUE INDEX PK_reserve
   ON reserve (
      reserveNo ASC
   );

ALTER TABLE reserve
   ADD
      CONSTRAINT PK_reserve
      PRIMARY KEY (
         reserveNo
      );

ALTER TABLE reserve
   ADD
      CONSTRAINT FK_reserveTime_TO_reserve
      FOREIGN KEY (
         reserveTimeNo
      )
      REFERENCES reserveTime (
         reserveTimeNo
      );

DROP INDEX PK_reservePeople;

/* 예약회원 */
DROP TABLE reservePeople 
   CASCADE CONSTRAINTS;

/* 예약회원 */
CREATE TABLE reservePeople (
   reserveMemberNo NUMBER NOT NULL, /* 예약맴버번호 */
   reserveNo NUMBER NOT NULL, /* 예약번호 */
   userNo NUMBER NOT NULL /* 회원번호 */
);

COMMENT ON TABLE reservePeople IS '예약회원';

COMMENT ON COLUMN reservePeople.reserveMemberNo IS '예약맴버번호';

COMMENT ON COLUMN reservePeople.reserveNo IS '예약번호';

COMMENT ON COLUMN reservePeople.userNo IS '회원번호';

CREATE UNIQUE INDEX PK_reservePeople
   ON reservePeople (
      reserveMemberNo ASC
   );

ALTER TABLE reservePeople
   ADD
      CONSTRAINT PK_reservePeople
      PRIMARY KEY (
         reserveMemberNo
      );

ALTER TABLE reservePeople
   ADD
      CONSTRAINT FK_reserve_TO_reservePeople
      FOREIGN KEY (
         reserveNo
      )
      REFERENCES reserve (
         reserveNo
      );

ALTER TABLE reservePeople
   ADD
      CONSTRAINT FK_users_TO_reservePeople
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

DROP INDEX PK_partyApplicant;

/* 파티지원맴버 */
DROP TABLE partyApplicant 
   CASCADE CONSTRAINTS;

/* 파티지원맴버 */
CREATE TABLE partyApplicant (
   partyNo NUMBER NOT NULL, /* 파티리스트번호 */
   userNo NUMBER NOT NULL /* 회원번호 */
);

COMMENT ON TABLE partyApplicant IS '파티지원맴버';

COMMENT ON COLUMN partyApplicant.partyNo IS '파티리스트번호';

COMMENT ON COLUMN partyApplicant.userNo IS '회원번호';

CREATE UNIQUE INDEX PK_partyApplicant
   ON partyApplicant (
      partyNo ASC
   );

ALTER TABLE partyApplicant
   ADD
      CONSTRAINT PK_partyApplicant
      PRIMARY KEY (
         partyNo
      );

ALTER TABLE partyApplicant
   ADD
      CONSTRAINT FK_party_TO_partyApplicant
      FOREIGN KEY (
         partyNo
      )
      REFERENCES party (
         partyNo
      );

ALTER TABLE partyApplicant
   ADD
      CONSTRAINT FK_users_TO_partyApplicant
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

DROP INDEX PK_partyDetail;

/* 파티승인맴버 */
DROP TABLE partyDetail 
   CASCADE CONSTRAINTS;

/* 파티승인맴버 */
CREATE TABLE partyDetail (
   partyNo NUMBER NOT NULL, /* 파티리스트번호 */
   userNo NUMBER NOT NULL, /* 회원번호 */
   userState VARCHAR2(50) NOT NULL /* 유저상태 */
);

COMMENT ON TABLE partyDetail IS '파티승인맴버';

COMMENT ON COLUMN partyDetail.partyNo IS '파티리스트번호';

COMMENT ON COLUMN partyDetail.userNo IS '회원번호';

COMMENT ON COLUMN partyDetail.userState IS '유저상태';

CREATE UNIQUE INDEX PK_partyDetail
   ON partyDetail (
      partyNo ASC
   );

ALTER TABLE partyDetail
   ADD
      CONSTRAINT PK_partyDetail
      PRIMARY KEY (
         partyNo
      );

ALTER TABLE partyDetail
   ADD
      CONSTRAINT FK_party_TO_partyDetail
      FOREIGN KEY (
         partyNo
      )
      REFERENCES party (
         partyNo
      );

ALTER TABLE partyDetail
   ADD
      CONSTRAINT FK_users_TO_partyDetail
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

/* 카페이미지 */
DROP TABLE interiorImg 
   CASCADE CONSTRAINTS;

/* 카페이미지 */
CREATE TABLE interiorImg (
   cafeNo NUMBER NOT NULL, /* 카페번호 */
   img VARCHAR2(200) /* 인테리어이미지경로 */
);

COMMENT ON TABLE interiorImg IS '카페이미지';

COMMENT ON COLUMN interiorImg.cafeNo IS '카페번호';

COMMENT ON COLUMN interiorImg.img IS '인테리어이미지경로';

ALTER TABLE interiorImg
   ADD
      CONSTRAINT FK_cafe_TO_interiorImg
      FOREIGN KEY (
         cafeNo
      )
      REFERENCES cafe (
         cafeNo
      );

DROP INDEX PK_preRecord;

/* 게임정보 */
DROP TABLE preRecord 
   CASCADE CONSTRAINTS;

/* 게임정보 */
CREATE TABLE preRecord (
   gameNo NUMBER NOT NULL, /* 게임번호 */
   themeNo NUMBER NOT NULL, /* 테마번호 */
   regDate DATE, /* 입실한 날짜 */
   totalPerson NUMBER, /* 총인원 */
   gameState VARCHAR2(20) /* 게임상태 */
);

COMMENT ON TABLE preRecord IS '게임정보';

COMMENT ON COLUMN preRecord.gameNo IS '게임번호';

COMMENT ON COLUMN preRecord.themeNo IS '테마번호';

COMMENT ON COLUMN preRecord.regDate IS '입실한 날짜';

COMMENT ON COLUMN preRecord.totalPerson IS '총인원';

COMMENT ON COLUMN preRecord.gameState IS '게임상태';

CREATE UNIQUE INDEX PK_preRecord
   ON preRecord (
      gameNo ASC
   );

ALTER TABLE preRecord
   ADD
      CONSTRAINT PK_preRecord
      PRIMARY KEY (
         gameNo
      );

ALTER TABLE preRecord
   ADD
      CONSTRAINT FK_theme_TO_preRecord
      FOREIGN KEY (
         themeNo
      )
      REFERENCES theme (
         themeNo
      );
        
DROP INDEX PK_record;

/* 개인별경기기록 */
DROP TABLE record 
   CASCADE CONSTRAINTS;

/* 개인별경기기록 */
CREATE TABLE record (
   recordNo NUMBER NOT NULL, /* 경기기록번호 */
   gameNo NUMBER NOT NULL, /* 게임번호 */
   userNo NUMBER NOT NULL, /* 회원번호 */
   recordTime NUMBER, /* 기록시간 */
   recordHints NUMBER, /* 힌트수 */
   recordClear VARCHAR2(20) /* 성공여부 */
);

COMMENT ON TABLE record IS '개인별경기기록';

COMMENT ON COLUMN record.recordNo IS '경기기록번호';

COMMENT ON COLUMN record.gameNo IS '게임번호';

COMMENT ON COLUMN record.userNo IS '회원번호';

COMMENT ON COLUMN record.recordTime IS '기록시간';

COMMENT ON COLUMN record.recordHints IS '힌트수';

COMMENT ON COLUMN record.recordClear IS '성공여부';

CREATE UNIQUE INDEX PK_record
   ON record (
      recordNo ASC
   );

ALTER TABLE record
   ADD
      CONSTRAINT PK_record
      PRIMARY KEY (
         recordNo
      );

ALTER TABLE record
   ADD
      CONSTRAINT FK_preRecord_TO_record
      FOREIGN KEY (
         gameNo
      )
      REFERENCES preRecord (
         gameNo
      );

ALTER TABLE record
   ADD
      CONSTRAINT FK_users_TO_record
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         userNo
      );

create sequence userNO increment by 1 start with 1 nocache;

create sequence cafeNo increment by 1 start with 1 nocache;

create sequence themeNo increment by 1 start with 1 nocache;

create sequence partyNo increment by 1 start with 1 nocache;

create sequence reserveDateNo increment by 1 start with 1 nocache;

create sequence reserveTimeNo increment by 1 start with 1 nocache;

create sequence reserveNo increment by 1 start with 1 nocache;

create sequence reserveMemberNo increment by 1 start with 1 nocache;

create sequence reviewNo increment by 1 start with 1 nocache;

create sequence recordNo increment by 1 start with 1 nocache;

create sequence gameNo increment by 1 start with 1 nocache;