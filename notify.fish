function notify --description 'Beep when the most recent job completes'
    set -l job (jobs -l -g)
    or begin
        echo "There are no jobs" >&2
        return 1
    end

    function _notify_job_$job --on-job-exit $job --inherit-variable job
        echo -n \a # beep
        functions -e _notify_job_$job
    end
end
