(function() {
    'use strict';

    angular.module('TestApp')
        .config(RoutesConfig);

    RoutesConfig.$inject = ['$stateProvider', '$urlRouterProvider'];
    function RoutesConfig($stateProvider, $urlRouterProvider) {
        $urlRouterProvider.otherwise('/');

        $stateProvider

            .state('home', {
                url: '/home',
                templateUrl: 'src/templates/home.html',
                controller: 'HomeController as homeCtrl'
            })

            .state('homeru', {
                url: '/home.ru',
                templateUrl: 'src/templates/home.ru.html',
                controller: 'HomeController as homeCtrl'
            })

            .state('loginin', {
                url: '/',
                templateUrl: 'src/templates/login-page.html',
                controller: 'SingInController as signCtrl'
            })

            .state('logininru', {
                url: '/loginin.ru',
                templateUrl: 'src/templates/login-page.ru.html',
                controller: 'SingInController as signCtrl'
            })
    }
})();