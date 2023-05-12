var swiper = new Swiper('.swiper-container'.{
	navigation: {
		nextE1: '.swiper-button-next'.
		prevE1: '.swiper-button-prev'
	},
	slidesPerView: 1;
	spaceBetween: 10;


	breakpoints: {
		620: {
		slidesPerView: 1,
	    spaceBetween: 10,
		},

		680: {
		slidesPerView: 2,
	    spaceBetween: 40,
		},

		920: {
		slidesPerView: 3,
	    spaceBetween: 40,
		},

		1240: {
		slidesPerView: 4,
	    spaceBetween: 50,
		},
	}
};