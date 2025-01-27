# BioBakery Tests #

BioBakery Tests is a collection of tests for the BioBakery Tool Suite.

## Install ##

* ``$ python setup.py install``

## Run ##

Tests are available for the following tools:

1. [HUMAnN](http://huttenhower.sph.harvard.edu/humann)
2. [KneadData](http://huttenhower.sph.harvard.edu/kneaddata)
3. [PICRUSt](http://picrust.github.io/)
4. [MaAsLin](http://huttenhower.sph.harvard.edu/maaslin)
5. [MetaPhlAn2](http://huttenhower.sph.harvard.edu/metaphlan2)
6. [SparseDOSSA](http://huttenhower.sph.harvard.edu/sparsedossa)
7. [ShortBRED](https://huttenhower.sph.harvard.edu/shortbred)
8. [PPANINI](http://huttenhower.sph.harvard.edu/ppanini)
9. [LEfSe](http://huttenhower.sph.harvard.edu/lefse)
10. [MicroPITA](http://huttenhower.sph.harvard.edu/micropita)
11. [GraPhlAn](http://huttenhower.sph.harvard.edu/graphlan)
12. [BreadCrumbs](http://huttenhower.sph.harvard.edu/breadcrumbs)
13. [HAllA](http://huttenhower.sph.harvard.edu/halla)

There are options to view, run, and test each tool. Also one or all tools can be selected.

* To view the humann tests:
    * ``$ biobakery_tests --mode view --tool humann``
* To run the metaphlan tests in demo mode (output is not validated):
    * ``$ biobakery_tests --mode demo --tool metaphlan``
* To run the metaphlan tests (output is validated):
    * ``$ biobakery_tests --mode test --tool metaphlan``

To run tests with threads, add the option "--threads <1>".

