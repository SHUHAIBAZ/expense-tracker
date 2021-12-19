// Basic example
$(document).ready(function() {
    $('#transactionTable').DataTable({
        "searching": true,
        "paging": true,
        "iDisplayLength": 13,
        "bLengthChange": false,
        "aaSorting": [
            [1, 'desc']
        ]

    });
    $('.dataTables_length').addClass('bs-select');
});