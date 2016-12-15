---
layout: slide
title: "REST: Anbindung an den Server"
id: server-rest
---
<section markdown="1">

### Request

{% highlight javascript %}
Request URL:https://test.wroomer.com/v1/storage/filter/list
Request Method:GET
Status Code:200 OK
Remote Address:91.90.149.67:443
{% endhighlight %}

</section>

<section markdown="1">

### Response Header

{% highlight javascript %}
Access-Control-Allow-Credentials:true
Access-Control-Allow-Headers:Set-Cookie
Access-Control-Expose-Headers:Set-Cookie
Cache-Control:no-cache, no-store, max-age=0, must-revalidate
Connection:keep-alive
Content-Encoding:gzip
Content-Type:application/json;charset=UTF-8
Date:Thu, 15 Dec 2016 13:08:28 GMT
Expires:0
Pragma:no-cache
Server:nginx/1.6.2
Transfer-Encoding:chunked
Vary:Accept-Encoding
X-Content-Type-Options:nosniff
X-Frame-Options:SAMEORIGIN
X-XSS-Protection:1; mode=block
{% endhighlight %}


</section>

<section markdown="1">

### Response Body: JSON

{% highlight javascript %}
{"number_of_filters_found":0,"stored_filters":[]}
{% endhighlight %}

</section>
