.class final Lojr;
.super Loof;
.source "PG"


# instance fields
.field final synthetic a:Lojy;


# direct methods
.method public constructor <init>(Lojy;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lojr;->a:Lojy;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final b(Landroid/os/Message;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-virtual {p0}, Lojs;->f()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lojs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lojs;->b()V

    goto/32 :goto_1

    nop

    nop
.end method

.method private static final c(Landroid/os/Message;)Z
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    const/4 v0, 0x7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    :goto_14
    const v1, 0x15

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v2, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, v4}, Lofz;-><init>(I)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "GmsClient"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_75

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lojt;->a(Lofz;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lojr;->b(Landroid/os/Message;)V

    :goto_f
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lojy;->f:Lojt;

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

    :goto_11
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_12
    if-eq v0, v3, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p1, Lojy;->l:Z

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lofz;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lojy;->k:Lofz;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lojy;->c()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    invoke-static {p1}, Lojr;->c(Landroid/os/Message;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    throw p1

    nop

    nop

    :goto_22
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_24
    invoke-direct {p1, v4}, Lofz;-><init>(I)V

    :goto_25
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_27
    if-eq v0, v1, :cond_6

    nop

    goto/32 :goto_43

    nop

    :cond_6
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p1, Lojy;->l:Z

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lojr;->a:Lojy;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Landroid/os/Message;->arg2:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Loif;->a(I)V

    :goto_2f
    goto/32 :goto_3a

    nop

    nop

    :goto_30
    const/4 v4, 0x7

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lojy;->f:Lojt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lojy;->k:Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_7
    goto/32 :goto_74

    nop

    :goto_36
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_37
    invoke-static {p1}, Lojr;->c(Landroid/os/Message;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    :goto_39
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3b
    new-instance p1, Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0, v3}, Lojy;->F(Lojy;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance p1, Lofz;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v6, Landroid/app/PendingIntent;

    nop

    nop

    :goto_3f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v1, p1}, Lofz;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7c

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_61

    nop

    nop

    :goto_44
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x2

    nop

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

    :goto_46
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lojy;->r:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, p1, v6}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_4a
    iget-object v0, v0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    :goto_4c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :catch_0
    :goto_4f
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v3, v2, v6}, Lojy;->A(IILandroid/os/IInterface;)Z

    goto/32 :goto_42

    nop

    nop

    :goto_51
    new-instance v1, Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8e

    nop

    nop

    :goto_53
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_54
    goto :goto_4c

    nop

    :goto_55
    goto/32 :goto_a1

    nop

    nop

    :goto_56
    iget p1, p1, Landroid/os/Message;->arg2:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p1}, Lojr;->b(Landroid/os/Message;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-ne v0, v4, :cond_a

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p1, p0, Lojr;->a:Lojy;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Lojs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lojy;->f:Lojt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_61
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_62
    return-void

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_66
    const/4 v5, 0x3

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_67
    const/4 v3, 0x5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_68
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Lojy;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_6a
    iget v1, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_b

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

    :cond_b
    :try_start_2
    invoke-virtual {p1}, Lojy;->c()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6e
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0}, Lojs;->d()V

    :goto_70
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_71
    const-string v0, "Don\'t know how to handle message: "

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_72
    if-eq v0, v1, :cond_c

    nop

    goto/32 :goto_77

    nop

    nop

    :cond_c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_74
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_76
    goto :goto_7b

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v0, :cond_d

    nop

    goto/32 :goto_2f

    nop

    :cond_d
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_7a
    if-eq v0, v3, :cond_e

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_e
    :goto_7b
    goto/32 :goto_17

    nop

    nop

    :goto_7c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p1, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_80
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object p1, p0, Lojs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lojs;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_10

    nop

    nop

    const-string v0, "GmsClient"

    nop

    nop

    nop

    const-string v1, "Callback proxy "

    nop

    nop

    const-string v3, " being reused. This is not safe."

    nop

    invoke-static {p0, v1, v3}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_97

    nop

    nop

    :goto_84
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0}, Lojy;->H()V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_86
    if-eq v0, v1, :cond_11

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7d

    nop

    nop

    :goto_87
    if-nez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_12
    :goto_88
    goto/32 :goto_47

    nop

    nop

    :goto_89
    invoke-virtual {p0}, Lojy;->k()Z

    move-result p0

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_8a
    iget-object p1, p1, Lojy;->k:Lofz;

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

    :goto_8b
    if-nez p0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_8d
    invoke-interface {p0, p1}, Lojt;->a(Lofz;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {p1, v5}, Lojy;->F(Lojy;I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_8f
    iget v1, p1, Landroid/os/Message;->arg2:I

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    instance-of v0, v0, Landroid/app/PendingIntent;

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_93
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_94
    if-eqz v0, :cond_14

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

    :cond_14
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-nez p0, :cond_15

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v0, p1, Landroid/os/Message;->what:I

    nop

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

    :goto_97
    if-nez p1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_16
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p1, p0, Lojr;->a:Lojy;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_99
    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9a
    iget p1, p1, Landroid/os/Message;->arg2:I

    nop

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

    nop

    :goto_9b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_4
    iput-boolean v2, p0, Lojs;->e:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget p0, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9d
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0}, Lojs;->f()V

    goto/32 :goto_68

    nop

    nop

    :goto_a1
    invoke-static {p1}, Lojr;->b(Landroid/os/Message;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_a2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a3
    new-instance p1, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {p0, v0}, Lojt;->a(Lofz;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-eq v0, v5, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_17
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-eqz p1, :cond_18

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_18
    goto/32 :goto_3d

    nop

    nop

    nop
.end method
