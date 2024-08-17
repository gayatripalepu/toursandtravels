<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"> </script>      
    <title> jquery Product tour Example </title>  
</head>  
<style>  
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700);  
html {  
  font-size: 62.5%;  
}  
body {   
  text-align: center;  
  padding: 20px;  
background: linear-gradient(124deg, #ff2400, #e81d1d, #e8b71d, #e3e81d, #1de840, #1ddde8, #2b1de8, #dd00f3, #dd00f3);  
background-size: 1800% 1800%;  
font-family: "HelveticaNeue-Light", "Helvetica Neue" Helvetica, Arial, sans-serif;  
-webkit-animation: rainbow 18s ease infinite;  
  animation: rainbow 18s ease infinite; }  
a {  
  color: #ff962c;  
  text-decoration: none;  
}  
img {  
  max-width: 100%;  
  height: 400px;  
  background-color:#ebebeb;  
}  
.cd-nugget-info {  
  position: absolute;  
  width: 60%;  
  left: 50%;  
  top: 50%;  
  bottom: auto;  
  right: auto;  
  -webkit-transform: translateX(-50%) translateY(-50%);  
  transform: translateX(-50%) translateY(-50%);  
  z-index: 1;  
  text-align: center;  
  -webkit-font-smoothing: antialiased;  
  -moz-osx-font-smoothing: grayscale;  
}  
.cd-nugget-info h1 {  
  color: #fefffb;  
  font-size: 2.4rem;  
  margin: .6em 0;  
}  
.cd-nugget-info .cd-btn {  
  -webkit-appearance: none;  
  appearance: none;  
  border: none;  
  border-radius: 50em;  
  background: #ff962c;  
  padding: 1em 2em;  
  color: #fefffb;  
  font-weight: bold;  
  font-size: 1.4rem;  
  cursor: pointer;  
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);  
}  
.cd-nugget-info .cd-btn:active {  
  -webkit-transform: scale(0.9);  
  transform: scale(0.9);  
}  
.no-touch .cd-nugget-info .cd-btn:hover, .cd-nugget-info .cd-btn:focus {  
  outline: none;  
  background: #ffa346;  
}  
.cd-tour-wrapper {  
  position: fixed;  
  z-index: 2;  
  height: 90%;  
  width: 90%;  
  left: 50%;  
  top: 50%;  
  bottom: auto;  
  right: auto;  
  -webkit-transform: translateX(-50%) translateY(-50%);  
  transform: translateX(-50%) translateY(-50%);  
  visibility: hidden;  
  opacity: 0;  
  -webkit-transition: opacity 0.4s 0s, visibility 0s 0.4s;  
  transition: opacity 0.4s 0s, visibility 0s 0.4s;  
}  
.cd-tour-wrapper::before {  
  display: none;  
  content: 'mobile';  
}  
.cd-tour-wrapper.active {  
  visibility: visible;  
  opacity: 1;  
  -webkit-transition: opacity 0.4s 0s, visibility 0s 0s;  
  transition: opacity 0.4s 0s, visibility 0s 0s;  
}  
.nav-dots  {  
 position: absolute;  
 top: 423px;  
 text-align: center;  
 width: 100%;  
}  
.nav-dots li {  
 display: inline-block;  
 vertical-align: top;  
 margin: 0 5px;  
}  
.nav-dots li a {  
  width: 15px;  
  height: 15px;  
  border: 1px solid #009ece;  
  border-radius: 100%;  
  text-indent: -9999px;  
  display: block;  
}  
.nav-dots li a.active {  
  background: #009ece;  
}  
.cd-single-step {  
  position: absolute;  
  z-index: 1;  
  width: 100%;  
  left: 0;  
  top: 0;  
  background-color: #fefffb;  
  border-radius: 4px;  
  box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);  
  opacity: 0;  
  -webkit-transform: translateZ(0);  
  transform: translateZ(0);  
  -webkit-transform: scale(0);  
  transform: scale(0);  
  -webkit-transition: -webkit-transform 0.4s 0s, opacity 0s 0.4s;  
  transition: transform 0.4s 0s, opacity 0s 0.4s;  
}  
.cd-single-step > span {  
  position: relative;  
  z-index: 1;  
  display: block;  
  width: 10px;  
  height: 10px;  
  border-radius: inherit;  
  background: #ff962c;  
  -webkit-transform: scale(0);  
  transform: scale(0);  
  -webkit-transition: -webkit-transform 0.4s;  
  transition: transform 0.4s;  
  overflow: hidden;  
  text-indent: 100%;  
  white-space: nowrap;  
  display: none;   
}  
.active .cd-single-step {  
  -webkit-transform: scale(1) translateX(100%);  
  transform: scale(1) translateX(100%);  
  -webkit-transition: -webkit-transform 0.4s 0s, opacity 0.4s 0s;  
  transition: transform 0.4s 0s, opacity 0.4s 0s;  
}  
.active .cd-single-step.move-left {  
  transform: scale(1) translateX(-100%);  
}  
.active .cd-single-step.is-selected {  
  opacity: 1;  
  -webkit-transform: scale(1);  
  transform: scale(1);  
  -webkit-transition: -webkit-transform 0.4s 0s;  
  -moz-transition: -moz-transform 0.4s 0s;  
  transition: transform 0.4s 0s;  
}  
@media only screen and (min-width: 1100px) {  
  .cd-single-step {  
    height: auto;  
    width: auto;  
    top: auto;  
    left: auto;  
    -webkit-transform: translateX(0);  
    transform: translateX(0);  
    border-radius: 50%;  
    visibility: hidden;  
    opacity: 1;  
    background-color: transparent;  
    box-shadow: none;  
    -webkit-transition: visibility 0s 0.4s;  
    -moz-transition: visibility 0s 0.4s;  
    transition: visibility 0s 0.4s;  
  }  
  .cd-single-step:nth-of-type(1) {  
    left: 50%;  
    top: 50%;  
    transform: translate(-50%, -50%);  
  }  
  .cd-single-step:nth-of-type(2) {  
    left: 50%;  
    top: 50%;  
    transform: translate(-50%, -50%);  
  }  
  .cd-single-step:nth-of-type(3) {  
    left: 50%;  
    top: 50%;  
    transform: translate(-50%, -50%);  
  }     
  .cd-single-step > span, .cd-single-step::after {  
    display: none;  
  }  
  .move-right{  
    position: relative;  
  left: 300px;  
  -webkit-transition: left 1s;  
  -moz-transition: left 1s;  
  -o-transition: left 1s;  
  transition: left 1s;  
  }    
  .move-right.leave{  
      left: 0px;  
      opacity: 0;  
  }  
  .move-right.leave.leave-active {  
      left: 0px;  
      opacity: 0;  
  }    
    .move-right.enter{  
    transition: 1s;  
    left: 0;  
  }  
  .move-right.enter.enter-active{  
    left: 0px;  
    opacity: 0;  
  }   
.move-left{  
    position: relative;  
  right: 800px;  
  -webkit-transition: left 1s;  
  -moz-transition: left 1s;  
  -o-transition: left 1s;  
  transition: left 1s;  
  }     
  .move-left.leave{  
    right: 0;  
    opacity: 0;  
  }  
  .move-left.leave.leave-active{  
    right: 0;  
    opacity: 0;  
  }          
  .move-left.enter{  
    -webkit-animation-name: slide-left;  
  animation-duration: 1s;  
  -webkit-animation-timing-function: ease-in-out;  
  animation-timing-function: ease-in-out;  
    right: 0;  
  }  
  .move-left.enter.enter-active{  
    right: 0;  
    opacity: 0;  
  }  
  .cd-single-step.is-selected {  
    visibility: visible;  
    -webkit-transition: visibility 0s 0s;  
    -moz-transition: visibility 0s 0s;  
    transition: visibility 0s 0s;  
  }  
  .cd-single-step.is-selected > span {  
    -webkit-transform: scale(1);  
    -moz-transform: scale(1);  
    -ms-transform: scale(1);  
    -o-transform: scale(1);  
    transform: scale(1);  
  }  
  .cd-single-step.is-selected::after {  
    -webkit-animation: cd-pulse 2s infinite;  
    -moz-animation: cd-pulse 2s infinite;  
    animation: cd-pulse 2s infinite;  
    -webkit-animation-delay: 0.5s;  
    -moz-animation-delay: 0.5s;  
    animation-delay: 0.5s;  
  }  
  .cd-single-step.is-selected .cd-more-info {  
    opacity: 1;  
  }  
}  
  
