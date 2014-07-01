class QuestionsController < ApplicationController
    before_filter :check_session, except: []
end
