  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-arduino" class="anchor" href="#energia" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Texas Instruments CSS library</h1>

<p>Texas Instruments library for Code Composer Studio to connect to <a href="http://thethings.iO">http://thethings.iO</a></p>

<h2>Instructions</h2>

To use this library, download the thethingsiO_ti_css.zip file. Then in Code Composer Studio go to 'Project' -> 'Import CSS Project...'. In the windows that will open choose 'Select Archive File', then 'Browse' and navigate to the .zip file you just downloaded, select it click on 'Open'. After that, 'thethingsiO_lib' should appear as discovered project. Mark it and click 'Finish' to import.

We assume that you already have worked with CSS and that you configured your internet connection in 'common.h'. Very soon, we will also publish a more detailed step by step tutorial.

Now you can start writing your code in the 'main.c' file. Enjoy!

<h2>Library Reference</h2>
The main file already comes with the basic preparation until the thing activation.</br>

<h3>Initialization</h3>
Include the library:</br>
<code>#include "thethingsiO.h"</code></br></br>

Initialize the board:</br>
<code>BoardInit();</code></br></br>

Configure UART:</br>
<code>InitTerm();</code></br></br>

Connect to Access Point (Put your SSID and password in common.h):</br>
<code>long lRetVal = ConnectToAP();</code></br></br>

Declare a thing!</br>
<code>Thing_Struct thing;</code></br></br>

Connect to thethingsiO server:</br>
<code>lRetVal = ConnectTo_thethingsiO(&thing.thing_client);</code></br></br>

In order to initialize the thing correctly, it is necessary to use one of the following two methods:</br>
1. If you have already activated your thing, set the token:</br>
<code>thing.token = "YOUR TOKEN HERE";</code></br>
2. Or if not, set your activation code...</br>
<code>char \*act_code = "YOUR ACTIVATION CODE HERE;</code></br>
...and activate the thing:</br>
<code>char \*token = thing_activate(&thing, act_code);</code></br>
The token for the thing is automatically set and returned. In case of failure an empty string is returned.</br>

<h3>Write</h3>
Write a string to the thing:</br>
<code>char \*ws = thing_write_string(&thing, "key", "value");</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(ws);</code></br></br>

Write an integer to the thing (Here we write the value '5' to the key "int"):</br>
<code>char \*wi = thing_write_int(&thing, "int", 5);</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(wi);</code></br></br>

Write a double to the thing (Here we write the value '5.33' to the key "double"):</br>
<code>char \*wd = thing_write_double(&thing, "double", 5.33);</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(wd);</code></br></br>

Write a float to the thing (Here we write the value '5.66' to the key more numbers):</br>
<code>char \*wf = thing_write_float(&thing, "more_numbers", 5.66);</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(wf);</code></br>

<h3>Read</h3>

Read the last *limit* values with the given *key* sent to the thing (Here we read the last 5 values with key "test" from our thing):</br>
<code>char \*response = thing_read_limit(&thing, "test", 5);</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(response);</code></br></br>

Read with default limit value(10) the last values with the given *key* sent to the thing (Here we read with the default limit value the last values sent to the thing with the key "int" ):</br>
<code>char \*response2 = thing_read(&thing, "int");</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(response2);</code>

<h3>Subscribe</h3>
Subscribe the thing. This function checks if new data is available and returns it:</br>
<code>char \*sub = thing_subscribe(&thing);</code></br>
We should free the memory if we don't need the data anymore:</br>
<code>free(sub);</code>



<h2><a id="user-content-comments" class="anchor" href="#comments" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Comments</h2>

The library for Code Composer Studio was tested on the CC3200 launchpad.

In the library  folder there are the same files as in the .zip file. As Github doesn't allow to download one folder from inside a respository as archive and in CCS you need a project as archive to import it, we found it more practically to directly upload the .zip file. The contents of the folder are there to make it possible to browse the contents of the library and view the files or if you want to include thethings.iO in your existing project.
