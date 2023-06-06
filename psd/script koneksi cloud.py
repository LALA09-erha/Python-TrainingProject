import psycopg2
# import pandas as pd
# # Connection parameters, yours will be different
# param_dic = {
#     "host"      : "floppy.db.elephantsql.com",
#     "database"  : "jokdogzx",
#     "user"      : "jokdogzx",
#     "password"  : "6cn9QAJuHJiRGzFFpTPwH0ECv0JIelE_"
# }
# def connect(params_dic):
#     """ Connect to the PostgreSQL database server """
#     conn = None
#     try:
#         # connect to the PostgreSQL server
#         print('Connecting to the PostgreSQL database...')
#         conn = psycopg2.connect(**params_dic)
#     except (Exception, psycopg2.DatabaseError) as error:
#         print(error)
#         sys.exit(1) 
#     print("Connection successful")
#     return conn

# def postgresql_to_dataframe(conn, select_query, column_names):
#     """
#     Tranform a SELECT query into a pandas dataframe
#     """
#     cursor = conn.cursor()
#     try:
#         cursor.execute(select_query)
#     except (Exception, psycopg2.DatabaseError) as error:
#         print("Error: %s" % error)
#         cursor.close()
#         return 1
    
#     # Naturally we get a list of tupples
#     tupples = cursor.fetchall()
#     cursor.close()
    
#     # We just need to turn it into a pandas dataframe
#     df = pd.DataFrame(tupples, columns=column_names)
#     return df

# # Connect to the database
# conn = connect(param_dic)

# column_names = ["sepal_I","sepal_w","petal_I","petal_W","class"]

# df = postgresql_to_dataframe(conn, "select * from iris", column_names)

conn = psycopg2.connect(database="postgres", user="postgres", password="qwerty123", host="127.0.0.1", port="5432")
print("Database Connected....")