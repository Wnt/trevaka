// SPDX-FileCopyrightText: 2024 Tampere region
//
// SPDX-License-Identifier: LGPL-2.1-or-later

package fi.hameenkyro.evaka.invoice.service

import fi.hameenkyro.evaka.HameenkyroProperties
import org.springframework.stereotype.Service
import software.amazon.awssdk.core.sync.RequestBody
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.model.PutObjectRequest
import java.nio.charset.StandardCharsets
import java.text.SimpleDateFormat
import java.util.*

@Service
class S3Sender(private val s3Client: S3Client, private val properties: HameenkyroProperties) {
    fun send(content: String) {
        val bucket = properties.bucket.export
        val fileName = SimpleDateFormat("'invoices/vaka'yyyyMMdd'.txt'").format(Date())

        val request = PutObjectRequest.builder()
            .bucket(bucket)
            .key(fileName)
            .contentType("text/csv")
            .build()
        val body = RequestBody.fromString(content, StandardCharsets.ISO_8859_1)
        s3Client.putObject(request, body)
    }
}
