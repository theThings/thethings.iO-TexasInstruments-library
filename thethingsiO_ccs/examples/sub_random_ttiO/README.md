  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-arduino" class="anchor" href="#energia" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Texas Instruments CSS example: Subscribe and receive random numbers</h1>

<p>Texas Instruments example for Code Composer Studio to connect to <a href="http://thethings.iO">http://thethings.iO</a></p>

<h2>Instructions</h2>

In the example folder you can find the source code for this example. To try it, the easiest method is to download the sub_random_ttiO.zip. Then in Code Composer Studio go to 'Project' -> 'Import CSS Project...'. In the window that will open choose 'Select Archive File', then 'Browse' and navigate to the .zip file you just downloaded, select it click on 'Open'. After that, 'sub_random_ttiO' should appear as a discovered project. Mark it and click 'Finish' to import.

We assume that you already have worked with CSS and that you configured your internet connection in 'common.h'. Very soon, we will also publish a more detailed step by step tutorial.

In this example, we will generate random numbers with a simulator at the web <a href="http://thethings.iO">http://thethings.iO</a> and send them to the thing. Our program subscribes to the thing and receives the data that is sent to it.
The only line you have to change, is the line were the token is declared, to one of your tokens. Now you are ready to  access your account at thethings.iO and go to the details of the thing and the token you just put in your code. Click on 'Start sending values' in the simulator. You can click on 'Real-time' to see the numbers arriving that the simulator generates.
Then upload the project to your launchpad and execute it and you can see in the terminal how the random numbers are received! 




<h2><a id="user-content-comments" class="anchor" href="#comments" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" role="img" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Comments</h2>

The library for Code Composer Studio was tested on the CC3200 launchpad.

In the example folder there are the same files as in the .zip file. As Github doesn't allow to download one folder from inside a respository as archive and in CCS you need a project as archive to import it, we found it more practically to directly upload the .zip file. The contents of the folder are there to make it possible to browse the contents of the library and view the files or if you want to include thethings.iO in your existing project.
