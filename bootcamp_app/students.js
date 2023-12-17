const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx_2'
});

pool.query(`
SELECT students.id as student.id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT  ${process.argv[3] || 5};
`)
.then(res => {
  console.log(`${user.name} has an id of ${user.cohort} cohort`);
})
.catch(err => console.error('query error', err.stack));