"use strict";
exports.__esModule = true;
exports.ConvertCLTtoPJ = void 0;
function ConvertCLTtoPJ(req, res) {
    var salary = req.query.salary;
    console.log(salary);
    var NewSalary = salary + (salary * 0.3);
    res.send({
        resultado: "Seu sal\u00E1rio ser\u00E1 de: ".concat(NewSalary)
    });
}
exports.ConvertCLTtoPJ = ConvertCLTtoPJ;
