// SPDX-FileCopyrightText: 2021 City of Tampere
//
// SPDX-License-Identifier: LGPL-2.1-or-later

package trevaka

import com.auth0.jwt.algorithms.Algorithm
import fi.espoo.evaka.BucketEnv
import fi.espoo.evaka.EvakaEnv
import org.springframework.boot.test.context.TestConfiguration
import org.springframework.context.annotation.Bean
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.S3Configuration
import software.amazon.awssdk.services.s3.presigner.S3Presigner
import trevaka.s3.createBucketsIfNeeded
import java.security.KeyPairGenerator
import java.security.interfaces.RSAPublicKey

@TestConfiguration
class IntegrationTestConfiguration {

    @Bean
    fun s3Client(evakaEnv: EvakaEnv, bucketEnv: BucketEnv): S3Client {
        val client = S3Client.builder()
            .region(evakaEnv.awsRegion)
            .serviceConfiguration(S3Configuration.builder().pathStyleAccessEnabled(true).build())
            .endpointOverride(bucketEnv.s3MockUrl)
            .credentialsProvider(
                StaticCredentialsProvider.create(AwsBasicCredentials.create("foo", "bar")),
            )
            .build()

        createBucketsIfNeeded(client, bucketEnv.allBuckets())

        return client
    }

    @Bean
    fun s3Presigner(evakaEnv: EvakaEnv, bucketEnv: BucketEnv): S3Presigner =
        S3Presigner.builder()
            .region(evakaEnv.awsRegion)
            .serviceConfiguration(S3Configuration.builder().pathStyleAccessEnabled(true).build())
            .endpointOverride(bucketEnv.s3MockUrl)
            .credentialsProvider(
                StaticCredentialsProvider.create(AwsBasicCredentials.create("foo", "bar")),
            )
            .build()

    @Bean
    fun jwtAlgorithm(): Algorithm {
        val generator = KeyPairGenerator.getInstance("RSA")
        generator.initialize(2048)
        val keyPair = generator.generateKeyPair()
        val jwtPublicKey = keyPair.public as RSAPublicKey
        return Algorithm.RSA256(jwtPublicKey, null)
    }
}
