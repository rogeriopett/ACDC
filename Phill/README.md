# Phill
API em horse do ERP da Runtime

## Comandos git.

### Criar novo repositório.
```
echo "# phill" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/rogeriopett/phill.git
git push -u origin main
```

### Usar um repositório já existente.
```
git remote add origin https://github.com/rogeriopett/phill.git
git branch -M main
git push -u origin main
```

### remover arquivos do repositorio.
```
git rm --cached -r *.dcu
git commit -m "Removendo arquivos .DCU do repositório"
git push origin main
```


