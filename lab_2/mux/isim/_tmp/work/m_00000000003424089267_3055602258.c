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
static const char *ng0 = "%4t | %b | %h  %h | %h";
static const char *ng1 = "C:/Documents and Settings/student/My Documents/mux/mux2_32b_tb.v";
static const char *ng2 = "Time | S |        A                B        |        Y";
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {4294967295U, 0U};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {2863311530U, 0U};
static unsigned int ng8[] = {65535U, 0U};
static unsigned int ng9[] = {305419896U, 0U};
static int ng10[] = {1, 0};
static unsigned int ng11[] = {252645135U, 0U};
static unsigned int ng12[] = {4042322160U, 0U};

void M23_1(char *);
void M23_1(char *);


static void M23_1_Func(char *t0)
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

LAB0:    t2 = xsi_vlog_time(t1, 1000000.000000000, 1000.000000000000);
    t3 = (t0 + 972);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t0 + 788);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t0 + 880);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t0 + 564U);
    t13 = *((char **)t12);
    xsi_vlogfile_write(1, 0, ng0, 6, t0, (char)118, t1, 64, (char)118, t5, 1, (char)118, t8, 32, (char)118, t11, 32, (char)118, t13, 32);

LAB1:    return;
}

static void I21_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 1448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng1);

LAB4:    xsi_set_current_line(22, ng1);
    xsi_vlogfile_write(1, 0, ng2, 1, t0);
    xsi_set_current_line(23, ng1);
    M23_1(t0);
    xsi_set_current_line(26, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(27, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(28, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(32, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(32, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(34, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(37, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(37, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(37, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(38, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(39, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(39, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(39, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(42, ng1);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 788);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(43, ng1);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(45, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(45, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(46, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng1);
    t2 = (t0 + 1364);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(48, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

void M23_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 1492);
    t2 = (t0 + 1756);
    xsi_vlogfile_monitor((void *)M23_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000003424089267_3055602258_init()
{
	static char *pe[] = {(void *)I21_0,(void *)M23_1};
	xsi_register_didat("work_m_00000000003424089267_3055602258", "isim/_tmp/work/m_00000000003424089267_3055602258.didat");
	xsi_register_executes(pe);
}