@-webkit-keyframes cd-pulse {  
  0% {  
    box-shadow: 0 0 0 0 #ff962c;  
  }  
  100% {  
    box-shadow: 0 0 0 20px rgba(255, 150, 44, 0);  
  }  
}  
@-moz-keyframes cd-pulse {  
  0% {  
    box-shadow: 0 0 0 0 #ff962c;  
  }  
  100% {  
    box-shadow: 0 0 0 20px rgba(255, 150, 44, 0);  
  }  
}  
@keyframes cd-pulse {  
  0% {  
    box-shadow: 0 0 0 0 #ff962c;  
  }  
  100% {  
    box-shadow: 0 0 0 20px rgba(255, 150, 44, 0);  
  }  
}  
.cd-single-step .cd-more-info {  
  z-index: 1;  
  padding:0;  
  width: 100%;  
}  
.cd-single-step .cd-more-info::after {  
  clear: both;  
  content: "";  
  display: table;  
}  
.cd-single-step .cd-more-info::before {  
  content: '';  
  position: absolute;  
  height: 0;  
  width: 0;  
  border: 6px solid transparent;  
  display: none;  
}  
.cd-single-step .cd-more-info h2 {  
  font-size: 24px;  
  line-height: 1.2;  
  margin-bottom: .4em;  
  text-align: center;  
  color: #333333;  
  font-weight: 700;  
}  
.cd-single-step .cd-more-info p {  
  font-size: 14px;  
  line-height: 1.6;  
  margin-bottom: 1.4em;  
  color: #333333;  
}  
.cd-single-step .cd-more-info img {  
  margin-bottom: 1.4em;  
 border-top-right-radius: 4px;  
 border-top-left-radius: 4px;  
  
}  
.cd-single-step .cd-more-info .cd-close {  
  position: absolute;  
  top: 10px;  
  right: 10px;  
  width: 32px;  
  height: 32px;  
  overflow: hidden;  
  text-indent: 100%;  
  white-space: nowrap;  
}  
.cd-single-step .cd-more-info .cd-close::after, .cd-single-step .cd-more-info .cd-close:before {  
  content: '';  
  position: absolute;  
  left: 50%;  
  top: 50%;  
  height: 2px;  
  width: 16px;  
  border-radius: 4em;  
  background-color: #ffffff;  
  -webkit-transform: translateZ(0);  
  transform: translateZ(0);  
  -webkit-backface-visibility: hidden;  
  backface-visibility: hidden;  
}  
.cd-single-step .cd-more-info .cd-close::after {  
  -webkit-transform: translateX(-50%) translateY(-50%) rotate(45deg);  
  transform: translateX(-50%) translateY(-50%) rotate(45deg);  
}  
.cd-single-step .cd-more-info .cd-close::before {  
  -webkit-transform: translateX(-50%) translateY(-50%) rotate(-45deg);  
  transform: translateX(-50%) translateY(-50%) rotate(-45deg);  
}  
.cd-single-step .cd-more-info span {  
  float: left;  
  padding-top: .1em;  
  font-size: 1.3rem;  
  font-family: 'Open Sans', sans-serif;  
}  
@media only screen and (min-width: 1100px) {  
  .cd-single-step .cd-more-info {  
    position: absolute;  
    width: 600px;  
    border-radius: 4px;  
    box-shadow: 0 3px 20px rgba(0, 0, 0, 0.15);  
    opacity: 0;  
    background-color: #fefffb;  
    -webkit-transition: opacity 0.4s;  
    transition: opacity 0.4s;  
    border-color: #fefffb;  
    left: 50%;  
    top: 50%;  
    transform: translate(-50%, -50%);  
  }  
  .cd-single-step .cd-more-info p {  
    margin-bottom: 2.5em;  
  }  
  .cd-single-step .cd-more-info img {  
    display: block;  
  }  
  .cd-single-step .cd-more-info::before {  
    display: block;  
  }  
  .cd-single-step .cd-more-info.left {  
    right: calc(100% + 15px);  
    -webkit-transform: translateY(-50%);  
    transform: translateY(-50%);  
  }  
  .cd-single-step .cd-more-info.right {  
    left: calc(100% + 15px);  
    -webkit-transform: translateY(-50%);  
    transform: translateY(-50%);  
  }  
  .cd-single-step .cd-more-info.left, .cd-single-step .cd-more-info.right {  
    top: 50%;  
  }  
  .cd-single-step .cd-more-info.top {  
    bottom: calc(100% + 15px);  
    -webkit-transform: translateX(-50%);  
    transform: translateX(-50%);  
  }  
  .cd-single-step .cd-more-info.bottom {  
    top: calc(100% + 15px);  
    -webkit-transform: translateX(-50%);  
    transform: translateX(-50%);  
  }  
  .cd-single-step .cd-more-info.top, .cd-single-step .cd-more-info.bottom {  
    left: 50%;  
  }  
  .cd-single-step .cd-more-info.left::before, .cd-single-step .cd-more-info.right::before {  
    top: 50%;  
    bottom: auto;  
    -webkit-transform: translateY(-50%);  
    transform: translateY(-50%);  
  }  
  .cd-single-step .cd-more-info.top::before, .cd-single-step .cd-more-info.bottom::before {  
    left: 50%;  
    right: auto;  
    -webkit-transform: translateX(-50%);  
    transform: translateX(-50%);  
  }  
  .cd-single-step .cd-more-info.left::before {  
    border-left-color: inherit;  
    left: 100%;  
  }  
  .cd-single-step .cd-more-info.right::before {  
    border-right-color: inherit;  
    right: 100%;  
  }  
  .cd-single-step .cd-more-info.top::before {  
    border-top-color: inherit;  
    top: 100%;  
  }  
  .cd-single-step .cd-more-info.bottom::before {  
    border-bottom-color: inherit;  
    bottom: 100%;  
  }  
  .is-selected .cd-single-step .cd-more-info {  
    opacity: 1;  
  }  
}  
.cd-tour-nav {  
    text-align: center;  
    margin: 0 auto;  
    clear: both;  
    padding: 0em 2em 2em 2em;  
}  
.cd-tour-nav::after {  
  clear: both;  
  content: "";  
  display: table;  
}  
.cd-tour-nav li {  
  display: inline-block;  
  width: 100px;  
  height: 40px;  
  text-align: center;  
  font-size: 14px;  
}  
.cd-next {  
  display: inline-block;  
  width: 119px;  
  height: 40px;  
  text-align: center;  
  padding: 14px;  
  font-size: 14px;  
  background-color: #009ece;  
  border-radius: 2px;  
  color: #ffffff;  
}  
.cd-end {  
  display: inline-block;  
  width: 119px;  
  height: 40px;  
  text-align: center;  
  padding: 14px;  
  font-size: 14px;  
  background-color: #009ece;  
  border-radius: 2px;  
  color: #ffffff;  
}  
#step1 .cd-tour-nav li:last-of-type{  
    display: none;  
}  
#step2 .cd-tour-nav li:last-of-type{  
    display: none;  
}  
#step3 .cd-tour-nav li:nth-of-type(2){  
    display: none;  
}  
.cd-prev {  
  display: inline-block;  
  width: 119px;  
  height: 40px;  
  text-align: center;  
  padding: 13px;  
  font-size: 14px;  
  border: 1px solid #009ece;  
  border-radius: 2px;  
  color: #009ece;  
}  
#step1 .cd-tour-nav li:first-of-type{  
  display: none;  
}  
.cd-tour-nav li:first-of-type {  
  margin-right: 2.2em;  
}  
.cd-tour-nav a {  
  font-size: 1.3rem;  
  font-weight: bold;  
}  
.cd-tour-nav a.inactive {  
  display: none;  
}  
.cd-cover-layer {  
  position: fixed;  
  z-index: 1;  
  top: 0;  
  left: 0;  
  height: 100%;  
  width: 100%;  
  background-color: rgba(0, 0, 0, 0.6);  
  visibility: hidden;  
  opacity: 0;  
  -webkit-transition: opacity 0.4s 0s, visibility 0s 0.4s;  
  transition: opacity 0.4s 0s, visibility 0s 0.4s;  
}  
.cd-cover-layer.is-visible {  
  opacity: 1;  
  visibility: visible;  
  -webkit-transition: opacity 0.4s 0s, visibility 0s 0s;  
  transition: opacity 0.4s 0s, visibility 0s 0s;  
}  
@media only screen and (min-width: 1100px) {  
  .cd-cover-layer.is-visible {  
    opacity: 0;  
    -webkit-animation: cd-fade-in 2.1s;  
    animation: cd-fade-in 2.1s;  
  }  
}  
@-webkit-keyframes cd-fade-in {  
  0%, 100% {  
    opacity: 0;  
  }  
  14%, 40% {  
    opacity: 1;  
  }  
}  
@keyframes cd-fade-in {  
  0%, 100% {  
    opacity: 0;  
  }  
  14%, 40% {  
    opacity: 1;  
  }  
}  
.text-btns{  
    padding:2em 3em 0em 3em;  
}  
.cd-app-screen {  
  position: absolute;  
  left: 50%;  
  top: 50%;  
  bottom: auto;  
  right: auto;  
  -webkit-transform: translateX(-50%) translateY(-50%);  
  transform: translateX(-50%) translateY(-50%);  
  width: 90%;  
  height: 80%;  
  background: #222d33;  
  border-radius: 4px;  
  box-shadow: 0 10px 60px #08151d;  
}  
.cd-app-screen::before, .cd-app-screen::after {  
  content: '';  
  position: absolute;  
}  
.cd-app-screen::before {  
  top: 0;  
  left: 0;  
  height: 40px;  
  width: 100%;  
  background: #fefffb;  
  border-radius: 4px 4px 0 0;  
}  
.cd-app-screen::after {  
  top: 14px;  
  left: 20px;  
  height: 12px;  
  width: 60px;  
  background: #e4e5e1;  
  border-radius: 3px;  
}  
</style>  
<body>  
    <div class="cd-nugget-info">  
        <h1> Example jquery Product Tour </h1>  
        <button id="cd-tour-trigger" class="cd-btn"> Start Product Tour </button>  
    </div>  
    <ul class="cd-tour-wrapper">  
        <li id="step1" class="cd-single-step">  
            <div class="cd-more-info">  
                <div class="text-btns">  
                    <h2>Step 1</h2>  
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>  
                </div>  
            </div>  
        </li>  
        <li id="step2" class="cd-single-step">  
            <div class="cd-more-info">  
                <div class="text-btns">  
                    <h2>Step 2</h2>  
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>  
                </div>  
            </div>  
        </li>  
        <li id="step3" class="cd-single-step">  
            <div class="cd-more-info">  
                   <div class="text-btns">  
                    <h2>Step 3</h2>  
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>  
                </div>  
            </div>  
        </li>          
    </ul>   
    <div class="cd-app-screen"> </div>  
    <div class="cd-cover-layer"> </div>  
