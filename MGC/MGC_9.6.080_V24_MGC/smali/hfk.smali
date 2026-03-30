.class public final Lhfk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public a:Z

.field public b:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

.field private final c:Lowu;

.field private d:Ljava/util/UUID;

.field private e:I

.field private final f:Lgvg;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

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

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhfk;->d:Ljava/util/UUID;

    nop

    nop

    const/4 v0, 0x1

    nop

    iput v0, p0, Lhfk;->e:I

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lowu;Lgvg;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhfk;->f:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput v0, p0, Lhfk;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhfk;->d:Ljava/util/UUID;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhfk;->c:Lowu;

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

    :goto_7
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_7d

    nop

    nop

    :goto_0
    if-lt v0, v6, :cond_0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

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

    nop

    nop

    :goto_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v4, v1, Lhfi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    sget-object v4, Lhfh;->a:Lhfh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhfk;->f:Lgvg;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_9
    move-object v4, v7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    if-gez v8, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_b
    iget-object v0, v0, Lhfi;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, p1, v1, v3}, Lmw;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhfk;->c:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v1, v0, Lhfi;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_15
    iget-object v1, v0, Lhfi;->c:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_17
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_19
    aget-object v7, v5, v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, v1, Lhfi;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Lhfh;->values()[Lhfh;

    move-result-object v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1d
    sub-long/2addr v2, v4

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

    :goto_1e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    add-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_50

    nop

    nop

    :goto_21
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_28

    nop

    nop

    :goto_23
    add-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Lhfi;->d:Landroid/graphics/PointF;

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

    :goto_25
    iget v8, v7, Lhfh;->g:F

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-wide v3, v0, Lhfi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lhbp;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v1, Lhfi;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v1, Lhfi;->c:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v2, v1}, Lhfk;->b(ILjava/util/UUID;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Lhfk;->c:Lowu;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p0, v1}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_40

    nop

    nop

    :goto_33
    iget-wide v8, v7, Lhfh;->e:J

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v3, p0, p1, v1, v0}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_36
    const/16 v1, 0xb

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_37
    goto :goto_3c

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_39
    array-length v6, v5

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3b
    if-ne v1, v2, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_4
    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    :goto_3e
    iget-object p1, p0, Lhfk;->c:Lowu;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3f
    cmp-long v8, v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_40
    invoke-virtual {p1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_41
    sub-float v4, v1, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_42
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_43
    iget v5, v5, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_44
    iget v8, v7, Lhfh;->h:F

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_45
    invoke-direct {p0}, Lhfk;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_3e

    nop

    nop

    :goto_46
    iget-object v1, p0, Lhfk;->f:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v3, 0x8

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

    nop

    :goto_48
    check-cast p1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4c
    goto/32 :goto_75

    nop

    :goto_4d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4e
    iget-wide v8, v7, Lhfh;->f:J

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_3a

    nop

    nop

    :goto_50
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_51
    new-instance p1, Landroid/graphics/RectF;

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

    nop

    nop

    :goto_52
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

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

    goto/32 :goto_74

    nop

    nop

    :goto_53
    iget-object v4, v1, Lhfi;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_54
    iget v4, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_55
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_57
    iget v3, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_58
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget v0, p0, Lhfk;->e:I

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v3, Lhfj;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Lhfi;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-wide v3, v0, Lhfi;->b:J

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

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

    :goto_5e
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    cmpg-float v8, v1, v8

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

    :goto_61
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_62
    goto/32 :goto_4d

    nop

    :goto_63
    iget-object v0, v0, Lgvg;->a:Ljava/lang/Object;

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

    :goto_64
    iget v5, v5, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_65
    sub-float v3, v0, v2

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

    nop

    :goto_66
    sub-float/2addr v5, v1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_6a
    cmpl-float v8, v1, v8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6b
    if-gez v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6c
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_6d
    if-nez v1, :cond_8

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    :goto_6e
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_37

    nop

    nop

    :goto_6f
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lhfk;->d:Ljava/util/UUID;

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_30

    nop

    nop

    :goto_70
    cmp-long v8, v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_71
    check-cast v0, Lhfi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_73
    div-float/2addr p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_74
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_76
    return-void

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_6f

    nop

    nop

    :goto_78
    iget v1, v4, Lhfh;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, v1, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-ltz v8, :cond_a

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-wide v2, v1, Lhfi;->b:J

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

    :goto_7c
    new-instance v2, Lmw;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7d
    const v0, 0x1b

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7e
    iget-boolean v0, p0, Lhfk;->a:Z

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7f
    sub-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(ILjava/util/UUID;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

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

    :goto_1
    if-eqz p2, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhfk;->d:Ljava/util/UUID;

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    aput-object v0, v1, v3

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    aput-object p2, v1, v3

    nop

    const/16 v3, 0x22d

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    :try_start_1
    iput p1, p0, Lhfk;->e:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
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

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
