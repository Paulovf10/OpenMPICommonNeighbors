# Compilador e flags
CC = gcc
CFLAGS = -Iinclude -Wall -Wextra

# Arquivos fonte
SRC_SEQ = src/grafo.c src/util.c src/versao_sequencial.c
OBJ_SEQ = $(SRC_SEQ:.c=.o)

# Diretório do executável
BIN_DIR = bin

# Regra principal
all: $(BIN_DIR)/versao_sequencial

# Compilação do executável sequencial
$(BIN_DIR)/versao_sequencial: $(OBJ_SEQ)
	$(CC) $(CFLAGS) -o $@ $(OBJ_SEQ)

# Compilação dos arquivos objeto
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpeza dos arquivos gerados
clean:
	rm -f src/*.o $(BIN_DIR)/versao_sequencial
