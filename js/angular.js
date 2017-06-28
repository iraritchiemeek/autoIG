var mortgageApp = angular.module('mortgageApp', []);

mortgageApp.controller('mainController', function($scope) {

	$scope.calcRepayment = function (housePrice, deposit, loanLength, interest, term) {
		console.log(housePrice, deposit, loanLength, interest, term)
		r = (interest/100)/term;
	    n = loanLength * term;
	    p = housePrice - deposit;
	    part1 = Math.pow((1+r), -n);
	    repayment = (r/(1- part1)) * p;
	    repayment = Math.round(repayment);
	    return repayment
	}

	$scope.options = [
	        {
	          name: 'weekly',
	          value: 'weekly'
	        }, 
	        {
	          name: 'fortnightly',
	          value: 'fortnightly'
	        }, 
	        {
	        	name: 'monthly',
	        	value: 'monthly'
	        }
	    ];

	    $scope.freq = $scope.options[0];

})