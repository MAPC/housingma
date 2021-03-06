class MunicipalitiesController < ApplicationController
  def show
    @muni = Municipality.unscoped.find_by_name(muni_params[:id].titleize)
  end

  def report
    @report = Report.new( Municipality.find_by_name(muni_params[:id].titleize) )
  end

  def profile
    @profile = Profile.new( Municipality.find_by_name(muni_params[:id].titleize) )
    respond_to do |format|
      format.html
      format.json { render json: @profile.to_json }
      format.csv { send_data @profile.to_csv, filename: "#{@profile.muni} Housing Data Profile.csv", disposition: 'attachment' }
    end
  end

  def download
    @muni = Municipality.find_by_name(muni_params[:id].titleize)
  end

  def guide
    @guide = OpenStruct.new(topic_areas: TopicArea.all)
    @muni  = Municipality.unscoped.find_by_name(muni_params[:id].titleize)
  end

  def form
    @muni = Municipality.find_by_name(muni_params[:id].titleize)
    if @muni 
      redirect_to municipality_path(@muni)
    else
      redirect_to root_path
    end
  end

  def export
    @report = Report.new( Municipality.find_by_name(muni_params[:id].titleize) )

    # Initialize DocxReplace with my template
    doc = DocxReplace::Doc.new("#{Rails.root}/lib/assets/template-2014-06-09.docx", "#{Rails.root}/tmp")

    # Specific variables: DateTime in the Word doc has issues with the formatting string
    date = DateTime.now.strftime("%d %b %Y")
    url  = "#{request.host}/#{muni_params[:id]}/report}"

    matches = doc.uniq_matches(/\#\{(.*?)\}/)
    matches.each { |match| doc.replace("\#{#{match}}", "#{eval(match.strip)}", true) }
    
    # Write the document back to a temporary file
    tmp_file = Tempfile.new('word_template', "#{Rails.root}/tmp")
    doc.commit tmp_file.path

    send_file tmp_file.path, filename: "#{@report.muni} Housing Needs Assessment.docx", disposition: 'attachment'
  end

  private
  def muni_params
    params.permit(:name, :muni_id, :geom, :id)
  end

end
