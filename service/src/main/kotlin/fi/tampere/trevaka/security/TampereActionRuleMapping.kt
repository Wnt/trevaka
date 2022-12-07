// SPDX-FileCopyrightText: 2021-2022 City of Tampere
//
// SPDX-License-Identifier: LGPL-2.1-or-later

package fi.tampere.trevaka.security

import fi.espoo.evaka.shared.auth.UserRole
import fi.espoo.evaka.shared.security.Action
import fi.espoo.evaka.shared.security.PilotFeature
import fi.espoo.evaka.shared.security.actionrule.ActionRuleMapping
import fi.espoo.evaka.shared.security.actionrule.HasGlobalRole
import fi.espoo.evaka.shared.security.actionrule.HasUnitRole
import fi.espoo.evaka.shared.security.actionrule.ScopedActionRule
import fi.espoo.evaka.shared.security.actionrule.UnscopedActionRule

class TampereActionRuleMapping : ActionRuleMapping {
    override fun rulesOf(action: Action.UnscopedAction): Sequence<UnscopedActionRule> = when (action) {
        Action.Global.APPLICATIONS_PAGE,
        Action.Global.FINANCE_PAGE,
        Action.Global.PERSON_SEARCH_PAGE,
        Action.Global.FETCH_INCOME_STATEMENTS_AWAITING_HANDLER,
        Action.Global.READ_PERSON_APPLICATION,
        Action.Global.READ_SERVICE_WORKER_APPLICATION_NOTES,
        Action.Global.SEARCH_PEOPLE,
        Action.Global.SEARCH_PEOPLE_UNRESTRICTED,
        Action.Global.READ_FEE_THRESHOLDS,
        Action.Global.SEARCH_FEE_DECISIONS,
        Action.Global.SEARCH_VOUCHER_VALUE_DECISIONS,
        Action.Global.READ_FINANCE_DECISION_HANDLERS,
        Action.Global.SEARCH_INVOICES,
        Action.Global.READ_UNITS,
        Action.Global.READ_DECISION_UNITS,
        Action.Global.READ_ENDED_PLACEMENTS_REPORT,
        Action.Global.READ_INVOICE_REPORT,
        Action.Global.READ_PLACEMENT_SKETCHING_REPORT,
        Action.Global.READ_STARTING_PLACEMENTS_REPORT,
        Action.Global.READ_INCOME_TYPES,
        Action.Global.READ_INVOICE_CODES,
        Action.Global.READ_EMPLOYEES -> {
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR)
            )
        }
        Action.Global.REPORTS_PAGE-> {
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).inAnyUnit()
            )
        }
        Action.Global.PIN_CODE_PAGE -> sequenceOf(
            // removed director from default rules
            HasGlobalRole(UserRole.ADMIN, UserRole.REPORT_VIEWER, UserRole.SERVICE_WORKER),
            HasUnitRole(
                UserRole.UNIT_SUPERVISOR,
                UserRole.STAFF,
                UserRole.SPECIAL_EDUCATION_TEACHER,
                UserRole.EARLY_CHILDHOOD_EDUCATION_SECRETARY
            ).inAnyUnit()
        )
        Action.Global.CREATE_PERSONAL_MOBILE_DEVICE_PAIRING,
        Action.Global.PERSONAL_MOBILE_DEVICE_PAGE -> {
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.SPECIAL_EDUCATION_TEACHER).inAnyUnit()
            )
        }
        else -> action.defaultRules.asSequence()
    }

    override fun <T> rulesOf(action: Action.ScopedAction<in T>): Sequence<ScopedActionRule<in T>> = when (action) {
        Action.Application.READ,
        Action.Application.READ_IF_HAS_ASSISTANCE_NEED,
        Action.Application.READ_PLACEMENT_PLAN_DRAFT,
        Action.Application.READ_DECISION_DRAFT,
        Action.Application.READ_DECISIONS,
        Action.Application.READ_NOTES,
        Action.Application.READ_ATTACHMENTS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.AssistanceNeedDecision.DECIDE,
        Action.AssistanceNeedDecision.MARK_AS_OPENED -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.UNIT_SUPERVISOR).andIsDecisionMakerForAssistanceNeedDecision() as ScopedActionRule<in T>
            )
        }
        Action.AssistanceNeedDecision.READ,
        Action.AssistanceNeedDecision.READ_DECISION_MAKER_OPTIONS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.AssistanceNeedDecision.READ_IN_REPORT -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.UNIT_SUPERVISOR).inUnit() as ScopedActionRule<in T>
            ) + sequenceOf(
                HasUnitRole(UserRole.SPECIAL_EDUCATION_TEACHER).inPlacementUnitOfChildOfAssistanceNeedDecision() as ScopedActionRule<in T>
            )
        }
        Action.Attachment.READ_APPLICATION_ATTACHMENT,
        Action.Attachment.READ_INCOME_STATEMENT_ATTACHMENT,
        Action.Attachment.READ_INCOME_ATTACHMENT -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.BackupCare.UPDATE,
        Action.BackupCare.DELETE -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).inPlacementUnitOfChildOfBackupCare() as ScopedActionRule<in T>
            )
        }
        Action.Child.READ,
        Action.Child.READ_ABSENCES,
        Action.Child.READ_FUTURE_ABSENCES,
        Action.Child.READ_ADDITIONAL_INFO,
        Action.Child.READ_DECISIONS,
        Action.Child.READ_APPLICATION,
        Action.Child.READ_ASSISTANCE_NEED_DECISIONS,
        Action.Child.READ_ASSISTANCE_NEED_VOUCHER_COEFFICIENTS,
        Action.Child.READ_BACKUP_CARE,
        Action.Child.READ_DAILY_SERVICE_TIMES,
        Action.Child.READ_PLACEMENT,
        Action.Child.READ_GUARDIANS,
        Action.Child.READ_FEE_ALTERATIONS,
        Action.Child.READ_CHILD_RECIPIENTS,
        Action.Child.READ_CHILD_CONSENTS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Child.CREATE_BACKUP_CARE -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).inPlacementUnitOfChild() as ScopedActionRule<in T>
            )
        }
        Action.Child.READ_ASSISTANCE_ACTION,
        Action.Child.READ_ASSISTANCE_NEED -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).inPlacementUnitOfChild() as ScopedActionRule<in T>
            ) + sequenceOf(HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>)
        }
        Action.Child.READ_VASU_DOCUMENT -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).withUnitFeatures(PilotFeature.VASU_AND_PEDADOC)
                    .inPlacementUnitOfChild() as ScopedActionRule<in T>
            )
        }
        Action.Child.CREATE_ABSENCE,
        Action.Child.DELETE_ABSENCE -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.FINANCE_ADMIN) as ScopedActionRule<in T>
            )
        }
        Action.Decision.DOWNLOAD_PDF -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.FeeDecision.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Group.CREATE_ABSENCES,
        Action.Group.DELETE_ABSENCES -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.FINANCE_ADMIN) as ScopedActionRule<in T>
            )
        }
        Action.Group.READ_ABSENCES,
        Action.Group.READ_STAFF_ATTENDANCES,
        Action.Group.READ_CARETAKERS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Invoice.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Parentship.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Partnership.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Person.READ_CHILD_PLACEMENT_PERIODS,
        Action.Person.READ_DECISIONS,
        Action.Person.READ_FAMILY_OVERVIEW,
        Action.Person.READ_FEE_DECISIONS,
        Action.Person.READ_INCOME,
        Action.Person.READ_INCOME_STATEMENTS,
        Action.Person.READ_INVOICES,
        Action.Person.READ_INVOICE_ADDRESS,
        Action.Person.READ_INVOICE_CORRECTIONS,
        Action.Person.READ_PARENTSHIPS,
        Action.Person.READ_PARTNERSHIPS,
        Action.Person.READ,
        Action.Person.READ_DEPENDANTS,
        Action.Person.READ_VOUCHER_VALUE_DECISIONS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Unit.READ_APPLICATIONS_AND_PLACEMENT_PLANS,
        Action.Unit.READ_ATTENDANCES,
        Action.Unit.READ_GROUP_DETAILS,
        Action.Unit.READ_GROUPS,
        Action.Unit.READ_CHILD_CAPACITY_FACTORS,
        Action.Unit.READ_BACKUP_CARE,
        Action.Unit.READ_PLACEMENT,
        Action.Unit.READ_PLACEMENT_PLAN,
        Action.Unit.READ_APPLICATIONS_REPORT,
        Action.Unit.READ_CHILD_IN_DIFFERENT_ADDRESS_REPORT,
        Action.Unit.READ_FAMILY_CONFLICT_REPORT,
        Action.Unit.READ_MISSING_HEAD_OF_FAMILY_REPORT,
        Action.Unit.READ_PARTNERS_IN_DIFFERENT_ADDRESS_REPORT,
        Action.Unit.READ_SERVICE_VOUCHER_VALUES_REPORT,
        Action.Unit.READ_MISSING_GROUP_PLACEMENTS -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.Unit.READ_ATTENDANCE_RESERVATION_REPORT -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).inUnit() as ScopedActionRule<in T>
            )
        }
        Action.Unit.READ_CHILD_ATTENDANCES -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            ) + sequenceOf(
                HasUnitRole(UserRole.SPECIAL_EDUCATION_TEACHER).inUnit() as ScopedActionRule<in T>
            )
        }
        Action.VoucherValueDecision.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasGlobalRole(UserRole.DIRECTOR) as ScopedActionRule<in T>
            )
        }
        Action.VasuDocument.READ -> {
            @Suppress("UNCHECKED_CAST")
            action.defaultRules.asSequence() + sequenceOf(
                HasUnitRole(UserRole.STAFF).withUnitFeatures(PilotFeature.VASU_AND_PEDADOC)
                    .inPlacementUnitOfChildOfVasuDocument() as ScopedActionRule<in T>
            )
        }
        else -> action.defaultRules.asSequence()
    }
}
