import axios from "axios";

const Api = axios.create({
    baseURL: import.meta.env.VITE_URL_API //'https://brian.gpautoar.com.br/api/'
    //crossdomain: true,
    //headers: { 'Access-Control-Allow-Origin':'*' }
})

// Use isso em vez de confiar no Api.defaults do AuthProvider
Api.interceptors.request.use(config => {
    const token = localStorage.getItem('token');
    if (token) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
}, error => {
    return Promise.reject(error);
});

export default Api;