# DQWEB
Simple web interface for kdb+/q processes.

## Features 
 * Windows, Drag & Drop, rows, columns and stacks.
 * Persistent window layout and code.
 * Syntax hightlighting and basic code completion.
 * Single-line and multi-line code execution. Inlined results on same domain.
 * Working with multiple servers in the same document.
 * Trash: undo close documents
 * Save query results into CSV, XLS, ...
 * Set warnings before certain queries
 * Multiple output windows
 * Code sharing via links
 * Export & import layout and code into JSON

## How to start?
 * Run "q start.q -p \<port\>" from the dqweb directory (Recommended!)
 * Run "python -m SimpleHTTPServer \<port\>" from the dqweb directory
 * Host these files on some other web server
 * Go to https://adotsch.github.io/dqweb/
 * Open index.html from file explorer
