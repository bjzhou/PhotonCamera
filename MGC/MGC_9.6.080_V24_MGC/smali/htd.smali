.class public Lhtd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhta;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private volatile A:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile B:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile C:Ljava/util/concurrent/atomic/AtomicLong;

.field private final D:Lhoh;

.field private E:Loeq;

.field private final F:Lmhz;

.field public final b:Lpck;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Z

.field private final e:Libn;

.field private final f:Lnoy;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/concurrent/atomic/AtomicLong;

.field private final j:Lppe;

.field private final k:Lpdf;

.field private final l:Z

.field private final m:Loyd;

.field private final n:I

.field private final o:Z

.field private final p:I

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/Map;

.field private final s:Ljava/lang/Object;

.field private final t:Z

.field private final u:Ljava/util/Deque;

.field private volatile v:I

.field private volatile w:Lppd;

.field private volatile x:Z

.field private volatile y:Llsc;

.field private volatile z:J


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(J)V
    .locals 10

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    sget-object v1, Lhmq;->bA:Lhmn;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhtd;->m:Loyd;

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

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lhtd;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhtd;->D:Lhoh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_17

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lhtd;->E:Loeq;

    nop

    nop

    iget-object v3, p0, Lhtd;->w:Lppd;

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    iget-object v4, p0, Lhtd;->w:Lppd;

    nop

    iget-object v3, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v5, v7

    nop

    nop

    new-instance v9, Lhtb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, p0, v2, v0}, Lhtb;-><init>(Lhtd;Loeq;I)V

    move-wide v7, p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v4 .. v9}, Lppd;->b(JJLppc;)V

    :cond_2
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/Integer;

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

    :goto_14
    const v1, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_16
    iget v0, p0, Lhtd;->n:I

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Llsc;)Lhte;
    .locals 19

    goto/32 :goto_68

    nop

    nop

    :goto_0
    move v12, v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-int/lit8 v6, v6, 0x2

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

    :goto_2
    if-nez v12, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v6, v2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v10, v10

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5
    iget v4, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v14

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7
    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_8
    div-int/lit8 v5, v5, 0x2

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

    :goto_9
    iget-object v6, v1, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    int-to-long v14, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_d
    mul-long/2addr v2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Llhv;->f:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

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

    :goto_15
    iget-wide v4, v1, Llsc;->c:J

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
    move-object v9, v2

    nop

    nop

    :goto_17
    goto/32 :goto_3e

    nop

    nop

    :goto_18
    new-instance v11, Landroid/util/SizeF;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    sget-object v3, Llhv;->i:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v14, v3}, Lmhz;->o(Ljava/lang/String;Llhv;)Z

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-long v3, v4, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v14, v1, Llsc;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1e
    add-long/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_59

    nop

    nop

    :goto_21
    iget-object v2, v1, Llsc;->t:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_22
    div-long/2addr v2, v14

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

    :goto_23
    div-long v2, v7, v2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_25
    move-wide/from16 v5, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_26
    invoke-virtual {v0, v11}, Lnoy;->b(Ljava/lang/String;)Lpnu;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    iget v10, v1, Llsc;->h:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct/range {v0 .. v14}, Lhte;-><init>(JJJJLandroid/graphics/Rect;FFZILjava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2c
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2d
    div-float/2addr v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v11}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_30
    iget v6, v9, Landroid/graphics/Rect;->top:I

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

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_33
    move-object/from16 v14, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, v14}, Lmhz;->l(Ljava/lang/String;)I

    move-result v13

    nop

    nop

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

    :goto_36
    move-wide v1, v3

    nop

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

    :goto_37
    iget-wide v7, v1, Llsc;->d:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_38
    move-object v0, v11

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3b
    add-float/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3c
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3d
    if-eqz v3, :cond_3

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

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-wide v2, v1, Llsc;->e:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-wide/16 v2, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_41
    int-to-long v10, v6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_42
    iget-object v2, v1, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_43
    goto/32 :goto_58

    nop

    nop

    :goto_44
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0xb

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    move-object v0, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v14, v3}, Lmhz;->o(Ljava/lang/String;Llhv;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v1, p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4a
    new-instance v15, Lhte;

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

    :goto_4b
    move-object/from16 v16, v14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v3, Landroid/graphics/Rect;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v2, v3

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_50
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_52
    if-lez v0, :cond_4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    :goto_53
    iget-object v11, v1, Llsc;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_54
    div-long/2addr v10, v14

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v12, :cond_5

    nop

    goto/32 :goto_2a

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v11, v14, v0}, Landroid/util/SizeF;-><init>(FF)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-object v15

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_f

    nop

    nop

    :goto_59
    move v12, v4

    nop

    nop

    :goto_5a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5b
    move-wide/from16 v17, v10

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

    :goto_5c
    mul-float v11, v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5d
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v0, Lhtd;->f:Lnoy;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5f
    move-object v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_14

    nop

    nop

    :goto_62
    iget v5, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_63
    check-cast v0, Landroid/util/SizeF;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_64
    mul-long/2addr v10, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v10, v1, Llsc;->t:Landroid/graphics/Rect;

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

    nop

    :goto_66
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_67
    add-float/2addr v14, v14

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_68
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_69
    int-to-float v6, v6

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const-string v0, "htd"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhtd;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoa;Lpck;Lnoy;Libn;Lpnu;Lppe;Lhoh;Lfzm;Lprb;Lpdf;Ljava/util/Map;Loyd;)V
    .locals 3

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhtd;->h:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    iput p1, p0, Lhtd;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Lhtd;->y:Llsc;

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

    :goto_6
    iput-object v1, p0, Lhtd;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p7, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    new-instance p1, Lmhz;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_10
    invoke-interface {p5}, Lpnu;->g()I

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_52

    nop

    nop

    :goto_12
    sget-object p1, Lhnd;->b:Lhmn;

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lhtd;->F:Lmhz;

    nop

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

    :goto_1a
    goto/32 :goto_17

    nop

    :goto_1b
    const/4 p1, 0x1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

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

    :goto_1d
    iput-object v1, p0, Lhtd;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    iget-boolean p1, p8, Lfzm;->b:Z

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lhtd;->q:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_22
    move p1, v0

    nop

    nop

    :goto_23
    goto/32 :goto_37

    nop

    nop

    :goto_24
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lhtd;->s:Ljava/lang/Object;

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

    :goto_27
    iput-boolean p1, p0, Lhtd;->t:Z

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_28
    iput-object v1, p0, Lhtd;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v1}, Lhoa;->b(Lhoa;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    iput-boolean p1, p0, Lhtd;->o:Z

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v0, p0, Lhtd;->x:Z

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2e
    iput-object p6, p0, Lhtd;->j:Lppe;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    sget-object p2, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v1, Lhoa;->a:Lhoa;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    iput-boolean p1, p0, Lhtd;->d:Z

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    iput-object p4, p0, Lhtd;->e:Libn;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    :goto_3b
    sget-object p1, Lhnd;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p7, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3d
    const v0, 0x1a

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3f
    iput-object p2, p0, Lhtd;->b:Lpck;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_40
    iput-object p7, p0, Lhtd;->D:Lhoh;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_41
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p7, p1}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    sget-object p1, Lhnd;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_44
    invoke-interface {p5}, Lpnu;->l()Lpog;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_46
    iput-object v0, p0, Lhtd;->g:Ljava/util/Set;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v0, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_48
    iput-object p3, p0, Lhtd;->f:Lnoy;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4a
    iput p1, p0, Lhtd;->p:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4b
    sget-object p1, Lhmz;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4c
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p1, p9, p11}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4f
    iput-wide v1, p0, Lhtd;->z:J

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_52
    iput-object v0, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_53
    iput-object p10, p0, Lhtd;->k:Lpdf;

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

    nop

    nop

    :goto_54
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_56
    iput-boolean p1, p0, Lhtd;->l:Z

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

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

    :goto_58
    iput-object p12, p0, Lhtd;->m:Loyd;

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
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Llsc;)V
    .locals 25

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v6, v5, Ljxm;->d:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "eis timestamp does not exist: %d"

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

    nop

    :goto_2
    invoke-virtual {v6, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v9, v7, v10}, Lmhz;->o(Ljava/lang/String;Llhv;)Z

    move-result v9

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v8, v4, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Lhtd;->da190e616797844b591057d0190e7728m(J)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_7
    iget v5, v0, Lhtd;->v:I

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

    nop

    :goto_8
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a
    iget-object v1, v0, Lhtd;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_b
    mul-int/lit8 v3, v3, 0x9

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_c
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    :goto_e
    const/16 v1, 0x4b2

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

    :goto_f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v7, v5, v8}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_11
    iget-wide v6, v1, Llsc;->c:J

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    nop

    nop

    :goto_13
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v6, v5, Ljxm;->h:Z

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v8, 0x12

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

    :goto_16
    iget-boolean v6, v0, Lhtd;->l:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v6, v6, Ljwp;->b:Lsuu;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    if-lt v4, v5, :cond_1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, v0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_1c
    goto :goto_22

    nop

    :goto_1d
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_64

    nop

    nop

    :goto_1f
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_20
    if-nez v9, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v10, Llhv;->h:Llhv;

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

    nop

    :goto_24
    invoke-interface {v0, v1, v2, v3}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    mul-int/lit8 v4, v4, 0x9

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_26
    iget-object v8, v6, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    :goto_28
    const/16 v8, 0x64d

    nop

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

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2a
    const-string v1, "processFrame returned unexpected EIS timestamp %d"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2b
    new-instance v7, Ljsp;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v9, v0, Lhtd;->F:Lmhz;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2f
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v24, v8

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_31
    move-object/from16 v23, v4

    nop

    nop

    nop

    nop

    nop

    :goto_32
    :try_start_0
    monitor-exit v23

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5b

    nop

    nop

    :goto_33
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_35
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_91

    nop

    nop

    :goto_37
    iget v3, v0, Lhtd;->v:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Lhtd;->r:Ljava/util/Map;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5c

    nop

    :goto_3b
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v5, Ljxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3d
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_7c

    nop

    nop

    :goto_3f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    mul-int/lit8 v7, v5, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, v1, v2, v3}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_66

    nop

    nop

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_45
    iget-object v8, v6, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_46
    const/16 v8, 0xc9a

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_47
    if-gt v7, v8, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v4, v0, Lhtd;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v0, Lhtd;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

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

    :goto_4e
    check-cast v4, Ljava/lang/Long;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_4f
    return-void

    nop

    :goto_50
    goto/32 :goto_1b

    nop

    nop

    :goto_51
    if-eqz v8, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_53
    iget-object v7, v6, Llsc;->b:Ljava/lang/String;

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

    :goto_54
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, v0, Lhtd;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_56
    invoke-interface {v0, v1, v4}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v10, Llhv;->i:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v7, :cond_7

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5e
    invoke-static {v4}, Lqhi;->c([F)Lqhi;

    move-result-object v4

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9b

    nop

    nop

    :goto_63
    if-le v7, v8, :cond_a

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v6, p1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_65
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_68
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_69
    sget-object v0, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v4, v0, Lhtd;->g:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, v0, Lhtd;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_6e
    cmp-long v4, v2, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v1, Lscz;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_72
    iget-wide v3, v2, Lhte;->a:J

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

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

    :goto_75
    move-object/from16 v8, v24

    nop

    goto/32 :goto_4

    nop

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

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_78
    sget-object v2, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_36

    nop

    :goto_7a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v9, v7, v10}, Lmhz;->o(Ljava/lang/String;Llhv;)Z

    move-result v7

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v6, p1

    nop

    nop

    :goto_7d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7f
    iget-object v5, v0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_80
    move-object/from16 v23, v4

    nop

    nop

    :try_start_1
    iget-wide v3, v2, Lhte;->c:J

    nop

    iget v13, v2, Lhte;->f:F

    nop

    iget-object v6, v0, Lhtd;->F:Lmhz;

    nop

    move/from16 v17, v13

    nop

    nop

    nop

    iget-object v13, v2, Lhte;->i:Ljava/lang/String;

    nop

    invoke-virtual {v6, v13}, Lmhz;->l(Ljava/lang/String;)I

    move-result v19

    nop

    iget-boolean v2, v2, Lhte;->g:Z

    nop

    nop

    nop

    move v6, v7

    nop

    nop

    move v7, v8

    nop

    move-wide v8, v9

    nop

    nop

    nop

    nop

    nop

    move-wide v10, v11

    nop

    nop

    nop

    nop

    nop

    move-wide v12, v14

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    move-wide v14, v3

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v17

    nop

    move-object/from16 v18, v24

    nop

    move/from16 v20, v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v20}, Loeq;->m(IIJJJJFF[FIZ)J

    move-result-wide v2

    nop

    goto :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_b
    move-object/from16 v24, v3

    nop

    nop

    nop

    move-object/from16 v23, v4

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1, v3}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v2

    nop

    check-cast v2, Lscz;

    nop

    const/16 v3, 0x4b0

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "processCameraMetadata called with a null eisNativeWrapper."

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    move-wide/from16 v2, v21

    nop

    nop

    nop

    :goto_81
    monitor-exit v23

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_82
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_83
    invoke-interface {v0, v1, v4}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v4, v0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_86
    invoke-interface {v2, v1, v3}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_88
    invoke-interface {v0}, Ljava/util/Map;->size()I

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_8b
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_8c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8d
    new-array v3, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_3b

    nop

    nop

    :goto_8f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v1, v5, v4, v2, v3}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move-object/from16 v8, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_93
    if-eqz v4, :cond_c

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v1, v0, Lhtd;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_97
    neg-long v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    :goto_99
    invoke-direct/range {p0 .. p1}, Lhtd;->33f5b80483094659737b73d90f80a8a4m(Llsc;)Lhte;

    move-result-object v2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {}, Lqhi;->d()Lqhi;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v5, v1, v2}, Ljxm;->a(J)Ljwp;

    move-result-object v6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-ltz v4, :cond_d

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_a0
    move-object/from16 v1, p1

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_a1
    const/16 v2, 0x4b3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v9, v0, Lhtd;->F:Lmhz;

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

    :goto_a3
    if-eqz v4, :cond_e

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8b

    nop

    nop

    :goto_a4
    const-string v5, "processFrame failed and dropped stabilization for t=%d (cnt=%d)"

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_a5
    move-object/from16 v24, v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    monitor-enter v4

    nop

    :try_start_2
    iget-object v5, v0, Lhtd;->E:Loeq;

    nop

    nop

    const-wide/16 v21, -0x1

    nop

    nop

    if-eqz v5, :cond_b

    nop

    nop

    iget-object v6, v1, Llsc;->t:Landroid/graphics/Rect;

    nop

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    iget-object v7, v1, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    invoke-virtual {v5, v6, v7}, Loeq;->g(II)V

    iget-object v5, v0, Lhtd;->E:Loeq;

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    iget-object v7, v2, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    invoke-virtual {v5, v6, v7}, Loeq;->h(II)V

    iget-object v5, v0, Lhtd;->E:Loeq;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v0, Lhtd;->b:Lpck;

    nop

    nop

    nop

    iget v7, v6, Lpck;->a:I

    nop

    nop

    iget v8, v6, Lpck;->b:I

    nop

    nop

    nop

    nop

    iget-wide v9, v2, Lhte;->a:J

    nop

    nop

    nop

    nop

    iget-wide v11, v2, Lhte;->b:J

    nop

    iget-wide v14, v2, Lhte;->d:J

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-int/lit8 v5, v4, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_a9
    const/16 v1, 0x4b4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(J)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Lsuu;->cancel(Z)Z

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    const/16 v2, 0x12

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    check-cast v0, Ljxm;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1, p2}, Ljxm;->a(J)Ljwp;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_14
    new-instance v1, Ljsp;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Ljwp;->b:Lsuu;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v0, v2}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lhtd;->g:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    iget-object v0, v0, Ljxm;->d:Landroid/os/Handler;

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

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop
.end method


