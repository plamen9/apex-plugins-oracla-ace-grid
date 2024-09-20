function setGridSettings (l_size, l_radius) {

    // Select div
    const header = document.querySelector('.grid-item.grid-item-header img');
    const size = document.querySelector('.grid-container');
    const border = document.querySelectorAll('.grid-item');


    // Apply style to div
    header.setAttribute('style', 'border-radius:' + l_radius);
    size.setAttribute('style', 'grid-template-columns: repeat(auto-fill, minmax('+ l_size +', 1fr))');
    for (i = 0; i < border.length; i++) {
        border[i].style.borderRadius = l_radius;
    }

    // change the Grid Gap if size is too small
    if ( l_size == '40px' || l_size == '20px' ) {
        size.style.gap = '5px';
    } else {
        size.style.gap = '10px';
    }

    console.log('setGridSettings was just executed. Size/Radius set: ' + l_size + '/' + l_radius);

}