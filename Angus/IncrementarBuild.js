import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// Configuração para ES Modules (Vite usa por padrão)
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const envPath = path.resolve(__dirname, '.env');

try {
    const content = fs.readFileSync(envPath, 'utf8');
    
    // Regex para encontrar VITE_BUILD independente do que houver em volta
    const buildRegex = /VITE_BUILD=(\d+)/;
    const match = content.match(buildRegex);
    
    const currentBuild = match ? parseInt(match[1], 10) : 0;
    const newBuild = currentBuild + 1;

    let updatedContent;
    if (match) {
        // Atualiza o valor existente
        updatedContent = content.replace(buildRegex, `VITE_BUILD=${newBuild}`);
    } else {
        // Adiciona se não existir
        updatedContent = content + `\nVITE_BUILD=${newBuild}`;
    }

    fs.writeFileSync(envPath, updatedContent);

    console.log(`\x1b[1m\x1b[44m\x1b[37m ###################################### \x1b[0m`);
    console.log(`\x1b[1m\x1b[44m\x1b[37m ##  Vite Build updated to: ${newBuild}      ## \x1b[0m`);
    console.log(`\x1b[1m\x1b[44m\x1b[37m ###################################### \x1b[0m`);

} catch (err) {
    console.error('Erro ao atualizar o build no .env:', err);
}