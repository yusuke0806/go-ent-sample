include .env

POSTGRES_DSN = "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_ADDRESS)/$(POSTGRES_DATABASE)?sslmode=disable"

migrate-up:
	atlas migrate apply --dir "file://ent/migrate/migrations" --url $(POSTGRES_DSN)