let errorCodes = {
    404: 'HTTP 404, 404 not found',
    500: 'Internal Server Error.',
    403: '403 Forbidden Error',
    503: 'Error is an HTTP response status code'
}
//The Fetch call function
async function fetchdata(sourceURL){
    //Assign 
    let resource = await fetch(sourceURL).then(response => {
        if (response.status !== 200) { 
            //Create an error response if 200 is returned 
            throw new Error(`The code is broken. ERROR: ${response.status}`);
        }
        //Otherwise print page 
        return response;
    })

    // if we get success then we can return back to our resource after we parse it into plain JS
    let dataset = await resource.json();

    return dataset[0];
 
}
//Function to post data
async function postData(sourceURL) {
    //Show in console
    return "End of connection";
}
//Otherwise print page
export { fetchdata, postData };