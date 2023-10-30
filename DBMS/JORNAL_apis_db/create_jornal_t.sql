CREATE TABLE jornal (
    "дата_осмотра"  VARCHAR(15) NOT NULL,
    "сила_семьи(улочек)" TINYINT,
    "всего_рамок" TINYINT,
    "порода_матки"  VARCHAR(35),
    "возраст_матки"  TINYINT,
    "продуктивность"  VARCHAR(35),
    "дано_вощины_листов"  TINYINT,
    "другие_сведения"  VARCHAR(135) NOT NULL,
    "номер_улья"  VARCHAR(35) NOT NULL
);