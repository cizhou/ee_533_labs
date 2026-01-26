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
static const char *ng0 = "C:/Documents and Settings/student/My Documents/adder/adder_32b_tb.v";
static const char *ng1 = "? ERROR @ %0t: A=%h B=%h Cin=%b | Expected=%h Got=%b%h";
static const char *ng2 = "? PASS  @ %0t: A=%h B=%h Cin=%b | Sum=%h";
static const char *ng3 = " Time |        A        +        B        + Cin = Cout        S";
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {65535U, 0U};
static unsigned int ng8[] = {4294967295U, 0U};
static unsigned int ng9[] = {2863311530U, 0U};
static unsigned int ng10[] = {1431655765U, 0U};
static unsigned int ng11[] = {2147483648U, 0U};
static int ng12[] = {1, 0};
static int ng13[] = {20, 0};
static const char *ng14 = "? 32-bit adder test completed";



static int sp_check(char *t1, char *t2)
{
    char t10[16];
    char t14[16];
    char t21[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
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
    char *t32;

LAB0:    t0 = 1;
    t3 = (t1 + 456);
    xsi_vlog_subprogram_setdisablestate(t3, &&LAB2);
    xsi_set_current_line(71, ng0);

LAB3:    xsi_set_current_line(72, ng0);
    t4 = (t1 + 1116);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t1 + 1208);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    xsi_vlog_unsigned_add(t10, 33, t6, 32, t9, 32);
    t11 = (t1 + 1300);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    xsi_vlog_unsigned_add(t14, 33, t10, 33, t13, 1);
    t15 = (t1 + 1392);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 33);
    xsi_set_current_line(74, ng0);
    t3 = (t1 + 804U);
    t4 = *((char **)t3);
    t3 = (t1 + 892U);
    t5 = *((char **)t3);
    xsi_vlogtype_concat(t10, 33, 33, 2U, t5, 1, t4, 32);
    t3 = (t1 + 1392);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    xsi_vlog_unsigned_case_noteq(t14, 33, t10, 33, t7, 33);
    t8 = (t14 + 4U);
    t16 = *((unsigned int *)t8);
    t17 = (~(t16));
    t18 = *((unsigned int *)t14);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB4;

LAB5:    xsi_set_current_line(77, ng0);

LAB8:    xsi_set_current_line(78, ng0);
    t3 = xsi_vlog_time(t10, 1000000.000000000, 1000.000000000000);
    t4 = (t1 + 1116);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t1 + 1208);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t11 = (t1 + 1300);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t15 = (t1 + 804U);
    t22 = *((char **)t15);
    t15 = (t1 + 892U);
    t23 = *((char **)t15);
    xsi_vlogtype_concat(t14, 33, 33, 2U, t23, 1, t22, 32);
    xsi_vlogfile_write(1, 0, ng2, 6, t1, (char)118, t10, 64, (char)118, t6, 32, (char)118, t9, 32, (char)118, t13, 1, (char)118, t14, 33);

LAB6:
LAB2:    xsi_vlog_dispose_subprogram_invocation(t2);
    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(74, ng0);

LAB7:    xsi_set_current_line(75, ng0);
    t9 = xsi_vlog_time(t21, 1000000.000000000, 1000.000000000000);
    t11 = (t1 + 1116);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t15 = (t1 + 1208);
    t22 = (t15 + 32U);
    t23 = *((char **)t22);
    t24 = (t1 + 1300);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t1 + 1392);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t1 + 892U);
    t31 = *((char **)t30);
    t30 = (t1 + 804U);
    t32 = *((char **)t30);
    xsi_vlogfile_write(1, 0, ng1, 8, t1, (char)118, t21, 64, (char)118, t13, 32, (char)118, t23, 32, (char)118, t26, 1, (char)118, t29, 33, (char)118, t31, 1, (char)118, t32, 32);
    goto LAB6;

}

static void I28_0(char *t0)
{
    char t19[8];
    char t25[8];
    char *t1;
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
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 1960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);

LAB4:    xsi_set_current_line(29, ng0);
    xsi_vlogfile_write(1, 0, ng3, 1, t0);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB7:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB9;

LAB8:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB6:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB9:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB7;
    goto LAB1;

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB12:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB14;

LAB13:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB11:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB14:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB12;
    goto LAB1;

LAB15:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB17:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB19;

LAB18:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB16:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB19:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB17;
    goto LAB1;

LAB20:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB22:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB24;

LAB23:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB21:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB24:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB22;
    goto LAB1;

LAB25:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB27:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB29;

LAB28:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB26:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB29:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB27;
    goto LAB1;

LAB30:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB32:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB34;

LAB33:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB31:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(55, ng0);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1484);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB35:    t2 = (t0 + 1484);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng13)));
    memset(t19, 0, 8);
    xsi_vlog_signed_less(t19, 32, t4, 32, t5, 32);
    t6 = (t19 + 4U);
    t20 = *((unsigned int *)t6);
    t21 = (~(t20));
    t22 = *((unsigned int *)t19);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(63, ng0);
    xsi_vlogfile_write(1, 0, ng14, 1, t0);
    xsi_set_current_line(64, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB34:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB32;
    goto LAB1;

LAB36:    xsi_set_current_line(55, ng0);

LAB38:    xsi_set_current_line(56, ng0);
    *((int *)t25) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t7 = (t25 + 4);
    *((int *)t7) = 0;
    t8 = (t0 + 1116);
    xsi_vlogvar_assign_value(t8, t25, 0, 0, 32);
    xsi_set_current_line(57, ng0);
    *((int *)t19) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t19 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1208);
    xsi_vlogvar_assign_value(t3, t19, 0, 0, 32);
    xsi_set_current_line(58, ng0);
    *((int *)t19) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t19 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1300);
    xsi_vlogvar_assign_value(t3, t19, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1876);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB39:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1876);
    t3 = (t0 + 456);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB41:    t5 = (t0 + 1924);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    t9 = (t8 + 132U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);
    if (t13 != 0)
        goto LAB43;

LAB42:    t6 = (t0 + 456);
    xsi_vlog_subprogram_popinvocation(t6);

LAB40:    t14 = (t0 + 1924);
    t15 = *((char **)t14);
    t14 = (t0 + 456);
    t16 = (t0 + 1924);
    t17 = *((char **)t16);
    t16 = (t0 + 1876);
    t18 = 0;
    xsi_delete_subprogram_invocation(t14, t17, t0, t16, t18);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1484);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng12)));
    memset(t19, 0, 8);
    xsi_vlog_signed_add(t19, 32, t4, 32, t5, 32);
    t6 = (t0 + 1484);
    xsi_vlogvar_assign_value(t6, t19, 0, 0, 32);
    goto LAB35;

LAB43:    t5 = (t0 + 1960U);
    *((char **)t5) = &&LAB41;
    goto LAB1;

}


extern void work_m_00000000000981272546_3838808936_init()
{
	static char *pe[] = {(void *)I28_0};
	static char *se[] = {(void *)sp_check};
	xsi_register_didat("work_m_00000000000981272546_3838808936", "isim/_tmp/work/m_00000000000981272546_3838808936.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
