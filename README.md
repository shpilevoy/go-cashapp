`docker run -dp 5432:5432 cashapp-postgres`

```bash
migrate -source file:migrations/ -database "postgresql://postgres:mysecretpassword@localhost:5432/cashapp?sslmode=disable" up
```

```bash
migrate -source file:migrations/ -database "postgresql://postgres:mysecretpassword@localhost:5432/cashapp?sslmode=disable" force 1
```


