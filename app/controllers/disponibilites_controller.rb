class DisponibilitesController < ApplicationController
  # GET /disponibilites
  # GET /disponibilites.json
  def index
=begin
    @token = session[:token];
    client = Google::APIClient.new(:application_name => 'fungo-remplacement-cie',:application_version => 'v1');
    client.authorization.access_token = @token;
    service = client.discovered_api('calendar', 'v3');

    result = client.execute(:api_method => service.events.list,
                            :parameters => {'calendarId' => 'nickdemers@gmail.com', 'orderBy' => 'startTime'});
=end
    @disponibilites = Disponibilite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disponibilites }
    end
  end

  # GET /disponibilites/1
  # GET /disponibilites/1.json
  def show
    @disponibilite = Disponibilite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disponibilite }
    end
  end

  # GET /disponibilites/new
  # GET /disponibilites/new.json
  def new
    @disponibilite = Disponibilite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disponibilite }
    end
  end

  # GET /disponibilites/1/edit
  def edit
    @disponibilite = Disponibilite.find(params[:id])
  end

  # POST /disponibilites
  # POST /disponibilites.json
  def create

    event = {
        'summary' => 'Remplacement 3',
        'location' => 'Somewhere',
        'start' => {
            'dateTime' => '2013-02-12T11:00:00.000-07:00'
        },
        'end' => {
            'dateTime' => '2013-02-12T11:25:00.000-07:00'
        },
        'attendees' => [
            {
                'email' => 'nickdemers@gmail.com'
            }
        ]
    };

    @token = session[:token];
    client = Google::APIClient.new(:application_name => 'fungo-remplacement-cie',:application_version => 'v1');
    client.authorization.access_token = @token;
    service = client.discovered_api('calendar', 'v3');

=begin
    key = Google::APIClient::PKCS12.load_key('client.p12', 'notasecret')
    service_account = Google::APIClient::JWTAsserter.new(
        '1029037884002-hs7uj43bat2efoa07tdmnbb9l4ku8u1o@developer.gserviceaccount.com',
        'https://www.googleapis.com/auth/prediction',
        key)
    client.authorization = service_account.authorize
=end
    result = client.execute(:api_method => service.events.insert,
                            :parameters => {'calendarId' => 'nickdemers@gmail.com', 'fields' => 'kind,id,status'},
                            :body => JSON.dump(event),
                            :headers => {'Content-Type' => 'application/json'});


    @disponibilite = Disponibilite.new(params[:disponibilite])
    @disponibilite.id_event_calendar= result.data.id

    respond_to do |format|
      if @disponibilite.save
        format.html { redirect_to @disponibilite, notice: 'Disponibilite was successfully created.' }
        format.json { render json: @disponibilite, status: :created, location: @disponibilite }

      else
        format.html { render action: "new" }
        format.json { render json: @disponibilite.errors, status: :unprocessable_entity }

      end
    end
  end

  # PUT /disponibilites/1
  # PUT /disponibilites/1.json
  def update
    @disponibilite = Disponibilite.find(params[:id])

    respond_to do |format|
      if @disponibilite.update_attributes(params[:disponibilite])
        format.html { redirect_to @disponibilite, notice: 'Disponibilite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disponibilite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disponibilites/1
  # DELETE /disponibilites/1.json
  def destroy
    @disponibilite = Disponibilite.find(params[:id])
    @disponibilite.destroy

    respond_to do |format|
      format.html { redirect_to disponibilites_url }
      format.json { head :no_content }
    end
  end
end
