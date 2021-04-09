plugins {
    id("org.jetbrains.kotlin.jvm") version TrevakaServiceDeps.kotlin
    id("org.jetbrains.kotlin.plugin.spring") version TrevakaServiceDeps.kotlin
    id("org.springframework.boot") version TrevakaServiceDeps.springBoot
    id("org.unbroken-dome.xjc") version TrevakaServiceDeps.xjc
}

repositories {
    jcenter()
    mavenCentral()
}


dependencies {
    implementation(platform(":evaka-bom"))
    testImplementation(platform(":evaka-bom"))

    implementation(":evaka-service")

    implementation("io.github.microutils:kotlin-logging-jvm")
    implementation("net.rakugakibox.spring.boot:logback-access-spring-boot-starter")

    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("org.springframework.boot:spring-boot-starter-web-services")

    implementation("javax.xml.bind:jaxb-api")
    implementation("org.apache.httpcomponents:httpclient")

    testImplementation("org.springframework.boot:spring-boot-starter-test")
    testImplementation("org.springframework.ws:spring-ws-test")
    testImplementation("com.github.tomakehurst:wiremock-jre8:${TrevakaServiceDeps.wiremock}")
    testImplementation("ru.lanwen.wiremock:wiremock-junit5:${TrevakaServiceDeps.wiremockJunit5}")
    testImplementation(platform("org.springframework.cloud:spring-cloud-dependencies:${TrevakaServiceDeps.springCloud}"))
    testImplementation("org.springframework.cloud:spring-cloud-starter-contract-stub-runner")
    testImplementation("org.testcontainers:postgresql")
    testImplementation("com.amazonaws:aws-java-sdk-s3")
    testImplementation("com.auth0:java-jwt")
}

springBoot {
    mainClass.set("fi.tampere.trevaka.TrevakaMainKt")
}

allprojects {
    tasks.withType<JavaCompile> {
        sourceCompatibility = TrevakaServiceDeps.java
        targetCompatibility = TrevakaServiceDeps.java
    }
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile> {
    kotlinOptions {
        jvmTarget = TrevakaServiceDeps.java
        allWarningsAsErrors = name != "compileIntegrationTestKotlin"
    }
}

tasks {
    test {
        useJUnitPlatform()
        systemProperty("spring.profiles.active", "integration-test,trevaka")
    }
    bootRun {
        systemProperty("spring.profiles.active", "local,trevaka-local")
    }
}
