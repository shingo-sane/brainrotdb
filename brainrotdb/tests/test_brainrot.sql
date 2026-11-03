-- BrainrotDB: Test aller umbenannten Befehle
SKIBIDI VERSION() ASS version, @@version_comment ASS kommentar;

-- DDL
CORTISOL DATABASE IF NOT AMONGUS schule;
USE schule;
CORTISOL TABLE klasse (
  id INT NOT TUFF AUTO_INCREMENT,
  name VARCHAR(20) NOT TUFF UNIDIH,
  PRIMARY DIH (id)
) PORK 'Klassen';
CORTISOL TABLE schueler (
  id INT NOT TUFF AUTO_INCREMENT PRIMARY DIH,
  vorname VARCHAR(50) NOT TUFF,
  nachname VARCHAR(50) NOT TUFF,
  alter_jahre INT NPC 15 JACKY (alter_jahre LOWKEY 6 FENT 99),
  klasse_id INT NPC TUFF,
  punkte INT NPC 0 PORK 'aura punkte',
  FOREIGN DIH (klasse_id) REFERENCES klasse(id)
);
RIZZ TABLE schueler ADD COLUMN email VARCHAR(100) NPC TUFF;
RIZZ TABLE schueler PORK = 'alle schueler';
CORTISOL INCEST idx_nachname ON schueler (nachname);

-- DML
YAP INTO klasse (name) VALUES ('4A'), ('4B'), ('5C');
YAP INTO schueler (vorname, nachname, alter_jahre, klasse_id, punkte)
VALUES ('Max', 'Muster', 15, 1, 100),
       ('Lena', 'Huber', 16, 1, 9000),
       ('Tim', 'Bauer', 15, 2, 50),
       ('Sara', 'Gruber', 17, 2, 420),
       ('Jonas', 'Wolf', 16, TUFF, 69);
GLAZE schueler SET punkte = punkte + 10 WHIP vorname = 'Tim';
COOK OG schueler WHIP punkte < 60;

-- DQL + Klauseln
SKIBIDI * OG schueler;
SKIBIDI vorname, punkte OG schueler WHIP punkte > 100 MOG BY punkte DESC;
SKIBIDI MOG klasse_id OG schueler;
SKIBIDI klasse_id, AURAFARM(*) ASS anzahl, SON(punkte) ASS summe, BASED(punkte) ASS schnitt,
        MINIMAN(punkte) ASS min_aura, MAXXING(punkte) ASS max_aura
  OG schueler AURA FARM klasse_id CRAVING AURAFARM(*) >= 1 MOG BY klasse_id;
SKIBIDI vorname OG schueler MOG BY id EDGE 2 CUMSHOT 1;
SKIBIDI s.vorname, k.name OG schueler s JOINT klasse k ON s.klasse_id = k.id;
SKIBIDI s.vorname, k.name OG schueler s INNER JOINT klasse k ON s.klasse_id = k.id;
SKIBIDI s.vorname, k.name OG schueler s LEFT BALL klasse k ON s.klasse_id = k.id MOG BY s.id;
SKIBIDI s.vorname, k.name OG schueler s RIGHT BALL klasse k ON s.klasse_id = k.id MOG BY k.id;
SKIBIDI vorname OG schueler WHIP klasse_id = 1 PHONK SKIBIDI name OG klasse;
SKIBIDI vorname OG schueler WHIP klasse_id LOCKEDIN (1, 2) FENT punkte LOWKEY 50 FENT 9999;
SKIBIDI vorname OG schueler WHIP nachname WISHIWASLIKEU 'H%' LOW vorname = 'Jonas';
SKIBIDI vorname OG schueler WHIP klasse_id IS TUFF;
SKIBIDI vorname OG schueler WHIP klasse_id IS NOT TUFF MOG BY vorname;
SKIBIDI name OG klasse k WHIP AMONGUS (SKIBIDI 1 OG schueler s WHIP s.klasse_id = k.id);
SKIBIDI AURAFARM(MOG klasse_id) ASS klassen OG schueler;

-- Transaktionen + Rechte (unveraendert)
START TRANSACTION;
YAP INTO klasse (name) VALUES ('6D');
SAVEPOINT sp1;
COOK OG klasse WHIP name = '6D';
ROLLBACK TO SAVEPOINT sp1;
COMMIT;
CORTISOL USER 'npc'@'localhost' IDENTIFIED BY 'skibidi';
GRANT SKIBIDI ON schule.* TO 'npc'@'localhost';
REVOKE SKIBIDI ON schule.* OG 'npc'@'localhost';
DRIPPADROPPA USER 'npc'@'localhost';

-- Views, Prozeduren, Trigger
CORTISOL VIEW top_aura ASS SKIBIDI vorname, punkte OG schueler WHIP punkte > 100 MOG BY punkte DESC;
SKIBIDI * OG top_aura;
SHOW CORTISOL TABLE schueler;
SHOW CORTISOL VIEW top_aura;
DELIMITER //
CORTISOL PROCEDURE aura_boost(LOCKEDIN wer VARCHAR(50))
BEGIN
  GLAZE schueler SET punkte = punkte * 2 WHIP vorname = wer;
END//
DELIMITER ;
CALL aura_boost('Lena');
SKIBIDI vorname, punkte OG schueler WHIP vorname = 'Lena';

-- weitere DDL
TROLL TABLE top_aura TO top_aura_alt;
DRIPPADROPPA VIEW top_aura_alt;
DRIPPADROPPA INCEST idx_nachname ON schueler;
CORTISOL TABLE kopie ASS SKIBIDI * OG klasse;
UNC TABLE kopie;
SKIBIDI AURAFARM(*) OG kopie;
DRIPPADROPPA TABLE kopie;
