(deftemplate ioproxy
        (slot fact-id)
        (multislot answers)
        (multislot messages)
        (slot reaction)
        (slot value)
        (slot restore)
)


(deftemplate question-user 
        (slot question)
        (multislot answers)
)


(deftemplate answer-user
        (slot question)
        (slot answer)
)


(deffacts proxy-fact
        (ioproxy
                (fact-id 0112)
                (value NONE)
                (messages)
        )
)


(defrule clear-messages
        (declare (salience 90))
        ?clear-msg-flg <- (clearmessage)
        ?proxy <- (ioproxy)
        =>
        (modify ?proxy (messages) )
        (retract ?clear-msg-flg)
        (printout t "Messages cleared ..." crlf)        
)




(defrule parse-output
        (declare (salience 100))
        ?proxy <- (ioproxy (value ?v)  (fact-id ?fid) )
        ?answ  <- (answer-user (question ?q)  )
        (test (eq ?fid (fact-index ?answ) ) )
        (test (not (eq ?v NONE )))
        (test (not (eq ?fid NONE )))
        =>
        (modify ?proxy (answers) (value NONE) (fact-id NONE) )
        (modify ?answ (answer ?v))
        (printout t "Output parsed ..." crlf)        
)




(defrule set-output-and-halt
        (declare (salience 99))
        ?current-message <- (sendmessagehalt ?new-msg)
        ?proxy <- (ioproxy (messages $?msg-list))
        =>
        (printout t "Message set : " ?new-msg " ... halting ..." crlf)
        (modify ?proxy (messages ?new-msg))
        (retract ?current-message)
        (halt)
)


(defrule append-output-and-halt
        (declare (salience 99))
        ?current-message <- (appendmessagehalt $?new-msg)
        ?proxy <- (ioproxy (messages $?msg-list))
        =>
        (printout t "Messages appended : " $?new-msg " ... halting ..." crlf)
        (modify ?proxy (messages $?msg-list $?new-msg))
        (retract ?current-message)
        (halt)
)


(defrule set-output-and-proceed
        (declare (salience 99))
        ?current-message <- (sendmessage ?new-msg)
        ?proxy <- (ioproxy)
        =>
        (printout t "Message set : " ?new-msg " ... proceed ..." crlf)
        (modify ?proxy (messages ?new-msg))
        (retract ?current-message)
)


(defrule append-output-and-proceed
        (declare (salience 99))
        ?current-message <- (appendmessage ?new-msg)
        ?proxy <- (ioproxy (messages $?msg-list))
        =>
        (printout t "Message appended : " ?new-msg " ... proceed ..." crlf)
        (modify ?proxy (messages $?msg-list ?new-msg))
        (retract ?current-message)
)


(defrule end
        (declare (salience -200))
        ?proxy <- (ioproxy (messages $?msg-list))
        =>
        (assert (sendmessagehalt "Вывод окончен, результата нет"))
)