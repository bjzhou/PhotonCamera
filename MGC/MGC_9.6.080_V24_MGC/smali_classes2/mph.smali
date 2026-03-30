.class final Lmph;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lmpw;

.field final synthetic b:Lmpi;


# direct methods
.method public constructor <init>(Lmpi;Lmpw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lmph;->b:Lmpi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmph;->a:Lmpw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v2, Lmpw;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Loiq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    iget-object p1, p0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move p2, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Lixe;->a(Lixf;)Lpci;

    :goto_c
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Lmoq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lmpi;->q:Loiq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2, v2, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p2, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_14
    sget-object p2, Lmpi;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lmpi;->q:Loiq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "Low battery level: %d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1}, Lmpw;->f(Z)V

    goto/32 :goto_50

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p2}, Lnei;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lmph;->b:Lmpi;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long p2, v1, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lmpw;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lmpw;->l()Z

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    iget-object v2, p0, Lmph;->a:Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lmpw;->a()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p1, Lmpw;->B:Lixe;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2}, Lmoq;->j(I)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v2, 0xc

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lmph;->b:Lmpi;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Lnei;->a()Lneh;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v2, 0x7f140768

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_31
    const-string p1, "level"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v2, 0x1202

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_34

    nop

    nop

    :goto_38
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_39
    iget-object p1, p1, Lmpi;->q:Loiq;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3a
    move p2, v0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 p2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p1, Lmpw;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v0}, Lmpw;->f(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p0, Lmpw;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v2, p2, Lnei;->h:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_41
    int-to-long v1, p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-boolean v0, p2, Lnei;->a:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lmpw;->b()V

    :goto_47
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance p2, Lnei;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_49
    const-wide/16 v3, 0x5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4a
    invoke-interface {p2, v2}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4b
    iput-object v0, p2, Lnei;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p1, Lmpw;->g:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez p2, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4e
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_52
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p2, Lscz;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lmph;->b:Lmpi;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
