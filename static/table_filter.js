// variables that refernce tags 
var select_zip = d3.selectAll("#zipcode").on("change",change_options)

var table_tag = d3.select("#org_details")
var columns = ["Taxpayer_Number","Taxpayer_Name","Taxpayer_address","Responsibility_Beginning_Date"]
var thead = table_tag.append("thead")
var tbody = table_tag.append("tbody").classed("table_row",true)


thead.append('tr')
.selectAll('th')
.data(columns).enter()
.append('th')
  .text(function (column){
      return column
  })



//console.log(table_tag.text())

function change_options()
{
    //var select_category = d3.select("#category").property("value")

    var select_zipcode = d3.select("#zipcode").property("value")
    //console.log(select_zipcode)

    d3.select("#org_details").select("tbody").selectAll("tr").remove()

    d3.csv("/static/jsData/HOUfran.csv").then(function(csv_data)
    {
        csv_data.map(i => {

            if (select_zipcode == i.Taxpayer_Zip_Code)
            {
                //console.log(select_zipcode)
                //console.log(i.Taxpayer_Zip_Code)
                fill_table(i)
            }

        })

    })

}

// reading csv files

d3.csv("/static/jsData/HOUfran.csv").then(function(csv_data)
{
    console.log("checking data:",csv_data[0].Taxpayer_Zip_Code)
    const first_zipcode = csv_data[0].Taxpayer_Zip_Code

    //var row = tbody.append("tr")
    

    csv_data.map(i => {

        if (first_zipcode === i.Taxpayer_Zip_Code)
        {
            //console.log(i.Taxpayer_Zip_Code)
           // console.log(first_zipcode)
          
           var keys = Object.keys(i)
           var values = Object.values(i)

            if(!(select_zip.text()).includes(i.Taxpayer_Zip_Code)) // adding first zip code - unique value
            {
                var add_zipcode = select_zip.append("option").attr("value",i.Taxpayer_Zip_Code).text(i.Taxpayer_Zip_Code).attr("selected","selected")
                    
            }
            
            fill_table(i)
        }
        else
        {
            if(!(select_zip.text()).includes(i.Taxpayer_Zip_Code)) // adding first zip code - unique value
            {
                var add_zipcode = select_zip.append("option").attr("value",i.Taxpayer_Zip_Code).text(i.Taxpayer_Zip_Code)
                
            }
           
        }
    })
});


// create a row for each object in the data


function fill_table(i)
{
    
    var table_values = [i.Taxpayer_Number, i.Taxpayer_Name,i.Taxpayer_Address,i.Responsibility_Beginning_Date]
    
    var row = tbody.append("tr")  // adding row to the table for each i
    for (var k = 0; k<table_values.length;k++)
    { 
        var cell = row.append("td")
        cell.text(table_values[k])  //adding table data 
    }

}






                         
                          

    

    
 

  

 




    

    
  


    
  

































  

 
 
 
  
  
    
    
    
    