# virtual methods
.method public final a(Llsc;Llsc;)Lsuu;
    .locals 38

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v2, Lsuu;

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

    :goto_3
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, v0, Lhtd;->k:Lpdf;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_9
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lhtd;->E:Loeq;

    nop

    const/16 v35, 0x0

    nop

    nop

    if-eqz v6, :cond_3

    nop

    iget-wide v7, v4, Lhte;->a:J

    nop

    iget-wide v9, v5, Lhte;->a:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v4, Lhte;->b:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v13, v5, Lhte;->b:J

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

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

    :goto_c
    move-object/from16 v5, p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Lsuu;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    :catchall_0
    move-exception v0

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

    :goto_f
    mul-int/lit8 v1, v1, 0x9

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

    :goto_10
    iget-object v2, v0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    move-object/from16 p2, v3

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v2, v4, Lhte;->d:J

    nop

    nop

    nop

    move-object/from16 v36, v1

    nop

    move-wide/from16 v16, v2

    nop

    nop

    nop

    iget-wide v1, v5, Lhte;->d:J

    nop

    nop

    nop

    nop

    move-wide/from16 v18, v1

    nop

    nop

    nop

    nop

    iget-wide v1, v4, Lhte;->c:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v20, v1

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, v5, Lhte;->c:J

    nop

    nop

    nop

    iget v3, v4, Lhte;->h:I

    nop

    nop

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    iget v3, v5, Lhte;->h:I

    nop

    nop

    nop

    move/from16 v23, v3

    nop

    nop

    nop

    nop

    iget-boolean v3, v4, Lhte;->g:Z

    nop

    nop

    nop

    nop

    move/from16 v24, v3

    nop

    nop

    nop

    iget-boolean v3, v5, Lhte;->g:Z

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v25, v15

    nop

    nop

    nop

    nop

    iget-object v15, v0, Lhtd;->b:Lpck;

    nop

    nop

    iget v15, v15, Lpck;->a:I

    nop

    nop

    nop

    int-to-float v15, v15

    nop

    nop

    move/from16 v26, v3

    nop

    nop

    iget v3, v4, Lhte;->f:F

    nop

    nop

    div-float v3, v15, v3

    nop

    nop

    move/from16 v27, v3

    nop

    nop

    nop

    nop

    iget v3, v5, Lhte;->f:F

    nop

    nop

    div-float v3, v15, v3

    nop

    nop

    nop

    nop

    iget-object v15, v4, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    int-to-float v15, v15

    nop

    nop

    nop

    move/from16 v28, v15

    nop

    nop

    nop

    nop

    iget-object v15, v5, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    nop

    nop

    nop

    nop

    int-to-float v15, v15

    nop

    nop

    iget-object v4, v4, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    iget-object v5, v5, Lhte;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    move/from16 v29, v4

    nop

    iget-object v4, v0, Lhtd;->b:Lpck;

    nop

    nop

    move/from16 v30, v3

    nop

    nop

    nop

    nop

    iget v3, v4, Lpck;->a:I

    nop

    nop

    nop

    nop

    iget v4, v4, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    move/from16 v31, v3

    nop

    nop

    nop

    nop

    iget v3, v0, Lhtd;->v:I

    nop

    nop

    move/from16 v32, v4

    nop

    nop

    nop

    nop

    nop

    move-object v4, v6

    nop

    nop

    nop

    nop

    nop

    move/from16 v33, v5

    nop

    nop

    nop

    nop

    move-wide v5, v7

    nop

    nop

    nop

    nop

    nop

    move-wide v7, v9

    nop

    nop

    nop

    move-wide v9, v11

    nop

    nop

    nop

    nop

    move-wide v11, v13

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v13, v16

    nop

    move/from16 v34, v15

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v37, v25

    nop

    nop

    nop

    nop

    move-wide/from16 v15, v18

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v17, v20

    nop

    nop

    nop

    nop

    move-wide/from16 v19, v1

    nop

    nop

    move/from16 v21, v22

    nop

    nop

    nop

    nop

    move/from16 v22, v23

    nop

    nop

    nop

    nop

    move/from16 v23, v24

    nop

    nop

    nop

    nop

    nop

    move/from16 v24, v26

    nop

    nop

    move/from16 v25, v27

    nop

    nop

    nop

    nop

    move/from16 v26, v30

    nop

    nop

    nop

    nop

    nop

    move/from16 v27, v28

    nop

    nop

    nop

    nop

    move/from16 v28, v34

    nop

    move/from16 v30, v33

    nop

    nop

    nop

    nop

    move/from16 v33, v3

    nop

    nop

    nop

    move-object/from16 v34, v36

    nop

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v34}, Loeq;->i(JJJJJJJJIIZZFFFFFFIII[F)Z

    move-result v1

    nop

    nop

    nop

    nop

    move/from16 v2, v35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, v0, Lhtd;->v:I

    nop

    nop

    nop

    if-ge v2, v3, :cond_2

    nop

    nop

    if-eqz v1, :cond_1

    nop

    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    mul-int/lit8 v4, v2, 0x9

    nop

    nop

    nop

    nop

    mul-int/lit8 v3, v3, 0x9

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v5, v36

    nop

    nop

    nop

    invoke-static {v5, v4, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3}, Lqhi;->c([F)Lqhi;

    move-result-object v3

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_1
    move-object/from16 v5, v36

    nop

    nop

    invoke-static {}, Lqhi;->d()Lqhi;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v4, v37

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    move-object/from16 v37, v4

    nop

    nop

    move-object/from16 v36, v5

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_2
    move-object/from16 v4, v37

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    move-object/from16 p1, v2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p2, v3

    nop

    nop

    move-object v4, v15

    nop

    nop

    nop

    sget-object v1, Lhtd;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    invoke-interface {v1, v3, v2}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    const/16 v2, 0x4b6

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    const-string v2, "getTransformBetweenTimestamps called with a null eisNativeWrapper"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    move/from16 v1, v35

    nop

    nop

    nop

    :goto_14
    iget v2, v0, Lhtd;->v:I

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_4

    nop

    nop

    nop

    invoke-static {}, Lqhi;->d()Lqhi;

    move-result-object v2

    nop

    nop

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    :cond_4
    :goto_15
    move-object/from16 v0, p1

    nop

    invoke-virtual {v0, v4}, Lsuu;->e(Ljava/lang/Object;)Z

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    move-object/from16 p2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    move-object/from16 p1, v2

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

    :goto_19
    invoke-direct {v0, v5}, Lhtd;->33f5b80483094659737b73d90f80a8a4m(Llsc;)Lhte;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Lhtd;->v:I

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

    :goto_1b
    invoke-direct {v0, v2, v3}, Lhtd;->33b3102b6558811a7b7629a1e8e59bd2m(J)V

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    invoke-direct/range {p0 .. p1}, Lhtd;->33f5b80483094659737b73d90f80a8a4m(Llsc;)Lhte;

    move-result-object v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    :goto_20
    const-wide v2, 0x7fffffffffffffffL

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    :goto_22
    const-string v3, "processGyroSamples(MAX)"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, v0, Lhtd;->s:Ljava/lang/Object;

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
.end method

.method public final b(Llsc;Llsc;)Lsuu;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_1
    monitor-exit v1

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lhtd;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lhtd;->a(Llsc;Llsc;)Lsuu;

    move-result-object p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lsuu;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {}, Lqhi;->d()Lqhi;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    iget v2, p0, Lhtd;->v:I

    nop

    nop

    nop

    if-ne p2, v2, :cond_1

    nop

    nop

    nop

    iget p0, p0, Lhtd;->v:I

    nop

    nop

    div-int/lit8 p0, p0, 0x2

    nop

    nop

    nop

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lqhi;

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    nop

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lqhi;

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(J)V
    .locals 13

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lhtd;->k:Lpdf;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gez p1, :cond_0

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

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

    :goto_3
    const-wide/16 v1, -0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v7, p1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_6
    const-string v9, "Gyro is dead at %d"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-long/2addr v7, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_20

    nop

    :goto_f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_11
    move v0, v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v7, v1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_17
    const/16 v5, 0x4b8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_18
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v8, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v8, v10, v11, v12}, Lscz;->u(Ljava/lang/String;J)V

    :goto_1b
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Libn;->b()Llsc;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v7, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p1

    nop

    :goto_20
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p2, v2, v5}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_23
    move v7, v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    add-long/2addr v0, v5

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

    :goto_27
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v0, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_2d
    move p1, v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_24

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_30
    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_31
    check-cast v7, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p2, Lscz;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_33
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_35
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v8, Lhtd;->a:Lsdb;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_38
    iput-wide p1, p0, Lhtd;->z:J

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    iget-wide v3, v0, Llsc;->c:J

    nop

    nop

    :goto_3a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

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

    :goto_3c
    iget-object v9, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3d
    if-gez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_16

    nop

    nop

    :goto_3f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v9, 0x4b9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_45
    const-wide/32 v5, 0x3b9aca00

    nop

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

    nop

    :goto_46
    iget-object p0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p0, p1, p2}, Lhtd;->33b3102b6558811a7b7629a1e8e59bd2m(J)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4a
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4b
    iget-wide v0, p0, Lhtd;->z:J

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v0, p0, Lhtd;->x:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4f
    goto :goto_56

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_50
    add-long/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_52
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_7
    goto/32 :goto_9

    nop

    :goto_53
    add-long/2addr v5, v3

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v7, v2, v8}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p2, v5}, Lpdf;->f(Ljava/lang/String;)V

    :goto_56
    :try_start_0
    iget-object p2, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    if-le p2, v2, :cond_6

    nop

    iget-object p2, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    iget-object p2, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    cmp-long p2, v8, v5

    nop

    nop

    nop

    nop

    nop

    if-ltz p2, :cond_6

    nop

    :cond_8
    iget-object p2, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    nop

    nop

    nop

    if-nez v7, :cond_9

    nop

    nop

    cmp-long p2, v8, v5

    nop

    nop

    nop

    nop

    nop

    if-ltz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    :cond_9
    if-nez p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    cmp-long p2, v3, v5

    nop

    nop

    nop

    if-ltz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    :cond_a
    iget-object p2, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    iget-object p2, p0, Lhtd;->e:Libn;

    nop

    nop

    nop

    invoke-virtual {p2, v5, v6}, Libn;->a(J)Llsc;

    move-result-object p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_b

    nop

    nop

    invoke-direct {p0, p2}, Lhtd;->b1051a9d8893542362ad09051775f8f6m(Llsc;)V

    iput-object p2, p0, Lhtd;->y:Llsc;

    nop

    nop

    nop

    nop

    goto/16 :goto_56

    nop

    nop

    nop

    :cond_b
    sget-object p2, Lhtd;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-interface {p2, v2, v8}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const/16 v8, 0x4bb

    nop

    nop

    nop

    invoke-interface {p2, v8}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    const-string v8, "No metadata for frame %d"

    nop

    nop

    nop

    invoke-interface {p2, v8, v5, v6}, Lscz;->u(Ljava/lang/String;J)V

    invoke-direct {p0, v5, v6}, Lhtd;->da190e616797844b591057d0190e7728m(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Lhtd;->e:Libn;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_58
    check-cast v8, Lscz;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_59
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    goto/32 :goto_5

    nop

    nop

    :goto_5c
    const-string v5, "processFrame"

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_c

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5e
    move p1, v2

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

    :goto_5f
    invoke-interface {v8, v9}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {p2, v5}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v10, "OIS is dead at %d"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {p2, v5, v3, v4}, Lscz;->u(Ljava/lang/String;J)V

    :goto_63
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v7, :cond_d

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v7, Lscz;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v8, 0x4ba

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_68
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

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

    :goto_69
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6a
    sget-object p2, Lhtd;->a:Lsdb;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v7, v9, v10, v11}, Lscz;->u(Ljava/lang/String;J)V

    :goto_6c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v8, v2, v9}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    cmp-long v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6f
    if-gez v7, :cond_e

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_70
    iget-object v8, p0, Lhtd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

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

    nop

    :goto_71
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_73
    cmp-long p1, p1, v5

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

    :goto_74
    sget-object v7, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

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

    nop

    :goto_76
    const-string v5, "Camera metadata is dead at %d"

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop
.end method

