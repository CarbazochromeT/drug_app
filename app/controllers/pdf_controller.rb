class PdfController < ApplicationController
    def show
      respond_to do |format|
        format.pdf do
          send_file(pdf_path, filename: "filename(省略できるか？)", disposition: 'inline')
        end
      end
    end
  
    private
    def pdf_path
      "/app/assets/pdf/#{params[:id]}.pdf"
    end
end
