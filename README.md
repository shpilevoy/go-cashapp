```bash
docker run -dp 5432:5432 cashapp-postgres
```

```bash
psql -h localhost -p 5432 -d cashapp -U cashapp
```

```bash
migrate -source file:migrations/ -database "postgresql://cashapp:securepassword@localhost:5432/cashapp?sslmode=disable" up
```

```bash
migrate -source file:migrations/ -database "postgresql://cashapp:securepassword@localhost:5432/cashapp?sslmode=disable" down
```