.method public final f(JFFLjava/lang/String;)V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lhtd;->E:Loeq;

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    move v3, p3

    nop

    nop

    move v4, p4

    nop

    nop

    nop

    move-wide v5, p1

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Loeq;->k(FFJI)V

    goto/16 :goto_2

    nop

    nop

    nop

    :cond_0
    iget-object p5, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5}, Ljava/util/Deque;->isEmpty()Z

    move-result p5

    nop

    if-nez p5, :cond_2

    nop

    iget-object p5, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    invoke-interface {p5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    check-cast p5, Lhtc;

    nop

    iget-wide v1, p5, Lhtc;->a:J

    nop

    nop

    sub-long/2addr v1, p1

    nop

    nop

    nop

    nop

    const-wide/32 v3, 0x1dcd6500

    nop

    nop

    cmp-long p5, v1, v3

    nop

    nop

    if-gez p5, :cond_1

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :cond_1
    sget-object p3, Lhtd;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lscs;->c()Lsdo;

    move-result-object p3

    nop

    nop

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const/4 p5, 0x1

    nop

    nop

    invoke-interface {p3, p5, p4}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    check-cast p3, Lscz;

    nop

    nop

    nop

    const/16 p4, 0x4c5

    nop

    nop

    nop

    nop

    invoke-interface {p3, p4}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    check-cast p3, Lscz;

    nop

    nop

    nop

    nop

    const-string p4, "Dropping lens offset at %d; should we be listening to this?"

    nop

    invoke-interface {p3, p4, p1, p2}, Lscz;->u(Ljava/lang/String;J)V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_1
    iget-object p5, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    new-instance v1, Lhtc;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, p2, p3, p4}, Lhtc;-><init>(JFF)V

    invoke-interface {p5, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_2
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {v1, p5}, Lmhz;->l(Ljava/lang/String;)I

    move-result v7

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhtd;->i:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhtd;->F:Lmhz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhtd;->s:Ljava/lang/Object;

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
.end method

.method public final declared-synchronized g()V
    .locals 14

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_2
    iget-object v0, p0, Lhtd;->s:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v1, p0, Lhtd;->o:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    iget v1, p0, Lhtd;->p:I

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhtd;->q:Ljava/lang/String;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lmhz;->m()Liyk;

    move-result-object v3

    nop

    iget-object v1, p0, Lhtd;->b:Lpck;

    nop

    nop

    iget v4, v1, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    iget v5, v1, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, p0, Lhtd;->d:Z

    nop

    nop

    nop

    iget-object v1, p0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    iget-boolean v2, p0, Lhtd;->o:Z

    nop

    invoke-virtual {v1, v2}, Lmhz;->n(Z)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    iget v8, p0, Lhtd;->p:I

    nop

    nop

    nop

    iget-object v9, p0, Lhtd;->q:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v1, Loeq;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    nop

    nop

    invoke-direct/range {v2 .. v9}, Loeq;-><init>(Liyk;IIZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    invoke-virtual {v1}, Lmhz;->m()Liyk;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhtd;->b:Lpck;

    nop

    nop

    nop

    iget v4, v1, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    iget v5, v1, Lpck;->b:I

    nop

    nop

    nop

    iget-boolean v6, p0, Lhtd;->d:Z

    nop

    nop

    nop

    iget-object v1, p0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    iget-boolean v2, p0, Lhtd;->o:Z

    nop

    invoke-virtual {v1, v2}, Lmhz;->n(Z)Ljava/lang/String;

    move-result-object v7

    nop

    new-instance v1, Loeq;

    nop

    nop

    move-object v2, v1

    nop

    nop

    invoke-direct/range {v2 .. v7}, Loeq;-><init>(Liyk;IIZLjava/lang/String;)V

    :goto_4
    iget-boolean v2, p0, Lhtd;->t:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    iget-object v2, p0, Lhtd;->F:Lmhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lmhz;->m()Liyk;

    :cond_2
    iput-object v1, p0, Lhtd;->E:Loeq;

    nop

    nop

    nop

    invoke-virtual {v1}, Loeq;->e()I

    move-result v2

    nop

    nop

    iput v2, p0, Lhtd;->v:I

    nop

    nop

    invoke-virtual {v1}, Loeq;->l()V

    iget-object v2, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    iget-object v2, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lhtc;

    nop

    nop

    iget-wide v2, v2, Lhtc;->a:J

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lhtc;

    nop

    nop

    iget-wide v4, v4, Lhtc;->a:J

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    iget-object v4, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    :cond_3
    :goto_5
    iget-object v2, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, p0, Lhtd;->t:Z

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lhtc;

    nop

    nop

    nop

    iget-wide v2, v2, Lhtc;->a:J

    nop

    nop

    nop

    iget-object v4, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lhtc;

    nop

    nop

    nop

    nop

    iget-wide v4, v4, Lhtc;->a:J

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    :cond_4
    iget-object v2, p0, Lhtd;->u:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lhtc;

    nop

    iget v9, v2, Lhtc;->b:F

    nop

    iget v10, v2, Lhtc;->c:F

    nop

    nop

    nop

    iget-wide v11, v2, Lhtc;->a:J

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v8, v1

    nop

    nop

    nop

    invoke-virtual/range {v8 .. v13}, Loeq;->k(FFJI)V

    iget-boolean v3, p0, Lhtd;->t:Z

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    iget-wide v4, v2, Lhtc;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/16 :goto_5

    nop

    nop

    nop

    :cond_5
    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lhtd;->j:Lppe;

    nop

    nop

    const-string v1, "mv-eis"

    nop

    invoke-interface {v0, v1}, Lppe;->a(Ljava/lang/String;)Lppd;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lhtd;->w:Lppd;

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lhtd;->x:Z

    nop

    nop

    nop

    iget-object v0, p0, Lhtd;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lhtd;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lhtd;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    const-string v1, "EisFrameFeeder#stop"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    nop

    const-string v1, "flushFrames"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhtd;->e:Libn;

    nop

    nop

    nop

    iget-object v2, p0, Lhtd;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    invoke-virtual {v0, v1, v2}, Libn;->a(J)Llsc;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhtd;->y:Llsc;

    nop

    nop

    nop

    :cond_1
    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lhtd;->y:Llsc;

    nop

    :cond_2
    if-eqz v0, :cond_0

    nop

    nop

    invoke-direct {p0, v0}, Lhtd;->b1051a9d8893542362ad09051775f8f6m(Llsc;)V

    goto :goto_1

    nop

    nop

    :cond_3
    iget-object v0, p0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2, v3}, Lhtd;->da190e616797844b591057d0190e7728m(J)V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lhtd;->r:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    iget-object v0, p0, Lhtd;->w:Lppd;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    if-eqz v0, :cond_5

    nop

    nop

    iget-object v0, p0, Lhtd;->w:Lppd;

    nop

    nop

    nop

    invoke-interface {v0}, Lppd;->close()V

    iput-object v2, p0, Lhtd;->w:Lppd;

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Lhtd;->s:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lhtd;->E:Loeq;

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    invoke-virtual {v3}, Loeq;->f()V

    iput-object v2, p0, Lhtd;->E:Loeq;

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v2, Lhtd;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0x4c3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "stop called with a null eisNativeWrapper"

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_3
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v1, p0, Lhtd;->x:Z

    nop

    nop

    iget-object v0, p0, Lhtd;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lhtd;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lhtd;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lhtd;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_5

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lhtd;->x:Z

    nop

    goto/32 :goto_1

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

.method public final declared-synchronized j(Ljxm;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhtd;->g:Ljava/util/Set;

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized k(Ljxm;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhtd;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
