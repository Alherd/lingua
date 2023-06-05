class CompletedFormController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { forms: CompletedForm.where(user_id: 1, task_id: params[:task_id]).pluck(:fname) }
  end

  def save_fname
    CompletedForm.create!(user_id: 1, task_id: params['task_id'], fname: params['fname'])    
  end
end
