import pymysql.cursors

def select(*field,condition=None,**config):
    connect = pymysql.connect(host=config['host'],port=config['port'],user=config['user'],passwd=config['passwd'],db=config['db'],charset=config['charset'],cursorclass=pymysql.cursors.DictCursor)
    sql = 'SELECT '
    if len(field) == 0:
        sql = sql + "*"
    else:
        for k, v in enumerate(field):
            sql = sql + str(v) + ','
        sql = sql[:-1]
    sql = sql + ' FROM '
    tables = config['table']
    for item in tables:
        sql = sql + str(item) + ','
    sql = sql[:-1]
    sql = sql + ' WHERE ' + str(condition)
    return connect, sql


if __name__ == "__main__":
    config = {"host": "localhost", "port": 3306, "user": "root", "passwd": "root", "db": "work1", "charset": "utf8",
              "table": ["liusz", "Address"]}
    field = ("Liusz.phone", "Address.address")
    condition = 'liusz.id=0 and Address.id = 0'
    conn, sql = select(*field,condition=condition,**config)
    print(sql)
    c = conn.cursor()
    c.execute(sql)
    print(c.fetchone())

