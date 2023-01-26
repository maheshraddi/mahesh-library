# {/* <script>
#   $(document).ready(function() {
#     $(".region-select").on("change", function() {
#       var regionId = $(this).val();
#       $.ajax({
#         url: "/locations",
#         data: { region_id: regionId },
#         dataType: "json"
#       }).done(function(data) {
#         var locations = data.locations;
#         var options = "";
#         for (var i = 0; i < locations.length; i++) {
#           options += "<option value='" + locations[i].id + "'>" + locations[i].name + "</option>";
#         }
#         $(".location-select").html(options);
#       });
#     });
#   });
# </script type="text/javascript"> */}