require('pg')
class SqlRunner

  def self.run(sql, values = [])
    begin
    db = PG.connect({dbname: 'ddsd70ak130oq8',
                    host: 'ec2-174-129-242-183.compute-1.amazonaws.com',
                    user:'qnruzumwsrpkrs',
                    password:'4a13f8a697e3a2c43a758fef5e8a683ba915a5d4a4f76cbb17fbbe90d7be7295'})
    db.prepare("query", sql)
    result = db.exec_prepared('query',values)
    ensure
      db.close if db != nil
    end
  end

end
