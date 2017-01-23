package au.com.pwc.forex

import groovy.json.JsonSlurper
import org.apache.http.HttpException
import org.apache.http.HttpResponse
import org.apache.http.client.HttpClient
import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClientBuilder

class HttpService {

    def get(String url) {
        HttpClient httpClient = HttpClientBuilder.create().build()
        HttpGet request = new HttpGet(url)
        request.addHeader("Accept", "application/json")

        HttpResponse response = httpClient.execute(request)

        if (response.getStatusLine().getStatusCode() != 200) {
            throw new HttpException("Non 200 response from external API")
        }

        BufferedReader br = new BufferedReader(new InputStreamReader(response.getEntity().getContent()))

        StringBuilder result = new StringBuilder()
        String line = ""

        while ((line = br.readLine()) != null) {
            result.append(line)
        }

        return new JsonSlurper().parseText(result.toString())
    }
}
