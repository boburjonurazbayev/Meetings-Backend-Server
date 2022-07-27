---------------------------------Admins data

INSERT INTO 
admins 
    (admin_name, admin_password) 
VALUES 
    ('Boburjon', '1111');


---------------------------------Events data 

INSERT INTO 
events 
    (
        event_category,
        event_sub_category,
        event_date,
        event_time,
        event_type,
        event_link,
        event_title,
        event_description,
        event_text,
        event_photos,
        organiser_type, 
        organiser_name, 
        organiser_profession, 
        contact, 
        organiser_company
    ) 
VALUES 
    (
        'Information Technologies', 
        'Java developer',
        '2022-02-22',
        '13:00',
        'online',
        'https://www.youtube.com/liver24',
        'Alisher Isaevdan biznes va IT bo`yicha master klass',

        'Najot Ta`lim jamoasi o`z o`quvchilari uchun manfaatli 
        bo`lgan musobaqalarni tashkil etishda davom etadi. 
        Biz bu gal markazimizdagi uch soha vakillari, ya`ni 
        UX/UI dizayner, frontend va backend dasturchilarni 
        "bir dasturxon atrofida" to`plashga qaror qildik.',

        'Najot Ta`lim jamoasi o`z o`quvchilari uchun manfaatli 
        bo`lgan musobaqalarni tashkil etishda davom etadi. 
        Biz bu gal markazimizdagi uch soha vakillari, ya`ni UX/UI 
        dizayner, frontend va backend dasturchilarni "bir dasturxon 
        atrofida" to`plashga qaror qildik.
        Kuni kecha bo`lib o`tgan uchrashuvda to`rt kishidan iborat 
        8 ta guruh tashkil qilinib, ularga ikki hafta muddat ichida 
        Toshkent shahridagi har qanday onlayn va oflayn tadbirlar 
        to`g`risida e`lonli ma`lumot beruvchi uch bosqichli veb 
        sahifa tayyorlash vazifasi topshirildi.
        Demak, roppa-rosa 2 haftadan keyin ishtirokchilarning 
        qilgan ishlari chetdan kelgan mehmonlar tomonidan xolis 
        baholanib, dastlabki uchta o`rin egalari qimmatbaho 
        sovg`alar bilan taqdirlanadi. Biz barchaga omad tilab qolamiz.',
        
        '{"biznesvait.png", "itkelajagimiz.png"}',
        'yuridik',
        'Abbos Janizakov', 
        'Product designer', 
        '{"998998455055", "998330033033"}', 
        'Najot Ta`lim MCHJ'
    );

    update events set event_verify = 'verified' where event_id = 1; 