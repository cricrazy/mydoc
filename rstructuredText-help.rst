rStructuredText Help
====================

.. adds a section numbers (.. sectnum::)

You can find many tutorials here.


Basics
------

*emphasis*

**strong**

``literal``

Lists
-----

* This is a bulleted list.
* It has two items, the second
  item uses two lines.

1. This is a numbered list.
2. It has two items too.

#. This is a numbered list.
#. It has two items too.

Nested Lists
------------
* this is
* a list

  * with a nested list
  * and some subitems

* and here the parent list continues


Definitions
-----------
term (up to a line of text)
   Definition of the term, which must be indented

   and can even consist of multiple paragraphs

next term
   Description.



subscript & superscript
-----------------------

H\ :sub:`2`\ O

E = mc\ :sup:`2`

The chemical formula for pure water is |H2O|.

.. |H2O| replace:: H\ :sub:`2`\ O


Preserving Line Breaks
----------------------

| These lines are
| broken exactly like in
| the source file.


Source Code
-----------
This is a normal text paragraph.
Source code is added by ending paragraph with ``::``::

   It is not processed in any way, except
   that the indentation is removed.

   It can span multiple lines.

This is a normal text paragraph again.


Tables
------
+------------------------+------------+----------+----------+
| Header row, column 1   | Header 2   | Header 3 | Header 4 |
| (header rows optional) |            |          |          |
+========================+============+==========+==========+
| body row 1, column 1   | column 2   | column 3 | column 4 |
+------------------------+------------+----------+----------+
| body row 2             | ...        | ...      |          |
+------------------------+------------+----------+----------+

Hyperlinks
----------

Add inline hyperlinks with ```link text <http://google.com>`_``.

Here it is `link text <http://google.com>`_.

Sections
--------

Parts
#####

Chapters
********

``Sections``
``========``

Subsections
-----------

Admonitions
-----------
.. danger::
   danger admonition

.. caution::
   caution admonition

.. error::
   error admonition

.. hint::
   hint admonition

.. important::
   important admonition

.. note::
   note admonition

.. tip::
   tip admonition

.. warning::
   warning admonition

topic


.. topic:: Topic Title

    Subsequent indented lines comprise
    the body of the topic, and are
    interpreted as body elements.

Math
----
.. math::

   α_t(i) = P(O_1, O_2, … O_t, q_t = S_i λ)
   .. (a + b)^2 = a^2 + 2ab + b^2
   .. (a - b)^2 = a^2 - 2ab + b^2


Epigraph
--------

.. epigraph::

   No matter where you go, there you are.

   -- Buckaroo Banzai


Header and footer
-----------------

   .. header:: This space for rent.

   .. footer:: This space for rent.

Date
----
.. |date| date::
.. |time| date:: %H:%M

Today's date is |date|.

This document was generated on |date| at |time|.

Images
------

.. image:: images\ball1.gif
   :height: 100px
   :width: 200 px
   :scale: 100 %
   :alt: alternate text
   :align: left

- allowed: height, width, scale, alt, align, target etc.

Attach Zip files or other file links
------------------------------------

You can attach a zip, pdf or any other kinds of files for downloads or links
using download parameter as shown below.::

:download:`Sif to Matlab conversion automation batch <sif-to-matlab.zip>`


Figures with caption
--------------------

.. figure:: images\ball1.gif
   :height: 100px
   :width: 200 px
   :scale: 100 %
   :alt: alternate text
   :align: center

   This is figure's caption.

Structure of figures
--------------------

This is the structure of the figure::

  +---------------------------+
  |        figure             |
  |                           |
  |<------ figwidth --------->|
  |                           |
  |  +---------------------+  |
  |  |     image           |  |
  |  |                     |  |
  |  |<--- width --------->|  |
  |  +---------------------+  |
  |                           |
  |The figure's caption should|
  |wrap at this width.        |
  +---------------------------+

Footnotes
---------

Lorem ipsum [#f1]_ dolor sit amet ... [#f2]_

.. rubric:: Footnotes




Code Blocks with Pygments
-------------------------

.. code-block:: IDL
   :emphasize-lines: 3,5

   IF (a EQ b) THEN BEGIN
       ; CODE
   ENDIF ; IF (a EQ b) THEN BEGIN

.. code-block:: c
    :linenos:

    /* compare ranges x and y */
    if (x < y) break;

    //if (x == y && rainobj->start == (rainobj->loc_buf - 2)) break;

    if (x > y && rainobj->start == (rainobj->loc_buf - 2)) {
       (rainobj->start)++;
       break;
    }

.. code-block:: python
   :caption: this.py
   :name: this-py

   print 'Explicit is better than implicit.'

Graphviz
--------
.. graphviz::

   digraph foo {
      "bar" -> "baz";
   }

.. graphviz::

   digraph Flatland {
   
      a -> b -> c -> g; 
      a  [shape=polygon,sides=4]
      b  [shape=polygon,sides=5]
      c  [shape=polygon,sides=6]
   
      g [peripheries=3,color=yellow];
      s [shape=invtriangle,peripheries=1,color=red,style=filled];
      w  [shape=triangle,peripheries=1,color=blue,style=filled];
      
      }

.. graphviz::

  digraph {
    label="How to make sure 'input' is valid";
 
    node[shape="box", style="rounded"]
       start; end;
    node[shape="parallelogram", style=""]
       message; input;
    node[shape="diamond", style=""]
       if_valid;
 
    start -> input;
    input -> if_valid;
    if_valid -> message[label="no"];
    if_valid -> end[label="yes"];
    message -> input;     
 
    {rank=same; message input}
    }

.. Graphviz::

  digraph {
    A -> B -> C -> D;
    C -> E -> F;
    F -> B;
    }

.. graphviz::

  digraph hierarchy {

                nodesep=1.0 // increases the separation between nodes
                
                node [color=Red,fontname=Courier,shape=box] //All nodes will this shape and colour
                edge [color=Blue, style=dashed] //All the lines look like this

                Headteacher->{Deputy1 Deputy2 BusinessManager}
                Deputy1->{Teacher1 Teacher2}
                BusinessManager->ITManager
                {rank=same;ITManager Teacher1 Teacher2}  // Put them on the same level
   }

Horizontal chart
----------------

.. graphviz::

  digraph G {
    rankdir=LR
    node[shape = circle , height =.6, fixedsize= true];
    ii[label=i];
    jj[label=j];
    subgraph cluster_0 {
      x1->xm[style=dotted];
    }
    i->j
    j ->x1
    xm->ii
    ii->jj
  }


Using subgraph and cluster
--------------------------

.. graphviz::

   digraph G {

       subgraph cluster_0 {
            style=filled;
            color=lightgrey;
            node [style=filled, color=white]
            c_do_ros_life;
       }

       subgraph cluster_1 {
            style=filled;
            color=lightgrey;
            node [style=filled, color=white]
            LifeRosInit -> LifRosAnalyze -> LifRosComplete -> LifRosGetResults;
       }

      "DATK_ros_life.pro" -> "do_ros_life_.pro" -> c_do_ros_life -> "dOpt_do_analysis.c" -> "LifRos.c" -> LifeRosInit;

	}


.. [#f1] Text of the first footnote.
.. [#f2] Text of the second footnote.

