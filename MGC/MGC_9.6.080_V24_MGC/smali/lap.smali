.class public final Llap;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lice;

.field private final b:Lknm;

.field private final c:Loyn;

.field private d:Z

.field private final e:Lpik;


# direct methods
.method public constructor <init>(Lknm;Lfdn;Lpik;Lice;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p2, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p4, p0, Llap;->a:Lice;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Llap;->d:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    iput-object p1, p0, Llap;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Llap;->b:Lknm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Llap;->e:Lpik;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(Ljava/util/List;)V
    .locals 10

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_51

    nop

    nop

    :goto_4
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_8
    goto/16 :goto_27

    nop

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Lpik;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_b
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0x194

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d
    sget-object v1, Lnyo;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Llap;->e:Lpik;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v5, Lryb;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v4, Licl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4d

    nop

    nop

    :goto_15
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    nop

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, v4, Licl;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v5}, Lryb;->size()I

    move-result v5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

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

    :goto_20
    const/16 v5, 0x12

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_22
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    sget-object v0, Lnyo;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

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

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    iget v5, v4, Licl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_29
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_2a
    if-lt v7, v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2c
    iput-boolean v0, p0, Llap;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2d
    const/4 v5, 0x0

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
    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    goto/32 :goto_45

    nop

    nop

    :goto_30
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

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

    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v3, Ljava/util/List;

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

    :goto_34
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_36
    move v8, v7

    nop

    :goto_37
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Llap;->b:Lknm;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_39
    iget-boolean v0, p0, Llap;->d:Z

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    xor-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    rsub-int/lit8 v5, v5, 0x6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_40
    new-instance v4, Lgdm;

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

    :goto_41
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_43
    iget v5, v4, Licl;->a:I

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

    :goto_44
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v4, v4, Licl;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v5}, Lryb;->size()I

    move-result v5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_4a

    nop

    nop

    :goto_49
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4a
    iget-object v5, v4, Licl;->c:Lrss;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4b
    iget-object v5, v4, Licl;->c:Lrss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_23

    nop

    nop

    :goto_4f
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_37

    nop

    nop

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
    iget-object v5, v4, Licl;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v5, :cond_6

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

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, p1}, Lknm;->a(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v4, v5}, Lgdm;-><init>(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_59
    if-lt v8, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v5, Lryb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 12

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_69

    nop

    nop

    :goto_2
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7f

    nop

    :goto_3
    check-cast v6, Licl;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_38

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-float v9, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_a
    check-cast v7, Lryb;

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

    :goto_b
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Llap;->c:Loyn;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_12
    invoke-direct {v11, v9, v7, v6, v5}, Licl;-><init>(IFLrss;F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_25

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v5, v4

    nop

    nop

    :goto_17
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v5, v0, Lsvr;->b:Ljava/lang/Object;

    nop

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

    :goto_19
    new-instance p1, Lvl;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1e
    new-instance v11, Licl;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, v0}, Llap;->d116db4599d9ddc8c35e61366a4f4967m(Ljava/util/List;)V

    goto/32 :goto_37

    nop

    nop

    :goto_21
    goto/16 :goto_33

    nop

    :goto_22
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, p0, Llap;->a:Lice;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_61

    nop

    nop

    :goto_26
    invoke-direct {p1, v1}, Lvl;-><init>(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7d

    nop

    nop

    :goto_2b
    invoke-virtual {v7}, Lryb;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_2c
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v7, v5, Licd;->b:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Llap;->c:Loyn;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_33
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

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

    :goto_35
    if-nez v5, :cond_5

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-gtz v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_39
    aget-object v6, p1, v5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5}, Lryb;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3c
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3d
    check-cast v1, Landroid/graphics/Rect;

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

    :goto_3e
    const v0, 0x12

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_3f
    if-nez v5, :cond_8

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    if-nez v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_9
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_42
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, v11, Licl;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

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

    :goto_45
    long-to-int v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Lknm;->d()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_47
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p1, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lt v5, v2, :cond_a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    :goto_4a
    move v5, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4b
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

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

    :goto_4d
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

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

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_52
    invoke-direct {p0, p1}, Llap;->d116db4599d9ddc8c35e61366a4f4967m(Ljava/util/List;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_54
    if-gtz v9, :cond_c

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_c
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v3, Ljava/util/HashMap;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v5, Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    cmpl-float v7, v7, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v4, v0, v1}, Lice;->b(J)Lsvr;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_80

    nop

    nop

    :goto_5d
    invoke-interface {p1, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_5e
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v11, Licl;->c:Lrss;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_60
    array-length v1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_61
    invoke-static {v5}, La;->au(Z)V

    :goto_62
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_63
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_d
    goto/32 :goto_7b

    nop

    nop

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_65
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_66
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_67
    const/4 v1, 0x5

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v5, Licd;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_69
    if-nez v0, :cond_e

    nop

    goto/32 :goto_38

    nop

    :cond_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, v0, Lsvr;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6e
    if-nez v5, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_f
    goto/32 :goto_5f

    nop

    nop

    :goto_6f
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_72
    const/16 v1, 0x12

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

    :goto_73
    iget v5, v5, Licd;->d:F

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

    :goto_74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_75
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v7, :cond_10

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_77
    sget p1, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_78
    if-eq v5, v8, :cond_11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_79
    const/4 v4, 0x0

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

    :goto_7a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

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

    :goto_7b
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7d
    iget v7, v6, Licl;->b:F

    nop

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

    :goto_7e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_82
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v8, 0x4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_85
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_86
    iget-object v2, p0, Llap;->b:Lknm;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_87
    if-le p1, v1, :cond_12

    nop

    goto/32 :goto_8c

    nop

    :cond_12
    goto/32 :goto_8b

    nop

    nop

    :goto_88
    invoke-interface {v1, v3}, Loyn;->a(Ljava/lang/Object;)V

    :goto_89
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_8a
    iget-wide v9, v5, Licd;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_8b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_27

    nop

    nop

    :goto_8d
    if-eqz v1, :cond_13

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_8e
    if-ne v7, v8, :cond_14

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_14
    :goto_8f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v6, v5, Licd;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop
.end method
