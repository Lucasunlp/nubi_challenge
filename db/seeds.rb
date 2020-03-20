# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Alumn.create(name: 'Nicolas', surname: 'Gonzalez', email: 'nicogon@gmail.com',
             phone: '221516121', identification_number: 16300990)
Alumn.create(name: 'Lucas', surname: 'Albo', email: 'luucasu@gmail.com',
             phone: '221516121', identification_number: 35720913)
Alumn.create(name: 'Pepe', surname: 'San', email: 'pepesan@gmail.com',
             phone: '221516121', identification_number: 35720915)
Evaluation.create(name:'Final Examn', content:'Final', result: 4.0, alumn_id:35720913)
Evaluation.create(name:'Partial', content:'Partial', result: 5.0, alumn_id:35720913)
Evaluation.create(name:'Partial', content:'Partial', result: 9.0, alumn_id:16300990)
