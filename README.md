`reserved_keywords.csv` contains a table of reserved keywords in different
languages. It's useful when designing web APIs. By avoiding these keywords,
code can always be automatically generated from specs, and field naming
workarounds can be avoided.

Use `convert_to_sqlite3.sh` to create `reserved_keywords.sqlite3`, then open it
with sqlite3. Here's a few queries that might serve your needs.

Get all reserved keywords without duplicates

    SELECT keyword FROM keywords GROUP BY keyword ORDER BY keyword ASC;

Get all reserved keywords for the languages you care about

    SELECT keyword FROM keywords WHERE language in ('java','javascript','swift') ORDER BY keyword ASC;

Reserved keyword count by programming language

    SELECT language,COUNT(keyword) FROM keywords GROUP BY language;

I have attempted to include all reserved keywords for the latest version of the
included languages. There are many popular languages missing from the
table. Pull Requests welcome!
