class GeeMailsController < ApplicationController
  before_action :set_gee_mail, only: [:show, :edit, :update, :destroy]
  include Mailer
  # GET /gee_mails
  # GET /gee_mails.json
  def index
    @gee_mails = GeeMail.all
  end

  # GET /gee_mails/1
  # GET /gee_mails/1.json
  def show
  end

  # GET /gee_mails/new
  def new
    @gee_mail = GeeMail.new
    @time = Time.now
  end

  # GET /gee_mails/1/edit
  def edit
  end

  # POST /gee_mails
  # POST /gee_mails.json
  def create
    @gee_mail = GeeMail.new(gee_mail_params)

    respond_to do |format|
      if @gee_mail.save
        mail_sender
    p '##################################################'
    p @gee_mail
    p '##################################################'
        format.html { redirect_to @gee_mail, notice: 'Gee mail was successfully created.' }
        format.json { render :show, status: :created, location: @gee_mail }
      else
        format.html { render :new }
        format.json { render json: @gee_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gee_mails/1
  # PATCH/PUT /gee_mails/1.json
  def update
    respond_to do |format|
      if @gee_mail.update(gee_mail_params)
        format.html { redirect_to @gee_mail, notice: 'Gee mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @gee_mail }
      else
        format.html { render :edit }
        format.json { render json: @gee_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gee_mails/1
  # DELETE /gee_mails/1.json
  def destroy
    @gee_mail.destroy
    respond_to do |format|
      format.html { redirect_to gee_mails_url, notice: 'Gee mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mail_send
    @mail = GeeMailer.sendmail_confirm.deliver
    render :text => 'send finish'
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_gee_mail
    @gee_mail = GeeMail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gee_mail_params
    params.require(:gee_mail).permit(:to, :subject, :text, :date)
  end
    
end
