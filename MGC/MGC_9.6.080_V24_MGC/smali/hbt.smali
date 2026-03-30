.class public final synthetic Lhbt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput p2, p0, Lhbt;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lhbu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljrz;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5
    iget-object v2, v1, Lewk;->g:Lega;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6
    iget-object v0, p0, Ljsn;->l:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Llnz;->f()V

    goto/32 :goto_48

    nop

    nop

    :goto_9
    invoke-virtual {v3, v2}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljsi;->j:Loyd;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    check-cast p0, Ljsq;

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

    :goto_c
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    check-cast v0, Lewk;

    nop

    iget-object v0, v0, Lewk;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v0}, Left;->n()V

    throw p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljsf;->a()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_e
    xor-int/lit8 v1, v0, 0x1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lhbu;->f()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lhbt;->b:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Letf;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lebe;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Llnj;->e:Llnv;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Llph;->f()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljsq;->f()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :goto_1b
    goto/32 :goto_8b

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1e
    iget-object v1, p0, Ljsi;->i:Ljsf;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_0
    goto/32 :goto_6c

    nop

    :goto_20
    iget-object v2, v1, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x19

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v1, p0, Llns;->e:Z

    nop

    nop

    :goto_26
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Ljsn;->p:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    :goto_2b
    check-cast p0, Ljsi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2c
    iget-object v0, v1, Lewk;->g:Lega;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2f
    const v1, 0x5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Llnv;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Lega;->d()Lein;

    move-result-object v2

    nop

    :try_start_1
    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Lewk;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lewk;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lein;->a()V

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lewk;

    nop

    nop

    nop

    iget-object v3, v3, Lewk;->a:Left;

    nop

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v0, Lewk;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lewk;->a:Left;

    nop

    nop

    invoke-virtual {v0}, Left;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Ljsn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_35
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v2, Landroid/app/job/JobInfo;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, p0, Llnv;->c:Loxv;

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

    :goto_3d
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_46

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lese;->h:Lqpe;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, p0, Llnj;->n:Lebf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lese;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_42
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_3

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_3
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, v0, Ljrz;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Llnj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ljsf;->a()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :goto_4a
    goto/32 :goto_77

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Llnz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_51
    throw p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p0, Llnj;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_53
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto :goto_5f

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Ljsl;->f()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Ljsn;->m:Ljsf;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_58
    if-nez v0, :cond_4

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7c

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Left;->k()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v2}, Lega;->f(Lein;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v1, v2}, Leth;->f(Landroid/app/job/JobScheduler;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lese;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_60
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_61
    invoke-static {v0, v1}, Leth;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_63
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_3f

    nop

    nop

    :goto_64
    check-cast p0, Ljsl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_65
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v1, "jobscheduler"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_67
    iget-object p0, p0, Lese;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_68
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_6b
    check-cast v1, Lewk;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v0, v1, p0}, Leri;->a(Lqpe;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_71
    iget-object v0, v1, Lewk;->g:Lega;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_74
    sget v1, Leth;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Ljsn;->f()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput-boolean v1, p0, Llnv;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lhbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Ljsi;->n:Lfwv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v2, p0, Llnv;->a:Loyn;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->cancelAll()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v1, p0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Llnj;->f()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_81
    if-nez v2, :cond_6

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast p0, Llns;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, v0, Ljrz;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_87
    invoke-virtual {v0, v2}, Lega;->f(Lein;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_88
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_8a
    iget-object v0, p0, Llnj;->n:Lebf;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_6d

    nop

    :goto_8c
    check-cast v0, Ljrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast v1, Landroid/app/job/JobScheduler;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8f
    check-cast p0, Llph;

    nop

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

    :goto_90
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :goto_91
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_92
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_93
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p0}, Ljsi;->f()V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop
.end method
