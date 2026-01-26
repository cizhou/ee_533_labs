/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;


int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    work_m_00000000000866782574_2073120511_init();
    unisims_ver_m_00000000000179858743_3125220529_init();
    unisims_ver_m_00000000003912143520_2316096324_init();
    unisims_ver_m_00000000001218449110_1323117156_init();
    work_m_00000000000867102460_2984075339_init();
    work_m_00000000003265165178_3433731086_init();
    work_m_00000000000042001586_1612700418_init();
    work_m_00000000003470355365_3964131445_init();
    work_m_00000000000981272546_3838808936_init();


    xsi_register_tops("work_m_00000000000981272546_3838808936");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
