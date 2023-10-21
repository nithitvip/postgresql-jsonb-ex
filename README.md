# Operator

access key
->
```sql
select "data", "data"->'account_id' as account_id , pg_typeof("data"->'account_id') from example_json;
```
postgreql >= 14

```sql
select "data", "data"['account_id'], pg_typeof("data"['account_id']) from example_json;
```

as text
->>
```sql
select "data", "data"->>'account_id' as account_id , pg_typeof("data"->>'account_id') from example_json;
```

work with array
```sql
select "data", "data"->> 0, pg_typeof("data"->> 0) from example_json ej;

```

#>
```sql
select "data", "data" #> '{address, country}', pg_typeof("data" #> '{address, country}') from example_json;

```
#>>
```sql
select "data", "data" #>> '{address, country}', pg_typeof("data" #>> '{address, country}') from example_json;
```

only jsonb operator
@> contain
```sql
select "data", "data" ? 'address' from example_json;
select "data", "data" -> 'address' ? 'remark' from example_json;
```

? key exists
```sql
select "data", "data" ? 'address' from example_json;
select "data", "data" -> 'address' ? 'remark' from example_json;
```
@@ json path

```sql
select "data", "data" @@ '$[*].account_id == 1' from example_json;
```

# Function

jsonb_pretty
```sql
select jsonb_pretty("data") from example_json;
```

jsonb_array_elements
```sql
select jsonb_array_elements("data"), pg_typeof(jsonb_array_elements("data")) from example_json where id = 6;
select j,j->>'name', j->'address'->>'country'  from example_json cross join jsonb_array_elements("data") as j where id = 6 ;
```

jsonb_object_keys
```sql
select *  from example_json , jsonb_object_keys("data") j where id = 2;
```

json_each
```sql
select j.key, j.value  from example_json , jsonb_each("data") j where id = 2;
```