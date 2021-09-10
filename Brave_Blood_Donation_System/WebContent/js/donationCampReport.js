
//user report
	$("#btnExport").on("click", function () {
    	html2canvas($('#campCatTable')[0], {
          onrendered: function (canvas) {
              var data = canvas.toDataURL();
               var docDefinition = {
                 content: [{
                     image: data,
                     width: 500
                     }]
                 };
                  pdfMake.createPdf(docDefinition).download("donationCampCategoryReport.pdf");
            }
          });
     });



//doctor report
	$("#btnExport2").on("click", function () {
    	html2canvas($('#donationCampDetails')[0], {
          onrendered: function (canvas) {
              var data = canvas.toDataURL();
               var docDefinition = {
                 content: [{
                     image: data,
                     width: 500
                     }]
                 };
                  pdfMake.createPdf(docDefinition).download("donationCampDetailsReport.pdf");
            }
          });
     });




