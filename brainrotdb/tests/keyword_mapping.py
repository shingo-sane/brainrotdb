# Single source of truth for the BrainrotDB keyword names
# (new name, parser token, array, original name or None)
SYMBOLS = [
  ("CORTISOL",      "CREATE",       "CREATE"),
  ("RIZZ",          "ALTER",        "ALTER"),
  ("DRIPPADROPPA",  "DROP",         "DROP"),
  ("UNC",           "TRUNCATE_SYM", "TRUNCATE"),
  ("TROLL",         "RENAME",       "RENAME"),
  ("PORK",          "COMMENT_SYM",  "COMMENT"),
  ("YAP",           "INSERT",       "INSERT"),
  ("GLAZE",         "UPDATE_SYM",   "UPDATE"),
  ("COOK",          "DELETE_SYM",   "DELETE"),
  ("FANUM",         "MERGE_SYM",    "MERGE"),
  ("SKIBIDI",       "SELECT_SYM",   "SELECT"),
  ("OG",            "FROM",         "FROM"),
  ("WHIP",          "WHERE",        "WHERE"),
  ("MOG",           "DISTINCT",     "DISTINCT"),
  ("AURA",          "GROUP_SYM",    "GROUP"),
  ("CRAVING",       "HAVING",       "HAVING"),
  ("EDGE",          "LIMIT",        "LIMIT"),
  ("CUMSHOT",       "OFFSET_SYM",   "OFFSET"),
  ("BALL",          "JOIN_SYM",     None),
  ("BALLER",        "JOIN_SYM",     None),
  ("JOINT",         "JOIN_SYM",     "JOIN"),
  ("PHONK",         "UNION_SYM",    "UNION"),
  ("ASS",           "AS",           "AS"),
  ("LOCKEDIN",      "IN_SYM",       "IN"),
  ("LOWKEY",        "BETWEEN_SYM",  "BETWEEN"),
  ("WISHIWASLIKEU", "LIKE",         "LIKE"),
  ("TUFF",          "NULL_SYM",     "NULL"),
  ("AMONGUS",       "EXISTS",       "EXISTS"),
  ("LOW",           "OR_SYM",       "OR"),
  ("FENT",          "AND_SYM",      "AND"),
  ("BASED",         "AVG_SYM",      "AVG"),
  ("DIH",           "KEY_SYM",      "KEY"),
  ("UNIDIH",        "UNIQUE_SYM",   "UNIQUE"),
  ("JACKY",         "CHECK_SYM",    "CHECK"),
  ("NPC",           "DEFAULT",      "DEFAULT"),
  ("INCEST",        "INDEX_SYM",    "INDEX"),
]
# FARM = BY (only so that "AURA FARM" works; BY itself stays BY)
EARLY_SYMBOLS = [("FARM", "BY", None)]
FUNCTIONS = [
  ("AURAFARM", "COUNT_SYM", "COUNT"),
  ("SON",      "SUM_SYM",   "SUM"),
  ("MINIMAN",  "MIN_SYM",   "MIN"),
  ("MAXXING",  "MAX_SYM",   "MAX"),
]
# old keyword -> what to tell the user (and what SHOW CREATE prints)
SPECIAL_OLD = {"ORDER": "MOG BY", "GROUP": "AURA FARM"}

def legacy():
    out = [(old, new) for new, tok, old in SYMBOLS + FUNCTIONS if old]
    out.append(("ORDER", "MOG BY"))
    out = [(o, SPECIAL_OLD.get(o, n)) for o, n in out]
    return out
