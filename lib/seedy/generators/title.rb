module Seedy
  module Generators
    TITLES = ["Exerciser Horse",
     "Website Coordinator",
     "Medical Orthodontist",
     "Employment Manager",
     "Manager Chemical Plant",
     "Machine Shop Supervisor",
     "Investigator",
     "Plant Engineer",
     "Burglar Alarm Installer",
     "Warehouse Materials Handler",
     "Inspector Electromechanical",
     "Hospital Legal Services Head",
     "Animal Hospital Clerk",
     "Air Conditioning Servicer Commercial",
     "Operator Photocomposition",
     "Real Estate Firm Manager",
     "Clerk Insurance Claims",
     "Folder Inspector",
     "Machinery Erector",
     "Nondestructive Tester",
     "Data Architect",
     "Handler Materials",
     "Laser Beam Trim Operator",
     "Manager Operations",
     "Office Helper",
     "Laboratory Supervisor",
     "School Library Media Specialist",
     "Scheduler Production",
     "Engineer Test",
     "Head Of Respiratory Therapy",
     "Top Manufacturing Officer",
     "Controller Division",
     "Repairer Bicycle",
     "Bond Sales Trader",
     "Network/Data Communications Manager",
     "Street Light Repairer",
     "Economist Corporate",
     "Sales Route Driver",
     "Buyer Grocery",
     "Food Services Manager Mid-Size Location",
     "Billing Clerk",
     "Computer Programmer Lead",
     "Fiction Writer",
     "MIS Vice President",
     "Dermatologist",
     "Long-Range Planning Analyst",
     "Optometric Assistant",
     "Food Services Supervisor",
     "Attendant Linen Room",
     "Audiovisual Librarian",
     "Engineer Electromedical Service",
     "Assistant Manager Banking Branch Minor Branch",
     "Computer Peripheral Equipment Operator",
     "Cable Wirer",
     "Chief Executive Officer",
     "News Assistant",
     "Machine Shop Machinist",
     "Administrative Engineering Supervisor",
     "Director Research & Development",
     "Deliverer",
     "Materials Engineer Generic",
     "Truck Driver Van",
     "Grounds Maintenance Foreman",
     "Director Long-Range Planning",
     "Medical Paramedic",
     "Booking Agent",
     "Organizational Psychologist",
     "Submarine Worker",
     "Patent Attorney",
     "IT Systems Project Manager",
     "Statistician",
     "Electrical Engineering Technician",
     "Chef Pastry",
     "Electrocardiograph Technologist",
     "Medical Occupational Therapy Assistant",
     "Benefits Manager",
     "Retail Sales Home Furnishings",
     "Sheet Metal Mechanic",
     "Mechanic Research",
     "Counter Attendant",
     "Precision Assembler Electronics",
     "Environmental Research Manager",
     "Supervisor Office",
     "Personnel Supervisor",
     "Medical Outpatient Director",
     "Banking Loan Collector Commercial",
     "Computer Services Manager",
     "Administrative Assistant, CEO",
     "Medical Ophthalmic Technician",
     "Metallurgical Engineer",
     "Aide Home Care",
     "Rough Grinder",
     "Helper General",
     "Manager Technical Publications",
     "Admissions Director",
     "Tester Laboratory Oil",
     "Supervisor Fleet",
     "Organ Transplant Coordinator",
     "Medical Nurse Home Care",
     "Surveyor Marine",
     "Electronics Worker",
     "Service Order Clerk",
     "Medical Polysomnographic Technician",
     "Second Press Operator",
     "Physician Assistant",
     "Telemarketing Representative",
     "IT Operator Peripheral Equipment",
     "Production Superintendent",
     "Operator Boiler",
     "Laboratory Technician",
     "Health Information Services Director",
     "Operator Ion Implant Machine",
     "Chef",
     "Medical Laboratory Manager",
     "Funeral-Home Attendant",
     "Nibbler Operator",
     "Engineer Materials Generic",
     "Repairer Pump",
     "Technician Research",
     "Clerk Correspondence",
     "Surveyor Marine Cargo",
     "Planner Production",
     "Landscape Supervisor",
     "Manager Bus Transportation",
     "Automotive Service Station Attendant",
     "Corporate Director Outside Member",
     "Orthodontic Technician",
     "Supervisor Traffic",
     "University Laboratory Supervisor",
     "Oncology Nurse",
     "Supervisor Sheet Metal",
     "Maintenance Helper",
     "Physician Medical Director",
     "Medical Physical Therapy Assistant",
     "Personnel Supervisor Employee Relations",
     "Shuttle Driver",
     "Inspector Gas",
     "School Crossing Guard",
     "Operator Nuclear Waste Process",
     "Web Author",
     "Manager Design Engineering",
     "Technologist Science",
     "Manager Marketing Media",
     "Purifying Plant Operator",
     "Supervisor Facilities & Building",
     "Banking Investment Analyst",
     "Appraiser Residential",
     "Scientific Glassblower",
     "Medical Tumor Registrar",
     "Medical Nursing Supervisor",
     "Banking Branch Manager Minor Branch",
     "Muffler Installer",
     "Supervisor Research & Development Technical",
     "Medical Rheumatologist",
     "Voice Pathologist",
     "Automobile Estimator",
     "Dump Truck Driver",
     "Operator Casting Machine",
     "Clerk Health Unit",
     "Supervisor Motor Vehicle",
     "IT Operator Data Entry",
     "Manager Loss Prevention Retail",
     "Trade Relations Director",
     "Underwater Worker",
     "Polishing Machine Operator",
     "Hotel Sales Representative",
     "Security Services Security Guard",
     "Analyst Quality Assurance",
     "Sales Area Manager",
     "Clerk Materials Scheduling",
     "Manager Project Revenue",
     "Technician Mechanical Design",
     "Technician Personnel",
     "Analyst Personnel",
     "Multiple Spindle Drilling Machine Operator",
     "Fabricator Assembler",
     "Technician Medical Records",
     "Medical School Nurse",
     "Materials Coordinator",
     "Transplant Coordinator",
     "Dog Groomer",
     "Lens Fabricating Machine Tender",
     "Systems Analysis Supervisor",
     "Systems Analyst Lead",
     "Set Decorator",
     "Engineering Design Manager",
     "Representative Hospital Insurance",
     "Medical Nurse Operating Room",
     "Hoisting Engineer Pile Driving",
     "Banking Teller Vault",
     "Cardiologist Invasive",
     "Manager Travel",
     "Manager Bond Department",
     "Lens Prescription Clerk",
     "Operator Screw Machine",
     "Newspaper Delivery Driver",
     "Director Housekeeping",
     "Supervisor Hardware Engineering",
     "Financial Aid Counselor",
     "Aide Dietary",
     "Repairer Carpenter",
     "Hearing Test Technician",
     "Chemical Plant Maintenance Worker",
     "Ceramic Engineer",
     "Technician Logistics Engineering",
     "Photoengraver",
     "Medical Practice Administrator",
     "Nurse Home Care",
     "Mask Designer",
     "Board Member Outside",
     "Occupational Therapy Head",
     "Inside Sales Representative",
     "Housekeeping Attendant",
     "Aide Occupational Therapy",
     "Operator Rotogravure Press",
     "Electrical Engineer",
     "Line Erector",
     "Accounts Payable & Receivable Manager",
     "Teacher Physical Education",
     "Benefits Supervisor",
     "Museums Teacher",
     "Supervisor Circulation",
     "Scheduler Vehicle Maintenance",
     "Publications Editor",
     "Engineer Electrolysis",
     "Pneumatic Tube Repairer",
     "Medical Head Of Home Health",
     "Inspector Final",
     "Food Sales Clerk",
     "Technician Stress Test",
     "Mechanic Heavy Equipment",
     "Lab Technician Chemical",
     "Data Recovery Planner",
     "Investigator Alarm",
     "Bacteriologist",
     "Administrative Engineering Manager",
     "Security Guard Security Service",
     "Personal Protection Officer",
     "Hospital Plastic Assembler",
     "Budget Director",
     "Jet Copilot",
     "Head Of Housekeeping",
     "Training Instructor Technical",
     "Catheterization Cardiac Technologist",
     "Painter Rough Spray",
     "Manager Online Sales",
     "Medical Outpatient Admitting Clerk",
     "Medical Services Chiropractor",
     "Semiconductor Processor",
     "Volunteer Services Director",
     "Medical Nurse Oncology",
     "Supervisor Tax Compliance",
     "Color Stripper",
     "Dry-Wall Finisher",
     "Mechanic Transmission",
     "Wire-Draw Operator",
     "Top Environmental Officer",
     "Traffic Director",
     "Tractor Operator",
     "Engineer Environmental",
     "Analyst Rate",
     "Vice President Investor Relations",
     "Medical Nursing Instructor",
     "Truck Driver Tow Truck",
     "Data Acquisition Technician",
     "Utility Regulatory Administrator",
     "Punch Press Operator",
     "IT Systems Administrator",
     "Clerk Benefits",
     "Assistant Auditor",
     "Clerk Hotel",
     "Counselor Substance Abuse",
     "Supervisor Long-Range Planning",
     "Word Processing Supervisor",
     "Safety Engineer Product",
     "Medical Surgeon Plastic",
     "Service Station Manager Automobile",
     "Director Employee Training",
     "Public Interviewer",
     "Neonatologist",
     "Valuer",
     "Dragline Operator",
     "Insurance Agent Special Group",
     "Grader Meat",
     "Electronics Drafter",
     "Sales Supervisor",
     "Concrete Mixing Truck Driver",
     "Drafter Landscape",
     "Associate Professor",
     "Calibration Technician",
     "Furniture Repairer",
     "Director Labor Relations",
     "Head Of Manufacturing",
     "Admissions Evaluator",
     "Cost Accounting Supervisor",
     "Sales Training Representative",
     "Medical Psychiatric Aide",
     "Supervisor Mailroom",
     "Librarian Head",
     "Supervisor Accounts Receivable",
     "Long-Term Care Head",
     "Quality Assurance Supervisor IT",
     "Information Systems Director",
     "Developer Film",
     "Technical Writers Supervisor",
     "Investor Relations Manager",
     "Geriatric Nurse",
     "Medical Nursing Aide",
     "Attendant Amusement Park",
     "Supervisor Credit",
     "Private Duty Nurse",
     "Development Engineer",
     "Medical Cardiac Catheterization Technologist",
     "Aircraft Mechanic Jet",
     "Medical Oncologist",
     "Hand Packager",
     "Street Light Servicer",
     "Counter Attendant Cafeteria",
     "Operations Head Banking",
     "Savings Teller",
     "Laboratory Tester",
     "Electronic Data Interchange Manager",
     "Loan Manager Mortgage",
     "Traffic Manager",
     "Agent Booking",
     "Clerk Accounting",
     "Personal Lines Underwriter",
     "Sports Trainer",
     "Laborer Chemical Processing",
     "Opaquer",
     "Engineer Biomedical",
     "Molder Rubber",
     "Purchasing Manager",
     "Emergency Medical Technician",
     "Manager Tax",
     "Respiratory Therapy Technician",
     "Finisher Dry-Wall",
     "Chemical Plant Supervisor",
     "Automotive Mechanic",
     "Technologist Food",
     "Research Analyst Insurance",
     "Loan Collector Consumer",
     "Technical Services Representative",
     "Teacher Home Therapy",
     "Maternal-Fetal Medicine Specialist",
     "Medical Admitting Supervisor",
     "Director Pharmacy",
     "Construction Engineering Director",
     "Well Driller",
     "Packaging Supervisor",
     "Head Engineer Biomedical",
     "Molder Tire",
     "Top Tax Corporate Officer",
     "Teacher Elementary School",
     "Translator Deaf",
     "Physical Therapy Technician",
     "Construction Engineer",
     "Paperhanger",
     "Electric Meter Repair Helper",
     "Operator Lathe",
     "Medical Practice Manager",
     "Head Of Trust",
     "Quality Control Tester",
     "Trade Relations Manager",
     "Crime Laboratory Analyst",
     "Technical Training Instructor",
     "Intensive Care Unit Nurse",
     "Supervisor Computer Software Design",
     "News Librarian",
     "Coin Machine Service Repairer",
     "Customer Sales Clerk",
     "Assembler Fabricator",
     "Engineer Photogrammetric",
     "Graphic Specialist/Photosetter",
     "Sales Telemarketing Supervisor",
     "Manager Area Sales",
     "Supervisor Warehouse",
     "Engineering Manager",
     "Cashiering Director",
     "Banking Customer Service Representative",
     "Examiner Title",
     "Top IT Officer",
     "Shipfitter",
     "Accountant Public",
     "Elementary School Teacher",
     "Woodworking Machine Operator",
     "Teacher Visually Impaired",
     "Computer Equipment Repairer",
     "Personnel Analyst",
     "Biomedical Engineering Technician",
     "Druggist",
     "Dietary Technician",
     "Medical Services Supervisor",
     "Actor",
     "Head Of Medical Records",
     "Assistant Administrative",
     "Clockmaker",
     "Surveyor Assistant",
     "Computer Desktop Publisher",
     "Derrick Operator",
     "Endodontist",
     "Television & Radio Repairer",
     "Chef Head Hotel & Restaurant",
     "Clerk Purchasing",
     "Top Marketing & Sales Officer",
     "Laboratory Aide",
     "Librarian Law",
     "Credit Information Clerk",
     "Medical Transcriptionist",
     "Market Research Analyst",
     "Chief Merchandising Officer",
     "Banking Head Of Operations",
     "Registered Nurse Call Center",
     "Construction Engineering Manager",
     "Truck Driver Light",
     "Timber Sizer Operator",
     "Surveyor Helper",
     "EEO Director",
     "Sales Representative Advertising",
     "Top Lobbyist",
     "Supervisor Environmental",
     "Building Supervisor",
     "IT Supervisor Applications & Programming",
     "Family Practice Physician",
     "Manager Warehouse",
     "Nurse Aide",
     "Chief Lobbyist",
     "Environmental Scientist",
     "Hotel Laundry Worker",
     "Telephone Operator Supervisor",
     "Vice President Quality Control",
     "Prosthetist/Orthotist",
     "Technician Optical Lens",
     "Engineer Hoisting",
     "Safe Repairer",
     "Loan Interviewer",
     "Operator Machine",
     "Chemical Engineering Technician",
     "Underwriter Life",
     "Surveyor Geophysical",
     "Clerk Credit",
     "Teller Savings",
     "Retail Manager Loss Prevention",
     "Manager Bookkeeping",
     "Medical Home Care Aide Supervisor",
     "Art Director",
     "Banking Installment Loan Clerk",
     "Machine Shop Layout",
     "Medical Nurse Psychiatric",
     "Estimating Supervisor",
     "Heating/Air Conditioning Servicer",
     "Photo Processing Technician",
     "Database Design Analyst",
     "Clerk Rental Facility",
     "Materials Management Director",
     "Library Helper",
     "Compensation Supervisor",
     "Medical EMG Technician",
     "Marine Engine Mechanic",
     "Trust Officer",
     "Medical Quality Assurance Coordinator",
     "Human Resources Director",
     "Cloth Finisher Supervisor",
     "Vice President Planning & Development",
     "Optical Prescription Clerk",
     "Vice President Government Affairs",
     "Supervisor Department",
     "Banking Skip Tracer",
     "Employment Recruiter Professional",
     "Drafter Geological",
     "Manager Factory",
     "Waste Management Manager",
     "Operator Hoist & Winch",
     "Advertising Agent",
     "Nurse Manager Clinic",
     "Medical Technology Teaching Supervisor",
     "Operations Research Manager"]
    def title
      TITLES[rand(TITLES.length - 1)]
    end
  end
end
