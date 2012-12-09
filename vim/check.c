/*
 * Copyright (C) CopyrightYear  CopyrightHolder
 */

#include <stdio.h>
#include <check.h>

/*----------------------------------------------*/
/* unit tests                                   */
/*----------------------------------------------*/
START_TEST (prog)
{
	printf ("Hello, world!\n");
}
END_TEST



/*----------------------------------------------*/
/* test suites                                  */
/*----------------------------------------------*/
Suite *
prog_startup (void)
{
	Suite *suite_p = suite_create ("prog");
	TCase *tcIpc   = tcase_create ("prog hello");

	tcase_add_test (tcIpc, prog);
	suite_add_tcase (suite_p, tcIpc);

	return suite_p;
}

/*----------------------------------------------*/
/* meat and potatoes                            */
/*----------------------------------------------*/
int
main (void)
{
	int f1;
	SRunner *suiteRun;

	suiteRun = srunner_create (prog_startup());
	srunner_set_xml (suiteRun, "CheckLog_prog.xml");
	srunner_run_all (suiteRun, CK_VERBOSE);
	f1 = srunner_ntests_failed (suiteRun);
	srunner_free (suiteRun);


	return f1;
}
