import { fetchdata } from "./modules/DataMiner.js";

//Assigning constants in vue format
const myVM = (() => {
    let vue_vm = new Vue({
        //Create just like Learning NPM build
        data: {
            mainHeader: "Car List",
            cars: [],
            carPhoto: [],
            currentCarData: {},
            currentCarPhoto: ['cardef'],
        },
             //Create function to mount the fetchcall in the dataminer to fetch in php language
        mounted: function() {
            fetchdata('./includes/index.php')
                .then(data => {
                    //Push data to browser
                    data.forEach(car => this.cars.push(car));
                })
                //IF DATABASE IS NOT CONNECTED, this error code will appear. 
                //Please recheck the database linking from phpmyadmin
                .catch(err => error(err));
        },
            //Show the data on the browser after click
        methods: {
            showCar(target) {
                this.currentCarData = target;
                this.currentCarPhoto = target.Photo1;
            }
        }
        //Execute the mount call & print data on the class to main tag, that is #app
    }).$mount("#app")
})();