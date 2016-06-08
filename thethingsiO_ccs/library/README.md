  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-arduino" class="anchor" href="#energia" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Texas Instruments Energia</h1>

<p>Texas Instruments library and examples to connect to <a href="http://thethings.iO">http://thethings.iO</a></p>

<h2><a id="user-content-comments" class="anchor" href="#comments" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Comments</h2>

This library was tested with Energia on the CC3200 launchpad and on the MSP-EXP432P401R Launchpad with the CC3100 booster.

Due to a bug in the drivers for the MSP-EXP432P401R Launchpad, the geolocalization option is not working at the moment.

<h2><a id="user-content-installation" class="anchor" href="#installation" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Installation</h2>

<p>Clone this repository and copy or link the TheThingsiO_ti folder in your Energia library folder</p>

<h2><a id="user-content-library-reference" class="anchor" href="#library-reference" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Library Reference</h2>

<p>If you want to use the WiFi client you should <code>#include &lt;WiFi.h&gt;</code> before including this library. Then include this library with <code>#include &lt;thethingsiO_ti.h&gt;</code>.</p>

<div class="highlight highlight-source-c++"><pre>
<span class="pl-k">// Initialize WiFi
WiFi.begin(ssid, password);
while ( WiFi.status() != WL_CONNECTED) {
	// print dots while we wait to connect
    Serial.print(".");
    delay(300);
}
Serial.println("\nYou're connected to the network");
Serial.println("Waiting for an ip address");
while (WiFi.localIP() == INADDR_NONE) {
	// print dots while we wait for an ip addresss
    Serial.print(".");
    delay(300);
}
Serial.println("\nIP Address obtained"</span>);</pre></div>

<div class="highlight highlight-source-c++"><pre><span class="pl-en">thethingsiOWiFi_ti;</span>

<span class="pl-en">thethingsiOWiFi</span>(String token);/pre></div>

<p>Create a new client. The first form is used to activate new things with the <code>activate(String)</code> method. The second form sets the token for an already activated thing.</p>

<div class="highlight highlight-source-c++"><pre>String <span class="pl-en">activate</span>(String activationCode);</pre></div>

<p>Activates a thing with the given activation code. The token for the Thing is automatically set and returned. In the case of failure an empty string is returned.</p>

<div class="highlight highlight-source-c++"><pre>String <span class="pl-en">getToken</span>();</pre></div>

<p>Returns the token associated with this thing.</p>

<div class="highlight highlight-source-c++"><pre><span class="pl-k">void</span> <span class="pl-en">addValue</span>(String key, String value);
<span class="pl-k">void</span> <span class="pl-en">addValue</span>(String key, <span class="pl-k">double</span> value);</pre></div>

<p>Adds the key/value pair in the buffer of data to be sent. Since those pairs are stored in memory until the data is sent the user should be aware of the memory.</p>

<div class="highlight highlight-source-c++"><pre>String <span class="pl-en">send</span>();</pre></div>

<p>Send and flush the data stored in the data buffer (added with the <code>addValue</code> functions).</p>

<div class="highlight highlight-source-c++"><pre>String <span class="pl-en">read</span>(String key);
String <span class="pl-en">read</span>(String key, <span class="pl-k">int</span> limit);</pre></div>

<p>Get the last <code>limit</code> key/value pairs sent to this thing with the given key. In the first form , the last 10 items are returned.</p>

<div class="highlight highlight-source-c++"><pre><span class="pl-k">void</span> <span class="pl-en">subscribe</span>();
<span class="pl-k">int</span> <span class="pl-en">available</span>();
String <span class="pl-en">read</span>();</pre></div>

<p>Subscribe, check for data to be read and actually read the data from the thing. This is used to listen and get the data sent to this thing.</p>
</article>
  </div>

</div>

