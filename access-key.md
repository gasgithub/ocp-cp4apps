To access cloud pak key:

https://github.ibm.com/CloudPakOpenContent/cloudpak-entitlement

## Step 2. Get Entitlement Key

Use the `ibmcloud` CLI and the [pak-entitlement.sh](pak-entitlement.sh) script to get the entitlement key.

**Note:** The `pak-entitlement.sh` requires [ibmcloud](https://cloud.ibm.com/docs/cli/reference/ibmcloud?topic=cloud-cli-install-ibmcloud-cli), [jq](https://stedolan.github.io/jq/), and [curl](https://curl.haxx.se/download.html) tools to be installed.

1. Login to IBM Cloud using the `ibmcloud` tool. Ensure to use the **same account** as before.
   ```
   ibmcloud login
   ```

1. Run the `pak-entitlement.sh list` command to see a list of entitlements associated with your account:
   ```
   ./pak-entitlement.sh list
   ```

   For example, the above command should generate the following output:
   ```
   [
      "IBM Cloud Pak for Applications Enterprise Edition per Virtual Processor Core License + SW Subscription & Support 12 Months"
   ]
   ```

1. Run the `pak-entitlement.sh show-key ENTITLEMENT_NAME` command to get a key for the specified entitlement. The `ENTITLEMENT_NAME` just needs to match part of the entitlement name from the `list` command output. For example:
   ```
   ./pak-entitlement.sh show-key "Pak for Applications"
   ```
   For example, the above command might generate the following output:
   ```
   thahGheezaengie9eishoh3ceit3xeit3xeiquieveem
   ```




 Or hard way:
 
 
BEARER=$(ibmcloud iam oauth-tokens | tr -s ' ' | awk '{ print $4 }')
  
curl -s https://billing.cloud.ibm.com/v1/licensing/entitlements -H "Authorization: Bearer $(BEARER)" -H 'Content-Type: appliction/json' -H 'cache-control: no-cache' | jq '.resources[] | [.name, .apikey]'



| jq -r ".resources[] | select(.name | test(\"$NAME\"; \"i\")) | .apikey"
