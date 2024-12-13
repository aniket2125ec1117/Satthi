const mongoose = require('mongoose');

const PatientSchema = new mongoose.Schema({
    user: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
    healthRecords: [
        {
            date: { type: Date, required: true },
            description: { type: String, required: true },
            doctor: { type: mongoose.Schema.Types.ObjectId, ref: 'Doctor' },
        },
    ],
});

const Patient = mongoose.model('Patient', PatientSchema);
module.exports = Patient;
