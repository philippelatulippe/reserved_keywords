#!/bin/sh
sqlite3 reserved_keywords.sqlite3 <<EOF
CREATE TABLE keywords(language TEXT, version TEXT, keyword TEXT, context TEXT);
.mode csv
.import reserved_keywords.csv keywords
DELETE FROM keywords WHERE language = 'language' AND version = 'version';
EOF
