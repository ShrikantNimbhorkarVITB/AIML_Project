% IN-BUILT KNOWLEDGE BASE FOR CAREER RECOMMENDATION SYSTEM
% This Prolog code defines a simple knowledge base for a career recommendation system. It includes facts about user interests and the requirements of various careers, as well as inference ruleS to recommend careers based on user interests.
% FACTS
% --- CATEGORY: TECHNOLOGY & ENGINEERING ---
requires(data_scientist, math).
requires(data_scientist, python).
requires(ai_engineer, logic).
requires(ai_engineer, python).
requires(cyber_security_analyst, networking).
requires(cyber_security_analyst, logic).
requires(cloud_architect, networking).
requires(cloud_architect, systems).
requires(civil_engineer, physics).
requires(civil_engineer, drawing).

% --- CATEGORY: MEDICAL & SCIENCES ---
requires(doctor, biology).
requires(doctor, empathy).
requires(pharmacist, chemistry).
requires(pharmacist, biology).
requires(research_scientist, chemistry).
requires(research_scientist, math).

% --- CATEGORY: BUSINESS & LAW ---
requires(chartered_accountant, math).
requires(chartered_accountant, finance).
requires(lawyer, oratory).
requires(lawyer, logic).
requires(marketing_manager, creativity).
requires(marketing_manager, psychology).

% --- CATEGORY: ARTS & DESIGN ---
requires(ui_ux_designer, design).
requires(ui_ux_designer, psychology).
requires(animator, drawing).
requires(animator, creativity).
requires(architect, drawing).
requires(architect, physics).

% RULES
% Rule to match a user to a career based on a single interest
recommend(User, Career) :- 
    likes(User, Interest), 
    requires(Career, Interest).