  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-arduino" class="anchor" href="#energia" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Texas Instruments</h1>

<p>Texas Instruments library and examples for Code Composer Studio to connect to <a href="http://thethings.iO">http://thethings.iO</a></p>

<h2>Instructions</h2>

There are two folders. In the library folder you can find the library for Code Composer Studio. To use it download the thethingsiO_ti_css.zip file. Then in Code Composer Studio go to 'Project' -> 'Import CSS Project...'. In the windows that will open choose 'Select Archive File', then 'Browse' and navigate to the .zip file you just downloaded, select it click on 'Open'. After that, 'thethingsiO_lib' should appear as discovered project. Mark it and click 'Finish' to import.

This procedure is the same for the examples in the examples folder.

We assume that you already have worked with CSS and that you configured your internet connection in 'common.h'. Very soon, we will also publish a more detailed step by step tutorial.

Now you can start writing your code in the 'main.c' file. Enjoy!




<h2><a id="user-content-comments" class="anchor" href="#comments" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Comments</h2>

The library for Code Composer Studio was tested on the CC3200 launchpad.

In the library folder there are the same files as in the .zip file, as Github doesn't allow to download one folder from inside a respository and as archive an in CCS you need a prokject as archive to import it, we found it more practically to directly upload the .zip file. The contents of the folder are there to make it possible to browse the contents of the library and view the files.
