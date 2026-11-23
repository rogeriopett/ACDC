import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const envPath = path.resolve(__dirname, '.env');

try {
    const content = fs.readFileSync(envPath, 'utf8');
    
    // Regex para encontrar VITE_COMPILE (novo padrão Vite)
    const compileRegex = /VITE_COMPILE=(\d+)/;
    const match = content.match(compileRegex);
    
    const currentCompile = match ? parseInt(match[1], 10) : 0;
    const newCompile = currentCompile + 1;

    let updatedContent;
    if (match) {
        updatedContent = content.replace(compileRegex, `VITE_COMPILE=${newCompile}`);
    } else {
        updatedContent = content + `\nVITE_COMPILE=${newCompile}`;
    }

    fs.writeFileSync(envPath, updatedContent);

    // Cores: Fundo Azul, Texto Amarelo (seguindo seu estilo)
    console.log(`\x1b[1m\x1b[44m\x1b[33m ###################################### \x1b[0m`);
    console.log(`\x1b[1m\x1b[44m\x1b[33m ## Compile number updated to: ${newCompile}    ## \x1b[0m`);
    console.log(`\x1b[1m\x1b[44m\x1b[33m ###################################### \x1b[0m`);

} catch (err) {
    console.error('Erro ao atualizar o compile no .env:', err);
}