</body>  
<script>  
jQuery(document).ready(function($){  
    $('.cd-tour-wrapper').exists() && initTour();  
  
    function initTour() {  
        var tourWrapper = $('.cd-tour-wrapper'),  
            tourSteps = tourWrapper.children('li'),  
            stepsNumber = tourSteps.length,  
            coverLayer = $('.cd-cover-layer'),  
            tourStepInfo = $('.cd-more-info'),  
            tourTrigger = $('#cd-tour-trigger');  
        createNavigation(tourSteps, stepsNumber);     
        tourTrigger.on('click', function(){  
            if(!tourWrapper.hasClass('active')) {  
                tourWrapper.addClass('active');  
                showStep(tourSteps.eq(0), coverLayer);  
            }  
        });  
        tourStepInfo.on('click', '.cd-prev', function(event){  
            if ( !$(event.target).hasClass('inactive') || jlfajflka ) {  
                changeStep(tourSteps, coverLayer, 'prev');  
            }   
        });  
        tourStepInfo.on('click', '.cd-next', function(event){  
            if ( !$(event.target).hasClass('inactive') ) {  
                changeStep(tourSteps, coverLayer, 'next'); }  
        });  
        tourStepInfo.on('click', '.nav-dots a', function(event){  
            if ( !$(event.target).hasClass('active') ) {  
                changeStep(tourSteps, coverLayer, 'navDot', $(this));  
            }   
        });  
        tourStepInfo.on('click', '.cd-close', function(event){  
            closeTour(tourSteps, tourWrapper, coverLayer);  
        });  
        tourStepInfo.on('click', '.cd-end', function(event){  
            closeTour(tourSteps, tourWrapper, coverLayer);  
        });  
        tourStepInfo.on('swiperight', function(event){  
            if( !$(this).find('.cd-prev').hasClass('inactive') && viewportSize() == 'mobile' ) changeStep(tourSteps, coverLayer, 'prev');  
        });  
        tourStepInfo.on('swipeleft', function(event){  
            if( !$(this).find('.cd-next').hasClass('inactive') && viewportSize() == 'mobile' ) changeStep(tourSteps, coverLayer, 'next');  
        });  
        $(document).keyup(function(event){  
            if( event.which=='37' && !tourSteps.filter('.is-selected').find('.cd-prev').hasClass('inactive') ) {  
                changeStep(tourSteps, coverLayer, 'prev');  
            } else if( event.which=='39' && !tourSteps.filter('.is-selected').find('.cd-next').hasClass('inactive') ) {  
                changeStep(tourSteps, coverLayer, 'next');  
            } else if( event.which=='27' ) {  
                closeTour(tourSteps, tourWrapper, coverLayer);  
            }  
        });  
    }  
    function createNavigation(steps, n) {  
        var tourNavigationHtml = '<div class="cd-nav"><div class="cd-nav"><ul class="nav-dots"></ul><ul class="cd-tour-nav"><li><a href="#0" class="cd-prev">Previous Step</a></li><li><a href="#0" class="cd-next">Next Step</a></li><li><a href="#0" class="cd-end">Got it!</a></li></ul></div><a href="#0" class="cd-close">Close</a>';  
    var navDots;        
        steps.each(function(index){  
            var step = $(this),  
                stepNumber = index + 1,  
                nextClass = ( stepNumber < n ) ? '' : 'inactive',  
                prevClass = ( stepNumber == 1 ) ? 'inactive' : '';  
            var nav = $(tourNavigationHtml).find('.cd-next').addClass(nextClass).end().find('.cd-prev').addClass(prevClass).end().appendTo(step.children('.cd-more-info');  
            if (stepNumber == 1) {  
               $('.cd-prev').hide();  
            }  
            if (stepNumber == index + 1) {  
               $('.cd-end').prop('display','none');  
            }          
        });     
    steps.each(function(index){  
      stepNumber = index + 1;  
        dot = '<li><a href="#step'+stepNumber+'">'+stepNumber+'</a></li>';  
        $('.nav-dots').append(dot);  
    });  
    $('.nav-dots a').each(function() {  
        var href = $(this).attr('href'),  
                slide = $(this).parents('.cd-single-step').attr('id');  
        if (href == '#'+slide) {  
            $(this).addClass('active');  
        }  
    });  
    }  
    function showStep(step, layer) {  
        step.addClass('is-selected').removeClass('move-left');  
        smoothScroll(step.children('.cd-more-info'));  
        showLayer(layer);  
    }  
    function smoothScroll(element) {  
        (element.offset().top < $(window).scrollTop()) && $('body,html').animate({'scrollTop': element.offset().top}, 100);  
        (element.offset().top + element.height() > $(window).scrollTop() + $(window).height() ) && $('body,html').animate({'scrollTop': element.offset().top + element.height() - $(window).height()}, 100);   
    }  
    function showLayer(layer) {  
        layer.addClass('is-visible').on('webkitAnimationEnd oanimationend msAnimationEnd animationend', function(){  
            layer.removeClass('is-visible');  
        });  
    }  
      
    function animationClass(currentSlide, nextSlide, bool){  
          
        if(bool == 'next'){  
              
            currentSlide.addClass('move-left');  
            nextSlide.addClass('move-left');  
  
        }        
       else if(bool == 'prev'){  
            currentSlide.addClass('move-right');  
            nextSlide.addClass('move-right');  
        }        
        currentSlide.addClass('leave');  
        nextSlide.addClass('enter');    
    }  
    function changeStep(steps, layer, bool, link) {  
        var visibleStep = steps.filter('.is-selected'),  
                delay = (viewportSize() == 'desktop') ? 300: 0,  
                href;         
        if (link) {  
            href = link.attr('href');  
        }  
        visibleStep.removeClass('is-selected');  
        if (bool == 'next') {  
            visibleStep.addClass('move-left');  
        }  
        setTimeout(function(){  
            if ( bool == 'navDot') {  
                showStep($(href), layer);                             
            } else if ( bool == 'next' ) {  
                showStep(visibleStep.next(), layer);               
                animationClass(visibleStep, visibleStep.next(), bool);                        
            } else {  
                showStep(visibleStep.prev(), layer);  
                animationClass(visibleStep, visibleStep.prev(), bool);              
            }                    
                setTimeout(function() {  
                    $('.cd-single-step').removeClass('leave-active leave enter enter-leave move-left move-right' );  
                },500);    
        }, delay);  
    }  
    function closeTour(steps, wrapper, layer) {  
        steps.removeClass('is-selected move-left');  
        wrapper.removeClass('active');  
        layer.removeClass('is-visible');  
    }  
    function viewportSize() {         
        return window.getComputedStyle(document.querySelector('.cd-tour-wrapper'), '::before').getPropertyValue('content').replace(/"/g, "").replace(/'/g, "");  
    }  
});  
jQuery.fn.exists = function(){ return this.length > 0; }  
</script>  
</body>  
</html>  