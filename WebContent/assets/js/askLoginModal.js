const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const answerButtonOpenModal = document.querySelector('.answer-button-open-modal');
const questionButtonOpenModal = document.querySelector('.question-button-open-modal');

answerButtonOpenModal.addEventListener('click', () => {
    modal.classList.toggle('show');

    if (modal.classList.contains('show')) {
        body.style.overflow = 'hidden';
    }
});

questionButtonOpenModal.addEventListener('click', () => {
    modal.classList.toggle('show');

    if (modal.classList.contains('show')) {
        body.style.overflow = 'hidden';
    }
});

modal.addEventListener('click', (event) => {
    if (event.target === modal) {
        modal.classList.toggle('show');
                
        if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
        }
    }
});