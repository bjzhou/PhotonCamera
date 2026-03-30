.class public Lqqm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public synthetic constructor <init>([S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static a(Luqc;J)Luqc;
    .locals 4

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2
    iput v3, p0, Luqc;->b:I

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    sub-long/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v1, v1, Luqc;->d:J

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Luqc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    and-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v1, v1, Luqc;->f:J

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, v1, Luqc;->b:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Luqc;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_d
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, p0, Luqc;->b:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Luqc;

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

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_18
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Luqc;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    sub-long/2addr v1, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_1c
    iput v3, p0, Luqc;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    iput p1, p0, Luqc;->b:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    iget v3, p0, Luqc;->b:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_21
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_26
    check-cast v1, Luqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_27
    check-cast p0, Luqc;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v1, v1, Luqc;->e:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_15

    nop

    :goto_2b
    goto/32 :goto_39

    nop

    nop

    :goto_2c
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    or-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2e
    iput-wide v1, p0, Luqc;->e:J

    nop

    nop

    :goto_2f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-int/lit8 v2, v2, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Ltkb;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-wide v1, p0, Luqc;->d:J

    nop

    :goto_36
    goto/32 :goto_8

    nop

    nop

    :goto_37
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    or-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x5

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3a
    sub-long/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p0, Luqc;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v2, v1, Luqc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v3, p0, Luqc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3e
    iput-wide v1, p0, Luqc;->f:J

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_34

    nop

    nop

    :goto_40
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_45
    iget v2, v1, Luqc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_46
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_47
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_48
    and-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lqqm;->b:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lqqm;->b:Ljava/lang/Boolean;

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lqqm;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqqm;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lqqm;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static d(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Lsui;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lstd;->a:Lstd;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v1}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lqxb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0, v1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

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
.end method

.method public static f(FF)[F
    .locals 13

    goto/32 :goto_4

    nop

    nop

    :goto_0
    aput v9, v0, v12

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_2b

    nop

    nop

    :goto_2
    goto/32 :goto_20

    nop

    nop

    :goto_3
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    move v5, v2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    :goto_7
    add-float/2addr v8, v5

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v10, v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3b

    nop

    :goto_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v6, p1

    nop

    nop

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

    :goto_d
    if-le v7, v10, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_e
    cmpg-float v8, v6, v7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_41

    nop

    :goto_11
    goto/32 :goto_40

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_13
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput p0, v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [F

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

    :goto_18
    add-int/lit8 v11, v4, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aput v6, v0, v11

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    :goto_1b
    move v9, p0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    if-lez v8, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v8, v4, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_22
    if-gtz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v11, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    add-float/2addr v8, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    aput v10, v0, v8

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

    :goto_26
    aget v10, v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_27
    add-int/lit8 v9, v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    int-to-float v6, v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    aput v9, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v7, v1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_30

    nop

    nop

    :goto_2c
    goto/16 :goto_6

    nop

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v12, v4, 0x2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v9, v4, -0x2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    const/4 v10, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    aget v9, v0, v9

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_33
    const/16 v0, 0x8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    aput v5, v0, v8

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-float v10, v2, p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v5, v8

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_38
    const/high16 v8, -0x40800000    # -1.0f

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmpl-float v6, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3c
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aput v9, v0, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v8, v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3f
    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    :goto_40
    move v6, v8

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aput v5, v0, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v3, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public static g(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/high16 v1, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_6
    const/high16 v1, 0xff0000

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    and-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    and-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static h(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-string p1, "%s+%d+%d"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

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

    :goto_e
    const v1, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;
    .locals 6

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-string v0, "Inoperable file:"

    nop

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    const-string v2, " canonical[%s] freeSpace[%d] protoName[%s]"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v3, v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    const-string v1, " mode[%d]"

    nop

    nop

    iget p0, p0, Landroid/system/StructStat;->st_mode:I

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto :goto_b

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const-string p0, " failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :catch_1
    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private static j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

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

    nop

    :goto_8
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

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

    :goto_b
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    nop

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

    nop

    :goto_c
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

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

    :goto_1f
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    return-object p0

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    nop

    nop

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

    :goto_2e
    goto/32 :goto_14

    nop

    :goto_2f
    goto/32 :goto_a

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, p1, p2}, Lqqm;->i(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static synthetic k()Landroid/util/SparseArray;
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    const-string v2, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

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

    :goto_9
    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x100

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    const-string v2, "SYSTEM_UI_FLAG_IMMERSIVE"

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_f
    const/16 v1, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_28

    nop

    nop

    :goto_13
    const/16 v1, 0x400

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x800

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const-string v2, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    const-string v2, "SYSTEM_UI_FLAG_LOW_PROFILE"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "SYSTEM_UI_FLAG_FULLSCREEN"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    const/16 v1, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    const/16 v1, 0x2000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    const/16 v1, 0x200

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6

    nop

    nop

    :goto_29
    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method public static l(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static m(Lsui;)Lsui;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p0, v0, v1}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrsl;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lrsl;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lstd;->a:Lstd;

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(Lhdn;Landroid/net/Uri;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;
    .locals 1

    :try_start_0
    new-instance v0, Lraq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lraq;-><init>()V

    invoke-virtual {v0}, Lraq;->b()V

    invoke-virtual {p0, p1, v0}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_29

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_29

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    goto :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_24
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p2, p3}, Lqqm;->j(Ljava/io/File;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method
