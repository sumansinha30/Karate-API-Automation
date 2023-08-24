package karate.features;

import com.intuit.karate.junit5.Karate;

class Runner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("getCallDemo").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return Karate.run("getCallDemo").tags("@first").relativeTo(getClass());
    }

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:karate/features/postCallLoginDemo.feature")
                .tags("@debug")
                .karateEnv("NonProd");
    }

}
