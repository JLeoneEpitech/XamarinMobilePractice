using System;
using System.Collections.Generic;
using System.Net.Http;
using Newtonsoft.Json; 
using System.Threading.Tasks;

public class ApiClient : IDisposable
{

    private readonly HttpClient _http = new HttpClient();

    public async Task<List<T>> GetAsync<T>(string url)
    {
        try
        {
            using (var resp = await _http.GetAsync(url)) // GET
            {
                resp.EnsureSuccessStatusCode(); //S'assurer que le statuscode commence par 2xx - Possilbe aussi de faire resp.IsSuccessStatusCode  == 200 et gérer les exceptions
                var json = await resp.Content.ReadAsStringAsync(); //GET the json
                var result = JsonConvert.DeserializeObject<List<T>>(json); // Désérialize the result to be used as a list of T
                return result ?? new List<T>(); //return result or list by default if error - can be upgrade later
            }   
        }
        catch (Exception)
        {
            return new List<T>();
        }

    }
    public void Dispose() => _http.Dispose();
}