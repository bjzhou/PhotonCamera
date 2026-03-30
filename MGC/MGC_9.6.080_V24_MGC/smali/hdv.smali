.class public final synthetic Lhdv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

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
    iput p2, p0, Lhdv;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    const v0, 0x7f1401c6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    const-string v0, "SELECT * FROM HardwareHelpDialogCounts WHERE reason = ?"

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Float;

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

    :goto_c
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lhdv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    const v1, 0xa

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v2, p0

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_27

    nop

    nop

    :goto_21
    mul-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_22
    const-string v1, "rebootCount"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    check-cast p1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_26
    mul-float/2addr p1, v2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "UPDATE FatalErrorCounts SET failuresBeforeRebootDuringOpen = 0 , failuresAfterRebootDuringOpen = 0 WHERE cameraId = ?"

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

    :goto_29
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    :try_start_0
    invoke-interface {p1, v3}, Lehv;->f(I)V

    goto :goto_2c

    nop

    nop

    :goto_2b
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_2c
    invoke-interface {p1}, Lehv;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

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

    :goto_2f
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_32
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_34
    check-cast p0, Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_36
    return-object v2

    nop

    :catchall_1
    move-exception p0

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

    :goto_37
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object v2

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_39
    const v0, 0x7f140628

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p0, Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_53

    nop

    nop

    :goto_3d
    mul-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_41
    if-ne v0, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x0

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

    :goto_43
    if-ne v0, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_44
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x3

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

    :goto_46
    const-string v0, "SELECT * FROM FatalErrorCounts WHERE cameraId = ?"

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

    :goto_47
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_18

    nop

    nop

    :goto_4b
    check-cast p1, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x7f1400c0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_4f
    if-eqz p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_7
    :try_start_1
    invoke-interface {p1, v3}, Lehv;->f(I)V

    goto :goto_51

    nop

    nop

    :goto_50
    check-cast p0, Ljava/lang/String;

    nop

    invoke-interface {p1, v3, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_51
    const-string p0, "cameraId"

    nop

    nop

    nop

    nop

    invoke-static {p1, p0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    const-string v0, "failuresBeforeRebootDuringOpen"

    nop

    invoke-static {p1, v0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    const-string v3, "failuresAfterRebootDuringOpen"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    const-string v4, "failuresBeforeRebootDuringSession"

    nop

    invoke-static {p1, v4}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    const-string v5, "failuresAfterRebootDuringSession"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v5}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    const-string v6, "lastFatalErrorTimestamp"

    nop

    invoke-static {p1, v6}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v1

    nop

    invoke-interface {p1}, Lehv;->k()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_2

    nop

    nop

    invoke-interface {p1, p0}, Lehv;->j(I)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_8

    nop

    nop

    goto :goto_52

    nop

    nop

    nop

    :cond_8
    invoke-interface {p1, p0}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_52
    new-instance p0, Lhdt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lhdt;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lehv;->b(I)J

    move-result-wide v7

    nop

    nop

    long-to-int v0, v7

    nop

    nop

    nop

    nop

    iput v0, p0, Lhdt;->b:I

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lehv;->b(I)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    long-to-int v0, v2

    nop

    iput v0, p0, Lhdt;->c:I

    nop

    nop

    invoke-interface {p1, v4}, Lehv;->b(I)J

    move-result-wide v2

    nop

    long-to-int v0, v2

    nop

    nop

    nop

    iput v0, p0, Lhdt;->d:I

    nop

    nop

    invoke-interface {p1, v5}, Lehv;->b(I)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    long-to-int v0, v2

    nop

    nop

    nop

    iput v0, p0, Lhdt;->e:I

    nop

    nop

    nop

    invoke-interface {p1, v6}, Lehv;->b(I)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lhdt;->f:J

    nop

    invoke-interface {p1, v1}, Lehv;->b(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    long-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lhdt;->g:I

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_53
    throw p0

    nop

    nop

    :goto_54
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lhdv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_2
    check-cast p0, Lhee;

    nop

    invoke-virtual {p0}, Lhee;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    int-to-long v4, p0

    nop

    nop

    invoke-interface {p1, v3, v4, v5}, Lehv;->e(IJ)V

    const-string p0, "reason"

    nop

    nop

    nop

    nop

    invoke-static {p1, p0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    const-string v0, "impressionsBeforeReboot"

    nop

    invoke-static {p1, v0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    const-string v3, "impressionsAfterReboot"

    nop

    nop

    nop

    invoke-static {p1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    invoke-static {p1, v1}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v1

    nop

    invoke-interface {p1}, Lehv;->k()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p0}, Lehv;->b(I)J

    move-result-wide v4

    nop

    nop

    long-to-int p0, v4

    nop

    nop

    nop

    nop

    invoke-static {}, Lhee;->values()[Lhee;

    move-result-object v2

    nop

    aget-object p0, v2, p0

    nop

    new-instance v2, Lhdy;

    nop

    invoke-direct {v2, p0}, Lhdy;-><init>(Lhee;)V

    invoke-interface {p1, v0}, Lehv;->b(I)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    long-to-int p0, v4

    nop

    nop

    iput p0, v2, Lhdy;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    long-to-int p0, v3

    nop

    nop

    nop

    iput p0, v2, Lhdy;->c:I

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lehv;->b(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    long-to-int p0, v0

    nop

    nop

    nop

    iput p0, v2, Lhdy;->d:I

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    throw p0

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_59
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    throw p0

    nop

    nop

    :goto_5b
    goto/32 :goto_25

    nop

    nop
.end method
