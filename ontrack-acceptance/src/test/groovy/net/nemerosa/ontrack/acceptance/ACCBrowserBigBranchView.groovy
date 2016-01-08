package net.nemerosa.ontrack.acceptance

import net.nemerosa.ontrack.acceptance.browser.pages.BranchPage
import net.nemerosa.ontrack.acceptance.support.AcceptanceTestSuite
import org.junit.Test

import static net.nemerosa.ontrack.acceptance.browser.Browser.browser
import static net.nemerosa.ontrack.acceptance.steps.BasicSteps.loginAsAdmin
import static net.nemerosa.ontrack.test.TestUtils.uid

/**
 * GUI test which tests the boundaries of performance acceptance on a branch with many validation stamps and runs.
 */
@AcceptanceTestSuite
class ACCBrowserBigBranchView extends AcceptanceTestClient {


    public static final String BRANCH_NAME = 'B'

    @Test
    void 'Big branch'() {

        // Data

        int validationStampCount = 45
        List<String> validationStampNames = (1..validationStampCount).collect { "VS${it}" }

        int buildCount = 10
        List<String> buildNames = (1..buildCount).collect { "${it}" }

        List<String> statuses = ['FAILED', 'INTERRUPTED', 'PASSED']

        // Preparation of the branch structure

        def projectName = uid('P')
        ontrack.project(projectName) {
            branch(BRANCH_NAME) {
                // 40+ validation stamps
                validationStampNames.each { validationStamp it }

                // 10 builds
                buildNames.each { build it }
            }
        }

        // Creation of validation runs

        int index = 0
        buildNames.each { buildName ->
            def build = ontrack.build(projectName, BRANCH_NAME, buildName)
            // For each validation stamp
            validationStampNames.each { validationStampName ->
                // Gets the number of runs to create, according to the index
                int runs = (index % 7) + 1
                (1..runs).each {
                    String status = statuses[index % statuses.size()]
                    build.validate(validationStampName, status)
                    index++
                }
            }
        }

        // Goes to the branch page

        def branch = ontrack.branch(projectName, BRANCH_NAME)

        browser { browser ->
            // Logs in
            loginAsAdmin(browser)
            // Goes to the branch page
            BranchPage branchPage = goTo(BranchPage, [id: branch.id])
            // BP
            println branchPage
            // TODO Screenshot before loading
            // TODO Sync with display of one validation run
            // TODO Timing of the load
            // TODO Screenshot after loading of view
        }

    }

}
