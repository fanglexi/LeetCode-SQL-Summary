-- Note: answer rate = answer actions / total non-answer actions
-- If LeetCode change answer for the test case, plz let me know

SELECT question_id AS survey_log
FROM SurveyLog
GROUP BY question_id
ORDER BY sum(case when action='answer' then 1 else 0 end)*1.0/(sum(case when action='show' then 1 else 0 end)) DESC, question_id ASC
Limit 1;
