

"use client"

import { useEffect, useState } from "react";
import axios, { AxiosResponse } from "axios";
import { error, info } from "@repo/logs/logs";
import { SalesInfoType, columns } from "./SalesInfoComponent/columns";
import { DataTable } from "./SalesInfoComponent/data-table";


 function SalesInfo(){
    const [salesInfo, setSalesInfo] = useState<SalesInfoType[]>([]);

    useEffect(() => {

        console.log("I am getting called")
        const fetchSalesInfo = async () => {
            const baseUri = process.env.NEXT_PUBLIC_UI_BASE_URI;
            try {
                const response: AxiosResponse<{ data: SalesInfoType[] }> = await axios.get(`${baseUri}/getSalesInfo`);
                info("the response of salesInfo is", response);
                if (response.status == 200) {
                    console.log("the response.data is ", response.data.data);
                    setSalesInfo(response.data.data);
                }
            }
            catch (err: any) {
                error("Error in getting the SalesInfo", err);
            }
            
        }
    
        fetchSalesInfo();
    }, [])
    console.log("the SalesInfo after successful response from the backend", salesInfo);
    return(
        <>
            <div className="container mx-auto py-10">
                <DataTable columns={columns} data={salesInfo} />
            </div>
        </>
    )
}


export default SalesInfo;