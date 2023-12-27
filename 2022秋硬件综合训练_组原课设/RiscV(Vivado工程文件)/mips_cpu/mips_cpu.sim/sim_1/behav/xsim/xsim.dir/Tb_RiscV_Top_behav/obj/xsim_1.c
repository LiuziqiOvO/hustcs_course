/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_2070(char*, char *);
extern void execute_2071(char*, char *);
extern void execute_2072(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_2066(char*, char *);
extern void execute_2067(char*, char *);
extern void execute_2068(char*, char *);
extern void execute_2069(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void execute_611(char*, char *);
extern void execute_612(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_624(char*, char *);
extern void execute_628(char*, char *);
extern void execute_629(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_632(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void execute_650(char*, char *);
extern void execute_651(char*, char *);
extern void execute_652(char*, char *);
extern void execute_653(char*, char *);
extern void execute_654(char*, char *);
extern void execute_655(char*, char *);
extern void execute_656(char*, char *);
extern void execute_657(char*, char *);
extern void execute_658(char*, char *);
extern void execute_659(char*, char *);
extern void execute_660(char*, char *);
extern void execute_661(char*, char *);
extern void execute_662(char*, char *);
extern void execute_663(char*, char *);
extern void execute_664(char*, char *);
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void execute_667(char*, char *);
extern void execute_668(char*, char *);
extern void execute_669(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void execute_672(char*, char *);
extern void execute_715(char*, char *);
extern void execute_716(char*, char *);
extern void execute_717(char*, char *);
extern void execute_718(char*, char *);
extern void execute_719(char*, char *);
extern void execute_720(char*, char *);
extern void execute_721(char*, char *);
extern void execute_722(char*, char *);
extern void execute_723(char*, char *);
extern void execute_724(char*, char *);
extern void execute_725(char*, char *);
extern void execute_726(char*, char *);
extern void execute_727(char*, char *);
extern void execute_728(char*, char *);
extern void execute_979(char*, char *);
extern void execute_980(char*, char *);
extern void execute_981(char*, char *);
extern void execute_982(char*, char *);
extern void execute_983(char*, char *);
extern void execute_984(char*, char *);
extern void execute_985(char*, char *);
extern void execute_986(char*, char *);
extern void execute_987(char*, char *);
extern void execute_988(char*, char *);
extern void execute_1441(char*, char *);
extern void execute_1442(char*, char *);
extern void execute_1443(char*, char *);
extern void execute_1444(char*, char *);
extern void execute_1445(char*, char *);
extern void execute_1446(char*, char *);
extern void execute_1447(char*, char *);
extern void execute_1479(char*, char *);
extern void execute_1480(char*, char *);
extern void execute_1481(char*, char *);
extern void execute_1482(char*, char *);
extern void execute_1483(char*, char *);
extern void execute_1484(char*, char *);
extern void execute_1485(char*, char *);
extern void execute_1486(char*, char *);
extern void execute_1487(char*, char *);
extern void execute_1488(char*, char *);
extern void execute_1489(char*, char *);
extern void execute_1490(char*, char *);
extern void execute_1491(char*, char *);
extern void execute_1492(char*, char *);
extern void execute_1493(char*, char *);
extern void execute_1494(char*, char *);
extern void execute_1495(char*, char *);
extern void execute_1496(char*, char *);
extern void execute_1497(char*, char *);
extern void execute_1498(char*, char *);
extern void execute_1499(char*, char *);
extern void execute_1500(char*, char *);
extern void execute_1562(char*, char *);
extern void execute_1563(char*, char *);
extern void execute_1564(char*, char *);
extern void execute_1565(char*, char *);
extern void execute_1566(char*, char *);
extern void execute_1567(char*, char *);
extern void execute_1568(char*, char *);
extern void execute_1569(char*, char *);
extern void execute_1570(char*, char *);
extern void execute_1611(char*, char *);
extern void execute_1612(char*, char *);
extern void execute_1613(char*, char *);
extern void execute_1614(char*, char *);
extern void execute_1615(char*, char *);
extern void execute_1616(char*, char *);
extern void execute_1617(char*, char *);
extern void execute_1618(char*, char *);
extern void execute_1688(char*, char *);
extern void execute_1689(char*, char *);
extern void execute_1690(char*, char *);
extern void execute_1691(char*, char *);
extern void execute_1801(char*, char *);
extern void execute_1802(char*, char *);
extern void execute_1803(char*, char *);
extern void execute_1804(char*, char *);
extern void execute_1805(char*, char *);
extern void execute_1806(char*, char *);
extern void execute_1807(char*, char *);
extern void execute_1808(char*, char *);
extern void execute_1988(char*, char *);
extern void execute_2011(char*, char *);
extern void execute_2012(char*, char *);
extern void execute_2013(char*, char *);
extern void execute_2014(char*, char *);
extern void execute_2015(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2018(char*, char *);
extern void execute_2020(char*, char *);
extern void execute_2021(char*, char *);
extern void execute_2022(char*, char *);
extern void execute_2023(char*, char *);
extern void execute_2024(char*, char *);
extern void execute_2025(char*, char *);
extern void execute_2026(char*, char *);
extern void execute_2027(char*, char *);
extern void execute_2028(char*, char *);
extern void execute_2029(char*, char *);
extern void execute_2030(char*, char *);
extern void execute_2031(char*, char *);
extern void execute_2032(char*, char *);
extern void execute_2033(char*, char *);
extern void execute_2034(char*, char *);
extern void execute_2035(char*, char *);
extern void execute_2036(char*, char *);
extern void execute_2037(char*, char *);
extern void execute_2038(char*, char *);
extern void execute_2039(char*, char *);
extern void execute_2040(char*, char *);
extern void execute_2041(char*, char *);
extern void execute_2042(char*, char *);
extern void execute_2043(char*, char *);
extern void execute_2044(char*, char *);
extern void execute_2045(char*, char *);
extern void execute_2046(char*, char *);
extern void execute_2047(char*, char *);
extern void execute_2048(char*, char *);
extern void execute_2049(char*, char *);
extern void execute_2050(char*, char *);
extern void execute_2051(char*, char *);
extern void execute_2052(char*, char *);
extern void execute_2053(char*, char *);
extern void execute_2054(char*, char *);
extern void execute_2055(char*, char *);
extern void execute_2056(char*, char *);
extern void execute_2057(char*, char *);
extern void execute_2058(char*, char *);
extern void execute_2059(char*, char *);
extern void execute_2060(char*, char *);
extern void execute_1983(char*, char *);
extern void execute_543(char*, char *);
extern void execute_545(char*, char *);
extern void execute_547(char*, char *);
extern void execute_549(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_561(char*, char *);
extern void execute_1985(char*, char *);
extern void execute_1986(char*, char *);
extern void execute_563(char*, char *);
extern void execute_1987(char*, char *);
extern void execute_567(char*, char *);
extern void execute_573(char*, char *);
extern void execute_575(char*, char *);
extern void execute_1989(char*, char *);
extern void execute_1990(char*, char *);
extern void execute_1991(char*, char *);
extern void execute_1992(char*, char *);
extern void execute_1993(char*, char *);
extern void execute_1994(char*, char *);
extern void execute_1995(char*, char *);
extern void execute_1996(char*, char *);
extern void execute_1998(char*, char *);
extern void execute_1999(char*, char *);
extern void execute_2000(char*, char *);
extern void execute_2001(char*, char *);
extern void execute_2002(char*, char *);
extern void execute_2003(char*, char *);
extern void execute_2004(char*, char *);
extern void execute_2005(char*, char *);
extern void execute_2006(char*, char *);
extern void execute_2007(char*, char *);
extern void execute_581(char*, char *);
extern void execute_2061(char*, char *);
extern void execute_2062(char*, char *);
extern void execute_2063(char*, char *);
extern void execute_2064(char*, char *);
extern void execute_2065(char*, char *);
extern void execute_597(char*, char *);
extern void execute_598(char*, char *);
extern void execute_600(char*, char *);
extern void execute_602(char*, char *);
extern void execute_604(char*, char *);
extern void execute_608(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_2073(char*, char *);
extern void execute_2074(char*, char *);
extern void execute_2075(char*, char *);
extern void execute_2076(char*, char *);
extern void execute_2077(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_1398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1501(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1508(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1509(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[243] = {(funcp)execute_605, (funcp)execute_606, (funcp)execute_2070, (funcp)execute_2071, (funcp)execute_2072, (funcp)execute_12, (funcp)execute_13, (funcp)execute_14, (funcp)execute_2066, (funcp)execute_2067, (funcp)execute_2068, (funcp)execute_2069, (funcp)execute_4, (funcp)execute_5, (funcp)execute_7, (funcp)execute_8, (funcp)execute_10, (funcp)execute_11, (funcp)execute_611, (funcp)execute_612, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_624, (funcp)execute_628, (funcp)execute_629, (funcp)execute_630, (funcp)execute_631, (funcp)execute_632, (funcp)execute_633, (funcp)execute_634, (funcp)execute_635, (funcp)execute_650, (funcp)execute_651, (funcp)execute_652, (funcp)execute_653, (funcp)execute_654, (funcp)execute_655, (funcp)execute_656, (funcp)execute_657, (funcp)execute_658, (funcp)execute_659, (funcp)execute_660, (funcp)execute_661, (funcp)execute_662, (funcp)execute_663, (funcp)execute_664, (funcp)execute_665, (funcp)execute_666, (funcp)execute_667, (funcp)execute_668, (funcp)execute_669, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_715, (funcp)execute_716, (funcp)execute_717, (funcp)execute_718, (funcp)execute_719, (funcp)execute_720, (funcp)execute_721, (funcp)execute_722, (funcp)execute_723, (funcp)execute_724, (funcp)execute_725, (funcp)execute_726, (funcp)execute_727, (funcp)execute_728, (funcp)execute_979, (funcp)execute_980, (funcp)execute_981, (funcp)execute_982, (funcp)execute_983, (funcp)execute_984, (funcp)execute_985, (funcp)execute_986, (funcp)execute_987, (funcp)execute_988, (funcp)execute_1441, (funcp)execute_1442, (funcp)execute_1443, (funcp)execute_1444, (funcp)execute_1445, (funcp)execute_1446, (funcp)execute_1447, (funcp)execute_1479, (funcp)execute_1480, (funcp)execute_1481, (funcp)execute_1482, (funcp)execute_1483, (funcp)execute_1484, (funcp)execute_1485, (funcp)execute_1486, (funcp)execute_1487, (funcp)execute_1488, (funcp)execute_1489, (funcp)execute_1490, (funcp)execute_1491, (funcp)execute_1492, (funcp)execute_1493, (funcp)execute_1494, (funcp)execute_1495, (funcp)execute_1496, (funcp)execute_1497, (funcp)execute_1498, (funcp)execute_1499, (funcp)execute_1500, (funcp)execute_1562, (funcp)execute_1563, (funcp)execute_1564, (funcp)execute_1565, (funcp)execute_1566, (funcp)execute_1567, (funcp)execute_1568, (funcp)execute_1569, (funcp)execute_1570, (funcp)execute_1611, (funcp)execute_1612, (funcp)execute_1613, (funcp)execute_1614, (funcp)execute_1615, (funcp)execute_1616, (funcp)execute_1617, (funcp)execute_1618, (funcp)execute_1688, (funcp)execute_1689, (funcp)execute_1690, (funcp)execute_1691, (funcp)execute_1801, (funcp)execute_1802, (funcp)execute_1803, (funcp)execute_1804, (funcp)execute_1805, (funcp)execute_1806, (funcp)execute_1807, (funcp)execute_1808, (funcp)execute_1988, (funcp)execute_2011, (funcp)execute_2012, (funcp)execute_2013, (funcp)execute_2014, (funcp)execute_2015, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2018, (funcp)execute_2020, (funcp)execute_2021, (funcp)execute_2022, (funcp)execute_2023, (funcp)execute_2024, (funcp)execute_2025, (funcp)execute_2026, (funcp)execute_2027, (funcp)execute_2028, (funcp)execute_2029, (funcp)execute_2030, (funcp)execute_2031, (funcp)execute_2032, (funcp)execute_2033, (funcp)execute_2034, (funcp)execute_2035, (funcp)execute_2036, (funcp)execute_2037, (funcp)execute_2038, (funcp)execute_2039, (funcp)execute_2040, (funcp)execute_2041, (funcp)execute_2042, (funcp)execute_2043, (funcp)execute_2044, (funcp)execute_2045, (funcp)execute_2046, (funcp)execute_2047, (funcp)execute_2048, (funcp)execute_2049, (funcp)execute_2050, (funcp)execute_2051, (funcp)execute_2052, (funcp)execute_2053, (funcp)execute_2054, (funcp)execute_2055, (funcp)execute_2056, (funcp)execute_2057, (funcp)execute_2058, (funcp)execute_2059, (funcp)execute_2060, (funcp)execute_1983, (funcp)execute_543, (funcp)execute_545, (funcp)execute_547, (funcp)execute_549, (funcp)execute_553, (funcp)execute_554, (funcp)execute_555, (funcp)execute_561, (funcp)execute_1985, (funcp)execute_1986, (funcp)execute_563, (funcp)execute_1987, (funcp)execute_567, (funcp)execute_573, (funcp)execute_575, (funcp)execute_1989, (funcp)execute_1990, (funcp)execute_1991, (funcp)execute_1992, (funcp)execute_1993, (funcp)execute_1994, (funcp)execute_1995, (funcp)execute_1996, (funcp)execute_1998, (funcp)execute_1999, (funcp)execute_2000, (funcp)execute_2001, (funcp)execute_2002, (funcp)execute_2003, (funcp)execute_2004, (funcp)execute_2005, (funcp)execute_2006, (funcp)execute_2007, (funcp)execute_581, (funcp)execute_2061, (funcp)execute_2062, (funcp)execute_2063, (funcp)execute_2064, (funcp)execute_2065, (funcp)execute_597, (funcp)execute_598, (funcp)execute_600, (funcp)execute_602, (funcp)execute_604, (funcp)execute_608, (funcp)execute_609, (funcp)execute_610, (funcp)execute_2073, (funcp)execute_2074, (funcp)execute_2075, (funcp)execute_2076, (funcp)execute_2077, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_1398, (funcp)transaction_1501, (funcp)transaction_1502, (funcp)transaction_1508, (funcp)transaction_1509};
const int NumRelocateId= 243;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Tb_RiscV_Top_behav/xsim.reloc",  (void **)funcTab, 243);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Tb_RiscV_Top_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Tb_RiscV_Top_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Tb_RiscV_Top_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Tb_RiscV_Top_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Tb_RiscV_Top_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
