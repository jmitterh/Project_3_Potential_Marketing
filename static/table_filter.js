// variables that refernce tags 
var select_zip = d3.selectAll("#zipcode").on("change",change_options)

var table_tag = d3.select("#org_details")
var columns = ["Taxpayer_Number","Taxpayer_Name","Taxpayer_address","Taxpayer_Organizational_Name","Responsibility_Beginning_Date","SOS_Charter_Date"]
var thead = table_tag.append("thead")
var tbody = table_tag.append("tbody").classed("table_row",true)



// function to load data on page load/refresh

  function intial_page_load()
  {
      // adding table columns 

        thead.append('tr')
        .selectAll('th')
        .data(columns).enter()
        .append('th')
        .text(function (column){
        return column
        })


    // reading csv files and to fill select menu

d3.csv("/static/jsData/df_fran_sorted_by_zip.csv").then(function(csv_data)
{
    console.log("checking data:",csv_data[0].Taxpayer_Zip_Code)
    const first_zipcode = csv_data[0].Taxpayer_Zip_Code 

    csv_data.map(i => {

        if (first_zipcode === i.Taxpayer_Zip_Code)
        {
          
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
            
            //fill_table(i)
        
           
        }
    })
});



  }



function change_options()
{

    var select_zipcode = d3.select("#zipcode").property("value")
 

    d3.select("#org_details").select("tbody").selectAll("tr").remove() // removing the existing zipcode table to change for selected zip code table

    d3.csv("/static/jsData/df_fran_sorted_by_zip.csv").then(function(csv_data)
    {
        csv_data.map(i => {

            if (select_zipcode == i.Taxpayer_Zip_Code)
            {
               
                fill_table(i)
            }

        })

    })

}




// create a row for each object in the data

function fill_table(i)
{
        
    var table_values = [i.Taxpayer_Number,i.Taxpayer_Name,i.Taxpayer_Address,i.Taxpayer_Organizational_Name,i.Responsibility_Beginning_Date,i.SOS_Charter_Date]
    
    var row = tbody.append("tr")  // adding row to the table for each i
    for (var k = 0; k<table_values.length;k++)
    { 
        var cell = row.append("td")
        cell.text(table_values[k])  //adding table data based on table_values
    }

}


intial_page_load()






                         
                          

    

    
 

  

 




    

    
  


    
  

































  

 
 
 
  
  
    
    
    
    