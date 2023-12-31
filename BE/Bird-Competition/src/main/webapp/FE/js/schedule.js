function toast({
    tiltle = '',
    message = '',
    type = 'info',
    duration = 3000
}) {
    const main = document.getElementById('toast');
    if (main) {
        const toast = document.createElement('div');

        //auto remove
        const autoremove = setTimeout(function () {
            main.removeChild(toast);
        }, duration + 1000);

        //remove click 
        toast.onclick = function (e) {
            if (e.target.closest('.toast__close')) {
                main.removeChild(toast);
                clearTimeout(autoremove);
            }
        };
        const icons = {
            success: 'fas fa-check-circle',
            warning: 'fas fa-info-circle',
            info: 'fas fa-info-circle'
        };
        const icon = icons[type];
        const delay = (duration / 1000).toFixed(2);

        toast.classList.add('toast1', `toast--${type}`);
        toast.style.animation = `slideLeft ease .3s, fadeOut linear 1s ${delay}s forwards`;
        toast.innerHTML = `
                    <div class="toast__icon">
                        <i class="${icon}"></i>
                    </div>
                    <div class="toast__body">
                        <h3 class="toast__title">${tiltle}</h3>
                        <p class="toast__msg">${message}</p>
                    </div>
                    <div class="toast__close">
                         <i class="fas fa-times"></i>
                    </div>
                `;
        main.appendChild(toast);

    }
}



function showSuccessToast() {
    toast({
        tiltle: 'Success',
        message: 'Đăng kí thành công, Xem CHECK_IN_CODE ở mục Trận của tôi',
        type: 'success',
        duration: 10000
    })
}

function showFailToast() {
    toast({
        tiltle: 'Lỗi',
        message: 'Chim thi đấu của bạn không hợp lệ',
        type: 'warning',
        duration: 8000
    })
}
function showFailToast1() {
    toast({
        tiltle: 'Fail',
        message: 'Bạn chưa thanh toán',
        type: 'warning',
        duration: 8000
    })
}
function showFailToast2() {
    toast({
        tiltle: 'Lỗi',
        message: 'Chim thi đấu vượt quá điểm cho phép',
        type: 'warning',
        duration: 8000
    })
}
function showErrorToast() {
    toast({
        tiltle: 'Thông tin',
        message: 'Chim đã được đăng kí vào cuộc thi này',
        type: 'info',
        duration: 8000
    })
}
function showErrorMaxBirdToast() {
    toast({
        tiltle: 'Thông tin',
        message: 'Đã đạt số lồng tối đa',
        type: 'info',
        duration: 8000
    })
}

var mes = document.getElementById('toastmes').innerHTML;
if (mes === 'fail') {
    showFailToast();
} else if (mes === 'success') {
    showSuccessToast();
} else if (mes === 'error') {
    showErrorToast();
} else if (mes === 'fail1') {
    showFailToast1();
} else if (mes === 'fail2') {
    showFailToast2();
} else if (mes == 'maxBError') {
    showErrorMaxBirdToast();
}

const activePage = document.getElementById('lichthidau');
activePage.classList.add('active')


