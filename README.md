<h1>Adding new library</h1>
<%= form_with(model: @library, local: true, data: {remote: true}, method: :post) do |f| %>
  <p>
   <%= f.label :name %>
   <%= f.text_field :name %>
  </p>
  <p>
     <%=f.hidden_field :company_id, value: params[:company_id]%>
   </p>
  <p>
   <%= f.label :Region %>
   <%= f.select :region_ids, options_from_collection_for_select(Region.all, :id, :name),  {include_hidden: false}, {:multiple => true, :class=>"form-control",id: "region"} %>
  </p>
  <p>
   <%= f.label :Location %>
   <%= f.select :location_ids, options_for_select([["Select Locations"]]), {include_hidden: false}, {class: "form-control" ,id: "location_ids" , multiple: true} %>     
  </p>
   <%= f.submit "Add Library" %>
<% end %>
