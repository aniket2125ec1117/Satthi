const mongoose = require('mongoose');

const DoctorSchema = new mongoose.Schema({
    user: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
    specialization: { type: String, required: true },
    appointments: [
        {
            patient: { type: mongoose.Schema.Types.ObjectId, ref: 'Patient' },
            date: { type: Date, required: true },
            status: { type: String, enum: ['pending', 'completed', 'cancelled'], default: 'pending' },
        },
    ],
});

const Doctor = mongoose.model('Doctor', DoctorSchema);
module.exports = Doctor;
