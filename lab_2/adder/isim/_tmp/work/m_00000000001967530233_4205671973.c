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
static const char *ng0 = "C:/Documents and Settings/student/My Documents/adder/adder_8b_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {50, 0};
static const char *ng3 = "? ERROR: A=%h B=%h Cin=%b | Expected=%h Got=%b%h";
static const char *ng4 = "? PASS : A=%h B=%h Cin=%b | Sum=%h";
static int ng5[] = {1, 0};
static const char *ng6 = "Test complete";



static void I22_0(char *t0)
{
    char t6[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);

LAB4:    xsi_set_current_line(23, ng0);
    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1244);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 1244);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4U);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);
    xsi_vlogfile_write(1, 0, ng6, 1, t0);
    xsi_set_current_line(41, ng0);
    xsi_vlog_finish(1);

LAB1:    return;
LAB6:    xsi_set_current_line(23, ng0);

LAB8:    xsi_set_current_line(24, ng0);
    *((int *)t13) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t14 = (t13 + 4);
    *((int *)t14) = 0;
    t15 = (t0 + 876);
    xsi_vlogvar_assign_value(t15, t13, 0, 0, 8);
    xsi_set_current_line(25, ng0);
    *((int *)t6) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t6 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 968);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 8);
    xsi_set_current_line(26, ng0);
    *((int *)t6) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t6 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1060);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1636);
    xsi_process_wait(t2, 5000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 876);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t0 + 968);
    t7 = (t5 + 32U);
    t14 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 9, t4, 8, t14, 8);
    t15 = (t0 + 1060);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 9, t6, 9, t17, 1);
    t18 = (t0 + 1152);
    xsi_vlogvar_assign_value(t18, t13, 0, 0, 9);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 564U);
    t3 = *((char **)t2);
    t2 = (t0 + 652U);
    t4 = *((char **)t2);
    xsi_vlogtype_concat(t6, 9, 9, 2U, t4, 1, t3, 8);
    t2 = (t0 + 1152);
    t5 = (t2 + 32U);
    t7 = *((char **)t5);
    memset(t13, 0, 8);
    t14 = (t6 + 4U);
    t15 = (t7 + 4U);
    if (*((unsigned int *)t6) != *((unsigned int *)t7))
        goto LAB11;

LAB10:    if (*((unsigned int *)t14) != *((unsigned int *)t15))
        goto LAB11;

LAB12:    t16 = (t13 + 4U);
    t8 = *((unsigned int *)t16);
    t9 = (~(t8));
    t10 = *((unsigned int *)t13);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(34, ng0);

LAB17:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 876);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t0 + 968);
    t7 = (t5 + 32U);
    t14 = *((char **)t7);
    t15 = (t0 + 1060);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t0 + 564U);
    t19 = *((char **)t18);
    t18 = (t0 + 652U);
    t20 = *((char **)t18);
    xsi_vlogtype_concat(t6, 9, 9, 2U, t20, 1, t19, 8);
    xsi_vlogfile_write(1, 0, ng4, 5, t0, (char)118, t4, 8, (char)118, t14, 8, (char)118, t17, 1, (char)118, t6, 9);

LAB15:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1244);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1244);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(31, ng0);

LAB16:    xsi_set_current_line(32, ng0);
    t17 = (t0 + 876);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t0 + 968);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t0 + 1060);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t0 + 1152);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t0 + 652U);
    t30 = *((char **)t29);
    t29 = (t0 + 564U);
    t31 = *((char **)t29);
    xsi_vlogfile_write(1, 0, ng3, 7, t0, (char)118, t19, 8, (char)118, t22, 8, (char)118, t25, 1, (char)118, t28, 9, (char)118, t30, 1, (char)118, t31, 8);
    goto LAB15;

}


extern void work_m_00000000001967530233_4205671973_init()
{
	static char *pe[] = {(void *)I22_0};
	xsi_register_didat("work_m_00000000001967530233_4205671973", "isim/_tmp/work/m_00000000001967530233_4205671973.didat");
	xsi_register_executes(pe);
}
