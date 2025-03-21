#!/bin/bash
# L. Fita CIMA/IFAECI, March 2025
# Shell script to compute the dimensions of the urban module

# amount of urban categories used by module BEP
num_urban=11

# amount of vertical layers used by the urban module BEP
num_urban_nz=18

# amount of types of buildings per LCZ used by the urban module BEP
num_urban_nbui=15

# amount of directions of streets used by module BEP
num_urban_nd=2

#! The change of ng_u (num_urban_ng), nwr_u (num_urban_nwr) should be done in agreement with the block data
#!  in the routine "surf_temp" 

# amount of ground layers used by module BEP
num_urban_ng=10

# amount of grid levels in green roofs used by module BEM
num_urban_ngr=10

# amount of grid levels in the walls or roofs used by module BEM
num_urban_nwr=10

#amount of grid levels in floors used by module BEM
num_urban_nf=10

#amount of grid levels in the ground below building used by module BEM
num_urban_ngb=10

#######    #######
## MAIN
    #######

one=1
urban_map_zrd=`expr ${num_urban_nd} '*' ${num_urban_nwr} '*' ${num_urban_nz}`
urban_map_zwd=`expr ${num_urban_nd} '*' ${num_urban_nwr} '*' ${num_urban_nz} '*' ${num_urban_nbui}`
urban_map_gd=`expr ${num_urban_nd} '*' ${num_urban_ng}`
urban_map_zd=`expr ${num_urban_nd} '*' ${num_urban_nz} '*' ${num_urban_nbui}`
urban_map_zdf=`expr ${num_urban_nd} '*' ${num_urban_nz}`
urban_map_bd=`expr ${num_urban_nz} '*' ${num_urban_nbui}`
urban_map_wd=`expr ${num_urban_nd} '*' ${num_urban_nz} '*' ${num_urban_nbui}`
urban_map_gbd=`expr ${num_urban_nd} '*' ${num_urban_ngb} '*' ${num_urban_nbui}`
urban_map_fbd=`expr ${num_urban_nd} '*' \( ${num_urban_nz} - ${one} \) '*' ${num_urban_nf} '*' ${num_urban_nbui}`
urban_map_zgrd=`expr ${num_urban_nd} '*' ${num_urban_ngr} '*' ${num_urban_nz}`

echo "urban_map_zrd= "${urban_map_zrd}
echo "urban_map_zwd= "${urban_map_zwd}
echo "urban_map_gd= "${urban_map_gd}
echo "urban_map_zd= "${urban_map_zd}
echo "urban_map_zdf= "${urban_map_zdf}
echo "urban_map_bd= "${urban_map_bd}
echo "urban_map_wd= "${urban_map_wd}
echo "urban_map_gbd= "${urban_map_gbd}
echo "urban_map_fbd= "${urban_map_fbd}
echo "urban_map_zgrd= "${urban_map_zgrd}




