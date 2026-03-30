.class public final Ljzr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljzf;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljzr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljzr;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llsc;Llsc;)F
    .locals 10

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_1
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    check-cast p0, Liid;

    nop

    nop

    iget-object p0, p0, Liid;->c:Lpck;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Liid;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sget-object p0, Liid;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget p2, p0, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    new-array v4, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v4, :array_0

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_8
    new-array v4, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_9
    const/16 p2, 0x5f6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Liie;->d()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Liid;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Ljzr;->a:I

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p2, p0, v3, v0}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1, p2}, Liid;->a(Llsc;Llsc;)Lqhi;

    move-result-object p1

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

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :goto_11
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_12
    aput v2, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_13
    aget v2, v4, v5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float p2, p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1, p2}, Liie;->a(Llsc;Llsc;)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    new-array v4, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput v2, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    iget p0, p0, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput p0, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v1}, Lqhi;->g([F)[F

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_23
    const/16 p2, 0x5f5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_25
    iget v1, p0, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_26
    return v2

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

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_27
    aput p2, v4, v5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    iget-object v0, p0, Ljzr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Liid;->a:Lsdb;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aput p2, v1, v5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2f
    iget-object p0, p0, Ljzr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_30
    const/4 v1, 0x2

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

    :goto_31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_32
    float-to-double v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    :goto_34
    check-cast v0, Liie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    if-lt p2, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_37
    if-lez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_38
    const-string p1, "Motion Distance cannot be estimated with 0x0 frame."

    nop

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

    :goto_39
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_f

    nop

    nop

    :goto_3b
    sub-float/2addr v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Liie;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-float/2addr v4, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3e
    throw p0

    nop

    nop

    :goto_3f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-array v1, v1, [F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_44
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Ljzr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_47
    check-cast v1, [F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move p2, v5

    nop

    :goto_4b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v5, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget v8, v1, v5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1, p2, p0, v3, v0}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    :goto_4f
    goto/32 :goto_26

    nop

    nop

    :goto_50
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_51
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_4f

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    float-to-double v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    :goto_56
    const-string p1, "Motion Distance cannot be estimated due to null transform."

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_58
    float-to-double v8, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_59
    aget v4, v4, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5b
    if-gtz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5c
    aput p0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Ljzr;->a:I

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

    nop

    nop

    :goto_1
    const-string p0, "EisGyroFrameDistanceMetric"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "GyroFrameDistanceMetric"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
