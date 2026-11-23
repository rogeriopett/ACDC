import { defineConfig } from 'vite'
import react, { reactCompilerPreset } from '@vitejs/plugin-react'
import babel from '@rolldown/plugin-babel'

// https://vite.dev/config/
export default defineConfig({
    plugins: [ react(), babel({ presets: [reactCompilerPreset()]}) ],
    build: {
        sourcemap: false, // Desativa a geração dos arquivos .map
        minify: 'esbuild', // Garante que o código seja minificado
    },
    define: {
        'process.env': {} // Adicione esta linha para evitar o erro de referência
    },

    // server: {
    //     proxy: {
    //         // Quando você chamar '/api', o Vite desvia para o Delphi no 9000
    //         '/api': {
    //             target: 'http://localhost:9000',
    //             changeOrigin: true,
    //             rewrite: (path) => path.replace(/^\/api/, ''), // Remove o '/api' antes de enviar
    //         },    
    //     }
    // }
})
