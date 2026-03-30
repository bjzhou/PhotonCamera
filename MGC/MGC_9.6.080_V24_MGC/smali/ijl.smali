.class public final Lijl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:F

.field public final g:Z

.field public final h:Lj$/util/Optional;

.field public final i:Z

.field public final j:Lhoh;


# direct methods
.method public constructor <init>(Liof;Lhoh;)V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    :goto_0
    sget-object v0, Lhmu;->d:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1
    sget-object v3, Lhna;->F:Lhmn;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lijl;->j:Lhoh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, p0, Lijl;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    sub-int v4, v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lhnc;->b:Lhmo;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Lijl;->c:I

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
    invoke-virtual {p2, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_d
    iput v1, p0, Lijl;->a:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v4, p0, Lijl;->d:I

    nop

    :goto_f
    goto/32 :goto_4d

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Liof;->l()Z

    move-result p1

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

    :goto_12
    move v1, v4

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    iput-boolean p1, p0, Lijl;->g:Z

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

    :goto_15
    sub-int v2, v1, v0

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

    :goto_16
    if-nez p1, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_18
    if-nez v3, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Lhnc;->i:Lhmn;

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
    invoke-virtual {p2, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_34

    nop

    nop

    :goto_1f
    iput-boolean p1, p0, Lijl;->i:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_20
    iput-boolean p1, p0, Lijl;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_27
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_28
    iput p1, p0, Lijl;->f:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lijl;->h:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_2d
    invoke-virtual {p2, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Liof;->l()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v4, p0, Lijl;->d:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    invoke-virtual {p2, p1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3a
    sget-object v0, Lhmu;->au:Lhmn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Liof;->l()Z

    move-result v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Liof;->l()Z

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_42
    invoke-virtual {p2, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    sget-object p1, Lhmu;->H:Lhmn;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Liof;->l()Z

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_45
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_49
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Liof;->l()Z

    move-result v2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4c
    sget-object p1, Lhmm;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4d
    iget p1, p0, Lijl;->a:I

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

    :goto_4e
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_51
    sget-object p1, Lhmu;->G:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_52
    iput p1, p0, Lijl;->b:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v2, p0, Lijl;->c:I

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

    :goto_54
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_55
    if-nez v2, :cond_5

    nop

    goto/32 :goto_3c

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    sget-object v1, Lhmu;->T:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lhmu;->U:Lhmn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a()Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lijl;->j:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

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

    nop

    :goto_13
    iget-object v0, p0, Lijl;->j:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lj$/time/Duration;)Z
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gez p0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lijl;->g:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    sget-object p1, Lhnc;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long p0, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lijl;->j:Lhoh;

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

    :goto_11
    int-to-long p0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Ljava/lang/Integer;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
