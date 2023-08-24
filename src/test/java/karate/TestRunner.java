package karate;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class TestRunner {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:karate")
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}


//mvn clean test -Dkarate.env=NonProd "-Dkarate.options=--tags @debug"