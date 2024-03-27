class HealthWorkers:
    def _init_(self, name, role):
        self.name = name
        self.role = role

class Nurse(HealthWorkers):
    def _init_(self, name):
        super(). _init_(name, "Nurse")

class Doctor(HealthWorkers):  
    def _init_(self, name):
        super()._init_(name, "Doctor")

class ClinicalOfficer(HealthWorkers):
    def _init_(self, name):
        super()._init_(name, "Clinical Officer")

def main():
    # Create instances of each health worker class
    nurse = Nurse("Jane Doe")
    doctor = Doctor("John Smith")
    clinical_officer = ClinicalOfficer("Mary Johnson")

    # Display the arguments for each health worker
    print(f"Nurse: {nurse.name} ({nurse.role})")
    print(f"Doctor: {doctor.name} ({doctor.role})")
    print(f"Clinical Officer: {clinical_officer.name} ({clinical_officer.role})")

#if _name_ == "_main_":
    #main()