import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

// https://vite.dev/config/
export default defineConfig({
    plugins: [react()],
    build: {
        sourcemap: false, // Desativa a geração dos arquivos .map
        minify: 'esbuild', // Garante que o código seja minificado
    },
    define: {
        'process.env': {} // Adicione esta linha para evitar o erro de referência
    },
})
