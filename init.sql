CREATE TABLE public.example_json (
	id serial4 PRIMARY KEY NOT NULL,
	"data" jsonb NULL
);

INSERT INTO example_json (id, "data") VALUES (1, '{}');
INSERT INTO example_json (id, "data") VALUES (2, '{"account_id": 1, "name": "a", "address": {"country": "THA", "province":"bangkok" , "remark": "test"}}');
INSERT INTO example_json (id, "data") VALUES (3, '{"account_id": 2, "name": "b"}, "address": {"country": "THA", "province":"sing buri" }');
INSERT INTO example_json (id, "data") VALUES (4, '[1,2,3]');
INSERT INTO example_json (id, "data") VALUES (5, '[]');
INSERT INTO example_json (id, "data") VALUES (6, '[{"account_id": 1, "name": "a", "address": {"country": "THA", "province":"bangkok" , "remark": "test"}}, {"account_id": 2, "name": "b", "address": {"country": "THA", "province":"sing buri" }}]');
