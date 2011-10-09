# ack.vim #

This plugin allows you to run ack from vim, shows the search results in a
split window and enables an easy navigation to the location of the search item
in original files.

Ack is a powerful search tool for programmers, much better than grep:

* ack is blazingly fast
* ack ignores crap you do not want to search like .svn, backup files
* lets you specify file types to search

See [Ack homepage](http://betterthangrep.com/) for **Top 10 reasons to use ack
instead of grep.**

There is also an official home of the 
[App::Ack](http://search.cpan.org/~petdance/ack/ack) Perl module.

The [original version](http://www.vim.org/scripts/script.php?script_id=2572)
of this ack.vim plugin is available at vim.org.

Version your are currently looking at is refactored and extended by geekQ.


## Installation ##

### Ack

You have to install [ack](http://search.cpan.org/~petdance/ack/ack), of course.

Install on Ubuntu with:

    sudo apt-get install ack-grep

Install on Gentoo with:

    sudo emerge ack

Install with MacPorts:

    sudo port install p5-app-ack

Install with Gentoo Prefix

    emerge ack

Otherwise, you are on your own.


### The Plugin

If you have [Rake](http://rake.rubyforge.org/) installed, you can just run: `rake install`.

Otherwise, the file ack.vim goes in ~/.vim/plugin, and the ack.txt file belongs in ~/.vim/doc.  Be sure to run

    :helptags ~/.vim/doc

afterwards.


## Usage 

For detailed usage information type `:help ack` in vim or read the 
[help online](http://github.com/geekq/ack.vim/tree/master/doc/ack.txt).

## Authors

This Vim plugin is derived from Antoine Imbert's blog post [Ack and Vim
Integration](http://blog.ant0ine.com/typepad/2007/03/ack-and-vim-integration.html).

[Miles Z. Sterrett](http://mileszs.com/) created the first version of the
plugin and added a help file.

Version your are currently looking at is refactored and extended by 
[Vladimir Dobriakov](http://blog.geekQ.net).
