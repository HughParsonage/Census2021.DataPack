
# Census2021.DataPack
Extended R package for the 2021 Australian Census

This is the development site for an R package containing all 2021 Census data released by the ABS through its data packs. The data will be too large to host through CRAN.

## Motivation

I think the best way to explain my motivation for producing this package is to show you a variable name from Table G38 of the 2016 data pack:

> `Se_d_r_or_t_h_t_Tot_NofB_0_ib`

There are two problems with the data packs:

1. The variable names are arcane.
2. The data is not tidy: subtotals and subvariables lurk among the variable names.

The goals of this package are:

1. To tidy the data so that the tables are normalized.
2. To provide at all costs readable variable names.
3. Predictable table names and structure to support autocompletion.

## Specification

### Table names
1. Measure columns are in CamelCase, with an optional suffix for upper/lower bounds (`.min` and `.max`).
1. All table names:
    1. start with `[A-Z0-9]{3}`, representing the geographic extent of the key (*e.g.* tables starting with `LGA` are summaries of Local Government Areas, those starting with `STE` are summaries of states/territories)
    2. followed by two underscores
    3. followed by the names of the measure columns in CamelCase separated by underscores
    4. and finish with an underscore and the value column name (unless the value column is `persons`, in which case it is omitted).
2. The measure columns are in alphabetical order (except for subitems).
3. The value columns are in lower snakecase. (TODO)
4. Tables never contain subtotals.
5. Tables are ordered by the key and then by the measure columns.

In addition:

6. The package tarball should be under 100 MB (so that it can be uploaded to a drat repository there).

See [https://github.com/HughParsonage/Census2016.DataPack](https://github.com/HughParsonage/Census2016.DataPack) 
for the 2016 version and 

https://github.com/HughParsonage/Census2016.spec

for the specification (of both).





