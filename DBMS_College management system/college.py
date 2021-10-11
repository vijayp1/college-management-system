import Tkinter
from Tkinter import *
import sqlite3

def student():
    stud=Tk()
    stud.title("STUDENT")
    r_set=cr.execute('''SELECT * from student''');
    fin=Label(stud,text="FISRT NAME")
    lan=Label(stud,text="LAST NAME")
    gn=Label(stud,text="GENDER")
    DB=Label(stud,text="DOB")
    po=Label(stud,text="PHONE")
    dpi=Label(stud,text="DEPARTMENT ")
    id=Label(stud,text="STUDENT ID")
    id.grid(row=0,column=0)
    gn.grid(row=0,column=1)
    DB.grid(row=0,column=2)
    fin.grid(row=0,column=3)
    lan.grid(row=0,column=4)
    po.grid(row=0,column=5)
    dpi.grid(row=0,column=6)
    
    i=1
    for student in r_set:
        for j in range(len(student)):
            e = Entry(stud, width=10, fg='blue') 
            e.grid(row=i, column=j) 
            e.insert(END, student[j])
        i=i+1
    
def fach():
    global fid
    global gen
    global ph
    global nam
    global ema
    global qual
    global depi
    fsub=Tk()
    fsub.title("STAFF APPLICATION")
    Label(fsub,text="FACULTY ID : ").grid(row=0,column=0)
    Label(fsub,text="Gender : ").grid(row=1,column=0)
    Label(fsub,text="phone : ").grid(row=2,column=0)
    Label(fsub,text="Name : ").grid(row=3,column=0)
    Label(fsub,text="Email : ").grid(row=4,column=0)
    Label(fsub,text="Qualification : ").grid(row=5,column=0)
    Label(fsub,text="Department ID : ").grid(row=6,column=0)
    fid=Entry(fsub)
    gen=Entry(fsub)
    ph=Entry(fsub)
    nam=Entry(fsub)
    ema=Entry(fsub)
    qual=Entry(fsub)
    depi=Entry(fsub)
    fid.grid(row=0,column=1)
    gen.grid(row=1,column=1)
    ph.grid(row=2,column=1)
    nam.grid(row=3,column=1)
    ema.grid(row=4,column=1)
    qual.grid(row=5,column=1)
    depi.grid(row=6,column=1)
    su=Button(fsub,text="HIRE",width=10,height=2,command=fsu)
    su.grid(row=7,column=2)
    

def fsu():
    fi_d=fid.get()
    g_en=gen.get()
    p_h=ph.get()
    n_am=nam.get()
    e_ma=ema.get()
    q_ual=qual.get()
    d_epi=depi.get()
    cr.execute("insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values(?,?,?,?,?,?,?)",(fi_d,g_en,p_h,n_am,e_ma,q_ual,d_epi))
    conn.commit()
    
def faculty():
    fac=Tk()
    fac.title("FACULTY")
    ne=Button(fac,text="HIRE NEW STAFF",width=20,height=2,command=fach)
    ne.grid(row=0,column=0)
    r_set=cr.execute('''SELECT * from faculty''');
    Label(fac,text="FACULTY ID").grid(row=1,column=0)
    Label(fac,text="Gender").grid(row=1,column=1)
    Label(fac,text="PHONE").grid(row=1,column=2)
    Label(fac,text="NAME").grid(row=1,column=3)
    Label(fac,text="Qualification").grid(row=1,column=4)
    Label(fac,text="Department").grid(row=1,column=5)
    Label(fac,text="Email").grid(row=1,column=6)
    
    i=2
    for student in r_set:
        for j in range(len(student)):
            e = Entry(fac, width=10, fg='blue') 
            e.grid(row=i, column=j) 
            e.insert(END, student[j])
        i=i+1

def about():
    abo=Tk()
    abo.title("ABOUT")
    r_set=cr.execute('''SELECT * from department''');
    Label(abo,text="DEPARTMENT CODE").grid(row=0,column=0)
    Label(abo,text="DEPARTMENT NAME").grid(row=0,column=1)
    Label(abo,text="HOD").grid(row=0,column=2)
    i=1 
    for depar in r_set:
        for j in range(len(depar)):
            e = Entry(abo, width=40, fg='blue') 
            e.grid(row=i, column=j) 
            e.insert(END, depar[j])
        i=i+1
    Label(abo,text="SUBJECTS").grid(row=i,column=0)
    i=i+1
    r_s=cr.execute('''select * from subject''');
    Label(abo,text="CODE").grid(row=i,column=0)
    Label(abo,text="NAME").grid(row=i,column=1)
    Label(abo,text="TOTAL HOURS").grid(row=i,column=2)
    i=i+1
    for depar in r_s:
        for j in range(len(depar)):
            e = Entry(abo, width=40, fg='blue') 
            e.grid(row=i, column=j) 
            e.insert(END, depar[j])
        i=i+1
def cont():
    c_o=co.get()
    r=cr.execute("select phone from department_phone where dept_id=?",[c_o]);
    i=19
    for row in r:
        e=Entry(home)
        e.grid(row=i,column=0)
        e.insert(END,row[0])
        i=i+1


def submit():
    su=Label(home,text="STUDENT REGISTERED")
    su.grid(row=10,column=1)
    s_i=si.get()
    g_e=ge.get()
    d_o=do.get()
    f_n=fn.get()
    l_n=ln.get()
    p_hON=phON.get()
    d_ep=dep.get()
    cr.execute("insert into student(S_ID,gender,dob,F_name,L_name,phone,Dept_id) values(?,?,?,?,?,?,?)",(s_i,g_e,d_o,f_n,l_n,p_hON,d_ep))
    conn.commit()

