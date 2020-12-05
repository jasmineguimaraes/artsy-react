import React from 'react';
import { Carousel } from 'react-bootstrap'

import img1 from './img/img1.jpg';
import img2 from './img/img2.jpg'; 
import img3 from './img/img3.jpg'; 

import './index.css'


export function Main(){
    return(
        <div class="container">
        <section class="artsy-main">
            <C />
        </section>
        </div>
    );
}

function C(){
    return(
        <Carousel>
        <Carousel.Item interval={2000}>
        <img
            className="d-block w-100"
            src={img1}
            alt="First slide"
        />
        </Carousel.Item>
        <Carousel.Item interval={2000}>
        <img
            className="d-block w-100"
            src={img2}
            alt="Second slide"
        />
        </Carousel.Item>
        <Carousel.Item interval={2000}>
        <img
            className="d-block w-100"
            src={img3}
            alt="Third slide"
        />
        </Carousel.Item>
    </Carousel>
    );
}