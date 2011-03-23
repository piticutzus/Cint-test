<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>

    <script type="text/javascript">
        google.load("maps", "2.x");
    </script>

    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            var map = new GMap2($("#map").get(0));
            var loc = new GLatLng(60, 18);
            map.setCenter(loc, 8);

            // setup 10 random points
            var bounds = map.getBounds();
            var southWest = bounds.getSouthWest();
            var northEast = bounds.getNorthEast();
            var lngSpan = northEast.lng() - southWest.lng();
            var latSpan = northEast.lat() - southWest.lat();
            var markers = [];
            for (var i = 0; i < 10; i++) {
                var point = new GLatLng(southWest.lat() + latSpan * Math.random(),
                        southWest.lng() + lngSpan * Math.random());
                marker = new GMarker(point);
                map.addOverlay(marker);
                markers[i] = marker;
            }

            $(markers).each(function (i, marker) {
                $("<li />")
                        .html("Point " + i)
                        .click(function () {
                            displayPoint(marker, i);
                        })
                        .appendTo("#list");

                GEvent.addListener(marker, "click", function () {
                    displayPoint(marker, i);
                });
            });

            $("#message").appendTo(map.getPane(G_MAP_FLOAT_SHADOW_PANE));

            function displayPoint(marker, index) {
                $("#message").hide();

                var moveEnd = GEvent.addListener(map, "moveend", function () {
                    var markerOffset = map.fromLatLngToDivPixel(marker.getLatLng());
                    $("#message")
                            .html("Lalalalal")
                            .fadeIn()
                            .css({ top: markerOffset.y, left: markerOffset.x });

                    GEvent.removeListener(moveEnd);
                });
                map.panTo(marker.getLatLng());
            }
        });
        </script>

    <!-- map here -->
    <div id="map">

    </div>

    <ul id="list">
    </ul>

    <div id="message" style="display:none;">

    </div>
</asp:Content>
