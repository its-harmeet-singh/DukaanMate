function setDiscount(items)
{
    let item_name = document.getElementById("item");
    let saleType = document.getElementById("sale-type");
    let discount = document.getElementById("discount");
    for (let index = 0; index < items.length; index++) 
    {   
        let item = items[index]
        if (item["itemname"] == item_name.value)
        {   
            if (saleType.value == "Retail")
            {
                discount.innerHTML = item["retail_discount"]
            }
            else
            {
                discount.innerHTML = item["wholesale_discount"]
            }
        }    
    }
}

async function setFields()
{
    let item = document.getElementById("item");
    let response = await fetch('/getItem?item='+item.value);
    shows = await response.json();
    const entries = Object.values(shows); 
    let pricePerKg = document.getElementById("price-perKg");
    pricePerKg.value = entries[1];
    let saleType = document.getElementById("sale-type");
    let discount = document.getElementById("discount");
    if (saleType.value == "retail")
    {
        discount.value = entries[5];
    }
    else
    {
        discount.value = entries[6];
    }
    
    let toalPrice = document.getElementById("total-price").value;

    if (toalPrice)
    {
        setTotalPrice();
    }
}

function setTotalPrice()
{
    let pricePerKg = parseFloat(document.getElementById("price-perKg").value);
    let discount = parseFloat(document.getElementById("discount").value);
    let amount = parseFloat(document.getElementById("item-weight").value);

    let discountPrice = parseFloat(pricePerKg * (parseFloat(discount / 100)));
    let totalPrice = pricePerKg - discountPrice;
    document.getElementById("total-price").value = (amount * totalPrice);
}

function printInvoice()
{
    let win = window.open("");
    win.location.href = '/billLayout';
    win.getElementById('billLayout-body').print();
}
