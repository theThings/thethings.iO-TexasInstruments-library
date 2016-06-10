  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-arduino" class="anchor" href="#energia" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Texas Instruments CSS example: Test thethings.iO!</h1>

<p>Texas Instruments example for Code Composer Studio to connect to <a href="http://thethings.iO">http://thethings.iO</a></p>

<h2>Instructions</h2>

In the example folder you can find the source code for this example. To try it, the easiest method is to download the test_ttiO_css.zip Then in Code Composer Studio go to 'Project' -> 'Import CSS Project...'. In the window that will open choose 'Select Archive File', then 'Browse' and navigate to the .zip file you just downloaded, select it click on 'Open'. After that, 'test_ttiO' should appear as a discovered project. Mark it and click 'Finish' to import.

We assume that you already have worked with CSS and that you configured your internet connection in 'common.h'. Very soon, we will also publish a more detailed step by step tutorial.

In this example we test the different methods of the thethingsiO library. They are executed one after another and their output is printed to the terminal. This is what the example does:</br>
Write the value "Hello World!" to the key "test":</br>
<code>char *ws = thing_write_string(&thing, "test", "Hello Word!");</code></br></br>

Write the value '5' to the key "int":</br></br>
<code>char *wi = thing_write_int(&thing, "int", 5);</code></br></br>

Write the value '5.33' to the key "double":</br>
<code>char *wd = thing_write_double(&thing, "double", 5.33);</code></br></br>

Write the value '5.66' to the key "more_numbers":</br>
<code>char *wf = thing_write_float(&thing, "more_numbers", 5.66);</code></br></br>

Read the last 5 values with key "test" from our thing:</br>
<code>char *response = thing_read_limit(&thing, "test", 5);</code></br></br>

Read the last values with the default limit value (10) from the thing that were sent with the key "int":</br>
<code>char *response2 = thing_read(&thing, "int");</code></br></br>

First subscribe call which creates the socket:</br>
<code>char *sub = thing_subscribe(&thing);</code></br></br>

Subsequent subscribe calls in a loop which check for new data (Send some values!):
<code>sub = thing_subscribe(&thing);</code></br></br>




<h2><a id="user-content-comments" class="anchor" href="#comments" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Comments</h2>

The library for Code Composer Studio was tested on the CC3200 launchpad.

In the example folder there are the same files as in the .zip file. As Github doesn't allow to download one folder from inside a respository as archive and in CCS you need a project as archive to import it, we found it more practically to directly upload the .zip file. The contents of the folder are there to make it possible to browse the contents of the library and view the files or if you want to include thethings.iO in your existing project.