def makch():
    fi=Entry(home)
    fi.grid(row=15,column=1)
    Label(home,text="PERC : ").grid(row=15,column=0)
    s_t=st.get()
    s_ub=sub.get()
    l=cr.execute("select percentage from attendance where s_id=? and code=?",(s_t,s_ub))
    for r in l:
        fi.insert(END,r[0])

def cgp():
    global ma
    global sdd
    global scc
    s_cc=scc.get()
    s_dd=sdd.get()
    l=cr.execute("select cgpa from sem_cgpa where sem_code=? and s_id=?",(s_cc,s_dd))
    s=Entry(ma)
    s.grid(row=4,column=1)
    Label(ma,text="CGPA : ").grid(row=4,column=0)
    for r in l:
        s.insert(END,r)

def gpa():
    global sti
    global suc
    global ma
    s_ti=sti.get()
    s_uc=suc.get()
    l=cr.execute("select gpa,sem_code from sub_gpa where s_id=? and code=?",(s_ti,s_uc))
    si=Entry(ma)
    su=Entry(ma)
    si.grid(row=9,column=1)
    su.grid(row=10,column=1)
    Label(ma,text="GPA : ").grid(row=9,column=0)
    Label(ma,text="SEM CODE : ").grid(row=10,column=0)
    for r in l:
        si.insert(END,r[0])
        su.insert(END,r[1])
    
def mar():
    global ma
    global sdd
    global scc
    global sti
    global suc
    ma=Tk()
    ma.title("MARKS")
    Label(ma,text="SEMESTER CGPA").grid(row=0,column=1)
    Label(ma,text="ENTER STUDENT ID : ").grid(row=1,column=0)
    Label(ma,text="ENTER SEMESTER CODE : ").grid(row=2,column=0)
    sdd=Entry(ma)
    scc=Entry(ma)
    sdd.grid(row=1,column=1)
    scc.grid(row=2,column=1)
    Button(ma,text="CHECK CGPA",command=cgp).grid(row=3,column=1)
    Label(ma,text="SUBJECT GPA").grid(row=5,column=1)
    Label(ma,text="ENTER STUDENT ID : ").grid(row=6,column=0)
    Label(ma,text="ENTER SUBJECT CODE : ").grid(row=7,column=0)
    sti=Entry(ma)
    suc=Entry(ma)
    sti.grid(row=6,column=1)
    suc.grid(row=7,column=1)
    Button(ma,text="CHECK GPA",command=gpa).grid(row=8,column=1)

home=Tk()
conn=sqlite3.connect("college.db")
cr=conn.cursor()
a=0
home.title("COLLEGE AUTHORITY")
st=Button(home,text="STUDENT",width=20,height=2,command=student)
fa=Button(home,text="FACULTY",width=20,height=2,command=faculty)
ab=Button(home,text="MY CURRICULUM",width=20,height=2,command=about)
ma=Button(home,text="CHECK GRADES",width=20,height=2,command=mar)
st.grid(row=0,column=0)
fa.grid(row=0,column=1)
ab.grid(row=0,column=2)
ma.grid(row=0,column=3)
t=Label(home,text="ADMISSION")
t.grid(row=1,column=1)
fisn=Label(home,text="FISRT NAME : ")
lasn=Label(home,text="LAST NAME : ")
gen=Label(home,text="GENDER : ")
DOB=Label(home,text="DOB : ")
pho=Label(home,text="PHONE : ")
depi=Label(home,text="DEPARTMENT : ")
sid=Label(home,text="STUDENT ID")
fisn.grid(row=2,column=0)
lasn.grid(row=3,column=0)
gen.grid(row=4,column=0)
DOB.grid(row=5,column=0)
pho.grid(row=6,column=0)
depi.grid(row=7,column=0)
sid.grid(row=8,column=0)
fn=Entry(home)
ln=Entry(home)
ge=Entry(home)
do=Entry(home)
phON=Entry(home)
dep=Entry(home)
si=Entry(home)
fn.grid(row=2,column=1)
ln.grid(row=3,column=1)
ge.grid(row=4,column=1)
do.grid(row=5,column=1)
phON.grid(row=6,column=1)
dep.grid(row=7,column=1)
si.grid(row=8,column=1)
sub=Button(home,text="SUBMIT",width=5,height=2,command=submit)
sub.grid(row=9,column=1)
Label(home,text="CHECK ATTENDANCE").grid(row=11,column=0)
Label(home,text="ENTER STUDENT ID : ").grid(row=12,column=0)
Label(home,text="ENTER SUBJECT CODE : ").grid(row=13,column=0)
st=Entry(home)
sub=Entry(home)
st.grid(row=12,column=1)
sub.grid(row=13,column=1)
che=Button(home,text="CHECK",width=10,height=2,command=makch)
che.grid(row=14,column=1)
Label(home,text="CONTACT").grid(row=16,column=0)
Label(home,text="ENTER DEPARTMENT CODE : ").grid(row=17,column=0)
co=Entry(home)
co.grid(row=17,column=1)
chco=Button(home,text="GET CONTACTS",width=20,height=2,command=cont);
chco.grid(row=18,column=1)

mainloop()
