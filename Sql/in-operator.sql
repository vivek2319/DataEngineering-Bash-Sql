-- Who are the people with the Library IDs of MCL1001, MCL1100 or MCL1011?

-- SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2> OR <condition 3>;

SELECT first_name, email FROM patrons WHERE library_id = "MCL1001" OR library_id = "MCL1100" OR library_id = "MCL1011";


-- Simplified version using IN operator


-- Who are the people with the Library IDs of MCL1001, MCL1100 or MCL1011?

-- SELECT <columns> FROM <table> WHERE <column> IN (<value 1>, <value 2>, <value …>);

SELECT first_name, email FROM patrons WHERE library_id IN ("MCL1001", "MCL1100", "MCL1011");

