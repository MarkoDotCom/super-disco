import { Controller } from "stimulus";
export default class extends Controller {
    static targets = ["map"];
    static values = ["positions"];

    connect() {
        if (typeof google != "undefined") {
            this.initializeMap();
        }
    }

    initializeMap() {
        this.map();
        this.marker();
    }

    map() {
        if (this._map == undefined) {
            this._map = new google.maps.Map(this.mapTarget, {
                center: new google.maps.LatLng(null, null),
                zoom: 1,
            });
        }
        return this._map;
    }

    marker() {
        if (this._marker == undefined) {
            this._marker = new google.maps.Marker({
                map: this.map(),
                anchorPoint: new google.maps.Point(0, 0),
            });
            let mapLocation = {
                lat: parseFloat(null),
                lng: parseFloat(null),
            };
            this._marker.setPosition(mapLocation);
            this._marker.setVisible(true);

            //markers
            JSON.parse(this.data.get("positionsValue")).forEach(position => {
                let markerOptions = { position: new google.maps.LatLng(position.last_seen?.latitude, position.last_seen?.longitude) }
                let marker = new google.maps.Marker(markerOptions);
                marker.setMap(this.map());
            })
        }
        return this._marker;
    }
}