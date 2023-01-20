// SPDX-FileCopyrightText: 2021-2022 City of Tampere
//
// SPDX-License-Identifier: LGPL-2.1-or-later

package fi.tampere.trevaka

import fi.espoo.evaka.BucketEnv
import fi.espoo.evaka.invoicing.domain.PaymentIntegrationClient
import fi.espoo.evaka.s3.DocumentService
import fi.espoo.evaka.shared.FeatureConfig
import fi.espoo.evaka.shared.auth.UserRole
import fi.espoo.evaka.shared.security.actionrule.ActionRuleMapping
import fi.tampere.trevaka.security.TampereActionRuleMapping
import fi.tampere.trevaka.titania.TitaniaEmployeeIdConverter
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.presigner.S3Presigner

@Configuration
class TampereConfig {

    @Bean
    fun featureConfig(): FeatureConfig = FeatureConfig(
        valueDecisionCapacityFactorEnabled = true,
        daycareApplicationServiceNeedOptionsEnabled = true,
        citizenReservationThresholdHours = 6 * 24, // Tue 00:00
        dailyFeeDivisorOperationalDaysOverride = 20,
        freeSickLeaveOnContractDays = true,
        freeAbsenceGivesADailyRefund = false,
        alwaysUseDaycareFinanceDecisionHandler = true,
        invoiceNumberSeriesStart = 5000000000, // previously hardcoded value in use
        paymentNumberSeriesStart = null, // Payments-feature not currently used in Tampere
        unplannedAbsencesAreContractSurplusDays = true,
        maxContractDaySurplusThreshold = null,
        useContractDaysAsDailyFeeDivisor = true,
        enabledChildConsentTypes = emptySet(),
        curriculumDocumentPermissionToShareRequired = false,
        assistanceDecisionMakerRoles = setOf(UserRole.DIRECTOR, UserRole.UNIT_SUPERVISOR),
        requestedStartUpperLimit = 14,
        partialAbsenceThresholdsEnabled = false,
        postOffice = "TAMPERE",
        municipalMessageAccountName = "Tampereen kaupunki",
        serviceWorkerMessageAccountName = "Tampereen kaupungin palveluohjaus"
    )

    @Bean
    fun paymentIntegrationClient(): PaymentIntegrationClient = PaymentIntegrationClient.FailingClient()

    @Bean
    fun documentService(s3Client: S3Client, s3Presigner: S3Presigner, env: BucketEnv): DocumentService =
        DocumentService(s3Client, s3Presigner, env.proxyThroughNginx)

    @Bean
    fun actionRuleMapping(): ActionRuleMapping = TampereActionRuleMapping()

    @Bean
    fun titaniaEmployeeIdConverter(): TitaniaEmployeeIdConverter = object : TitaniaEmployeeIdConverter {
        override fun fromTitania(employeeId: String): String = employeeId.trimStart('0')
    }
}
