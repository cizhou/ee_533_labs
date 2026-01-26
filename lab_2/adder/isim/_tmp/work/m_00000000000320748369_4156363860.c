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

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "%4t | %b %b  %b  |  %b    %b";
static const char *ng1 = "C:/Documents and Settings/student/My Documents/adder/adder_1b_tb.v";
static const char *ng2 = " Time | A B Cin | Cout S";
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};

void M25_1(char *);
void M25_1(char *);


static void M25_1_Func(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t2 = xsi_vlog_time(t1, 1000000.000000000, 1000.000000000000);
    t3 = (t0 + 876);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t0 + 968);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t0 + 1060);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t0 + 652U);
    t13 = *((char **)t12);
    t12 = (t0 + 564U);
    t14 = *((char **)t12);
    xsi_vlogfile_write(1, 0, ng0, 7, t0, (char)118, t1, 64, (char)118, t5, 1, (char)118, t8, 1, (char)118, t11, 1, (char)118, t13, 1, (char)118, t14, 1);

LAB1:    return;
}

static void I23_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng1);

LAB4:    xsi_set_current_line(24, ng1);
    xsi_vlogfile_write(1, 0, ng2, 1, t0);
    xsi_set_current_line(25, ng1);
    M25_1(t0);
    xsi_set_current_line(29, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(30, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(31, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(31, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(31, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(31, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(32, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(35, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(36, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(36, ng1);
    t2 = (t0 + 1452);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(38, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

void M25_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 1580);
    t2 = (t0 + 1844);
    xsi_vlogfile_monitor((void *)M25_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000000320748369_4156363860_init()
{
	static char *pe[] = {(void *)I23_0,(void *)M25_1};
	xsi_register_didat("work_m_00000000000320748369_4156363860", "isim/_tmp/work/m_00000000000320748369_4156363860.didat");
	xsi_register_executes(pe);
}
