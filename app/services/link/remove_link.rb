module LinkModule
  class RemoveLink
    def initialize(params)
      # TODO: identify origin and set company
      @company = Company.last
      @params = params
      @id = params["link_id"]
    end

    def call
      link = @company.links.where(id: @id).last
      return "Link inválida, verifique o Id" if link == nil
      
      Link.transaction do
        # Deleta as tags associadas que não estejam associadas a outros links
        link.tags.each do |h|
          if h.links.count <= 1
            h.delete
          end
        end
        link.delete
        "Deletado com sucesso"
      end
    end
  end
end