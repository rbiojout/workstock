class CountriesController < InheritedResources::Base

  private

    def country_params
      params.require(:country).permit(:name, :opening_date, :country_id)
    end
end

