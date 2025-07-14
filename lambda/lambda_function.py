from datetime import datetime

def lambda_handler(event, context):
    now = datetime.now()
    print("Current Time:", now.strftime("%Y-%m-%d %H:%M:%S"))
    return {'statusCode': 200, 'body': "Logged current time."}
