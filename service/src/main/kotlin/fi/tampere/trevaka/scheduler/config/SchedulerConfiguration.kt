package fi.tampere.trevaka.scheduler.config

import fi.espoo.evaka.ScheduledJobsEnv
import fi.espoo.evaka.shared.job.DefaultJobSchedule
import fi.espoo.evaka.shared.job.JobSchedule
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class SchedulerConfiguration {

    @Bean
    fun jobSchedule(env: ScheduledJobsEnv): JobSchedule = DefaultJobSchedule(env)

}
