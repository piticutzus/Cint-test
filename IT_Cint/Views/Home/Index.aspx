<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="IT_Cint.Models" %>
<%@ Import Namespace="System.Collections.Generic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<<<<<<< HEAD
    <h2><%: ViewData["Message"] %></h2>

    <script type="text/javascript">
=======
    <h2>
    <!--<%: ViewData["Message"] %>-->
    CINT
    </h2>

    <ul>
        <% 
            foreach (Panelist p in (IEnumerable)ViewData.Model)
            {
                %>
                <li>
                    <%= p.name %>
                </li>
            <% }              
               
        %>
    </ul>

    <script type= "text/javascript">

        function initializeMap() {

            var myLatlng = new google.maps.LatLng(60, 18);
            var myOptions = {
                zoom: 1,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById("map"),myOptions);
        }

    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            initializeMap();
        });
    </script>


    <!-----------------------------------------
    ----------------Map Try 1 ---------------
    ------------------------------------------->
    <!--<script type="text/javascript">
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2
        google.load("maps", "2.x");
    </script>

    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            var map = new GMap2($("#map").get(0));
            var loc = new GLatLng(60, 18);
<<<<<<< HEAD
            map.setCenter(loc, 8);
=======
            map.setCenter(loc, 2);
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2

            // setup 10 random points
            var bounds = map.getBounds();
            var southWest = bounds.getSouthWest();
            var northEast = bounds.getNorthEast();
            var lngSpan = northEast.lng() - southWest.lng();
            var latSpan = northEast.lat() - southWest.lat();
            var markers = [];
<<<<<<< HEAD
            for (var i = 0; i < 10; i++) {
=======
            for (var i = 0; i < 5; i++) {
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2
                var point = new GLatLng(southWest.lat() + latSpan * Math.random(),
                        southWest.lng() + lngSpan * Math.random());
                marker = new GMarker(point);
                map.addOverlay(marker);
                markers[i] = marker;
            }

            $(markers).each(function (i, marker) {
                $("<li />")
<<<<<<< HEAD
                        .html("Point " + i)
=======
                        .html("Location " + i)
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2
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
<<<<<<< HEAD
                            .html("Lalalalal")
=======
                            .html("Location " + index)
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2
                            .fadeIn()
                            .css({ top: markerOffset.y, left: markerOffset.x });

                    GEvent.removeListener(moveEnd);
                });
                map.panTo(marker.getLatLng());
            }
        });
<<<<<<< HEAD
        </script>

    <!-- map here -->
    <div id="map">

    </div>

    <ul id="list">
    </ul>

    <div id="message" style="display:none;">
=======
        </script>-->
        <!---------------end Map Try 1 ----------------------------------------------------------------->
   
    <!-- map here -->
    <div id = "mapContainer">
    
        <div id="map">

        </div>

        <ul id="list">
        </ul>

        <div id="message" style="display:none;">

        </div>
>>>>>>> d9cb666cb2d456be0bb8e680fb4fe7ab5724c1c2

    </div>
</asp:Content>

