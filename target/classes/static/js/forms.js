// on focus out text inside textfield label should be on top
$(function () {
    $(".form-control").on("focusout", function () {
      if ($(this).val().length > 0) {
        $(this).addClass("visited");
      } else {
        $(this).removeClass("visited");
      }
    });

    $('.enableSelect2').select2().on('select2:open', (elm) => {
      const targetLabel = $(elm.target).siblings('label');
      targetLabel.addClass('selected');
      $(elm.target).next().find('.select2-selection--single').css('background', '#eeeef0');
    }).on('select2:close', (elm) => {
      const target = $(elm.target);
      const targetLabel = target.siblings('label');
      const targetOptions = $(elm.target.selectedOptions);
      if (targetOptions.length === 0 || targetOptions[0].value === '') {
        targetLabel.removeAttr('class');
        $(elm.target).next().find('.select2-selection--single').css('background', 'transparent');
      }
    });

  });