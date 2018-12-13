function legsInContact = legsContactDetector(icubStandup,state)

    % LEGSCONTACTDETECTOR activates the contacts at legs if the current state
    % of the state machine is lower than state 3 (two feet balancing)
    %

    %% --- Initialization ---
    
    legsInContact = 0;

    if (state < 3) && icubStandup
    
        legsInContact = 1;
    end
end
