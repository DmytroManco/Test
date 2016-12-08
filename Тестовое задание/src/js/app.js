(function () {
    'use strict';
    angular.module('TestApp', ['ui.router'])

        .controller('SingInController', SingInController)
        .controller('HomeController', HomeController)
        .service('signInService', signInService);

    SingInController.$inject = ['$location', 'signInService'];
    function SingInController($location, signInService) {

        this.name = signInService.name;
        this.submit = function (user) {
            signInService.setName(user.login);
            console.log(signInService.getName());
            $location.path('/home');
        }
    }

    function HomeController(signInService, $location) {
        this.login = signInService.getName();
        this.logout = function () {
            this.login = null;
            $location.path('/');
        }
    }

    function signInService() {
        var login;
        return {
            setName: function (name) {
                login = name;
            },
            getName: function () {
                return login;
            }
        }
    }
})();
