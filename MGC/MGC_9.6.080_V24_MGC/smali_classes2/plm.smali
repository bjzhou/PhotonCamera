.class public final Lplm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpjv;


# instance fields
.field public final a:Lpdf;

.field public final b:Lpcu;

.field public final c:Lrss;

.field final d:Ljava/util/Map;

.field public e:Z

.field public final f:Lpkm;

.field private final g:Lpld;

.field private final h:Lpln;

.field private final i:Landroid/os/Handler;

.field private j:J

.field private k:J

.field private l:Ljava/util/Set;

.field private m:Lprj;

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final o:Lnar;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Lpjz;Lrzb;Ljava/util/Map;Z)Lprj;
    .locals 9

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v3, Lpmm;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_0
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lplm;->ccb4c19b7dbd16be9d2a43125797659dm()Ljava/lang/Long;

    move-result-object v2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1f

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_9
    const/4 p4, 0x6

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

    :goto_a
    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iget-object v3, v1, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    invoke-direct {p3, p1, p2, p4}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Lpjz;->a:I

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

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, p1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_16
    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v4, v3}, Lpic;->q(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    check-cast v4, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lplm;->a:Lpdf;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v3}, Lpln;->f(Landroid/view/Surface;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_21
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Lplm;->h:Lpln;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p1, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

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

    :goto_26
    const-string v2, ".  The surface is not yet available."

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

    :goto_27
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_29
    move-object p3, p4

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p3, v3, v4}, Lpgl;->b(Ljava/util/Collection;Lpdf;Ljava/lang/String;)Lpuq;

    move-result-object p3

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

    :goto_2e
    const v0, 0x1a

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
    invoke-virtual {v3}, Lpmm;->h()Landroid/view/Surface;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v2, ") was not valid."

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_31
    new-instance p4, Lphg;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_8a

    nop

    nop

    :goto_33
    goto/32 :goto_67

    nop

    nop

    :goto_34
    const-string v5, " to CaptureRequest for "

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

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_36
    const-string p3, "("

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_37
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_54

    nop

    nop

    :goto_39
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_4

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

    :cond_4
    :try_start_0
    iget-object v1, p0, Lplm;->g:Lpld;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lpld;->f(Lpjz;)Lpic;

    move-result-object v1

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p2, v2, p3}, Lrzb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_3c
    new-instance p3, Lpho;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5d

    nop

    nop

    :goto_3e
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_83

    nop

    nop

    :goto_3f
    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_41
    iget-object v3, v3, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_42
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    :goto_43
    const-string v2, ". The surface ("

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_44
    iget-object v4, v3, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz p4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1}, Lpic;->p()Lprj;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_48
    new-instance p4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string p1, ")"

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_64

    nop

    :goto_4d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v5, Landroid/view/Surface;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_50
    if-nez v7, :cond_7

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_74

    nop

    nop

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v5, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, p1}, Lplm;->i(Lpjz;)V

    goto/32 :goto_f

    nop

    nop

    :goto_57
    iget-object v3, p0, Lplm;->b:Lpcu;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v0, "Failed to create a CaptureRequest using "

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

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

    :goto_5c
    invoke-interface {v3, v2}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p3, p1, Lpjz;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_77

    nop

    nop

    :goto_60
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_62
    if-nez v5, :cond_8

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

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_64
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_65
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5f

    nop

    :goto_66
    const-string v6, "Failed to add "

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_67
    iget-object p3, p1, Lpjz;->d:Ljava/util/Set;

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

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_69
    invoke-interface {p3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lplm;->i:Landroid/os/Handler;

    nop

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

    :goto_6c
    check-cast v4, Lphh;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_1f

    nop

    :goto_6e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    :goto_70
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {p4, p3}, Lphg;-><init>(Lpuq;)V

    goto/32 :goto_29

    nop

    nop

    :goto_72
    check-cast v2, Lphh;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v4, :cond_a

    nop

    goto/32 :goto_7c

    nop

    :cond_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v4, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_76
    return-object p0

    nop

    nop

    :goto_77
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v3, Lpha;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_79
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7a
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_7b
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

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

    :goto_7e
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v4, v2}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const-string v4, "CaptureRequestListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_83
    move-object v3, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v3, :cond_b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

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

    :goto_88
    iget-object p0, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_89
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    nop

    :goto_8a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v6, v1, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v3, :cond_c

    nop

    goto/32 :goto_7c

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public constructor <init>(Lpld;Lpln;Landroid/os/Handler;Lpdf;Lpcu;Lnar;Lrss;)V
    .locals 2

    goto/32 :goto_21

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
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    const-string p1, "SimpleReqProcessor"

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

    :goto_3
    iput-object p3, p0, Lplm;->i:Landroid/os/Handler;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p0, Lplm;->j:J

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

    :goto_5
    iput-object p1, p0, Lplm;->b:Lpcu;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p5}, Lpkm;-><init>(Lpcu;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lplm;->c:Lrss;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p6, p0, Lplm;->o:Lnar;

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

    :goto_d
    iput-object p1, p0, Lplm;->f:Lpkm;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iput-object p1, p0, Lplm;->g:Lpld;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lplm;->h:Lpln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object v0, p0, Lplm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    new-instance p1, Lpkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lplm;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    iput-wide v0, p0, Lplm;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x9

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

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v0, 0x0

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

    :goto_1e
    iput-object p4, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    invoke-interface {p5, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(Ljava/util/List;Lpll;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpho;

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

    :goto_1
    const-string v0, "Burst Capture failed: "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    iget-object v1, p0, Lplm;->b:Lpcu;

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

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lplm;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-interface {v1, v0}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

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

    :goto_10
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_11
    invoke-direct {v0, p1, p2, v1, v2}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    const/4 v1, 0x5

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
.end method

.method private final declared-synchronized b1051a9d8893542362ad09051775f8f6m(Ljava/util/List;Lpll;Z)I
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

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
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return p3

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p3

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

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lplm;->o:Lnar;

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lnar;->A(IZ)V

    iget-object v0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "captureSession#captureBurst"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lplm;->g:Lpld;

    nop

    nop

    iget-object v1, p0, Lplm;->i:Landroid/os/Handler;

    nop

    nop

    invoke-interface {v0, p1, p2, v1, p3}, Lpld;->d(Ljava/util/List;Lpll;Landroid/os/Handler;Z)I

    move-result p3

    nop

    nop

    nop
    :try_end_1
    .catch Lprg; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    if-gez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lplm;->a74c8a79bf0ef0e20983317119c87838m(Ljava/util/List;Lpll;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    :catch_0
    move-exception p3

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    const-string v1, "Failed to submit repeating "

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p3}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lpfi;

    nop

    invoke-direct {v0, p3}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    :try_start_4
    iget-object v0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    invoke-direct {p0, p1, p2}, Lplm;->a74c8a79bf0ef0e20983317119c87838m(Ljava/util/List;Lpll;)V

    throw p3

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    throw p1

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

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
.end method

.method private final declared-synchronized ccb4c19b7dbd16be9d2a43125797659dm()Ljava/lang/Long;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

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
    iget-wide v0, p0, Lplm;->k:J

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    add-long/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lplm;->k:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

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

    :goto_8
    const v0, 0x4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static h(Lprj;)Ljava/lang/Long;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

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

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Long;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lprj;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static final l(Lpjz;Lpll;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lpll;->b:Ljava/util/Map;

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

    :goto_4
    if-gt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lplm;->q(Lpjz;)Z

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private static final q(Lpjz;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpjz;->a:I

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

    :goto_1
    const/4 p0, 0x1

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

    :goto_2
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_5

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
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 11

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v4, v7}, Lplm;->j(Lprj;Lpll;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Lprj;

    nop

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

    nop

    :goto_5
    invoke-virtual {p0, v3, v6}, Lplm;->j(Lprj;Lpll;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v1, p0, Lplm;->e:Z

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

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

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2b

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "captureSession#abortCaptures"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Lryy;->em()Lscp;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lplm;->a:Lpdf;

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

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    :catchall_2
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_3
    iput-boolean v0, p0, Lplm;->e:Z

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    invoke-static {v0}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lplm;->g:Lpld;

    nop

    invoke-interface {v2}, Lpld;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_37

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    check-cast v4, Lprj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v8, v5}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lplm;->a:Lpdf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lryh;->t()Lryy;

    move-result-object v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lpka;->g:Ltlk;

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    goto/32 :goto_38

    nop

    nop

    :goto_21
    const v1, 0x7

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

    :goto_22
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v7, v4}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    invoke-static {v4, v5, v8, v9}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

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

    :goto_28
    invoke-static {v3}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object v4

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

    :goto_29
    check-cast v0, Lpka;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    throw v0

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lryh;->t()Lryy;

    move-result-object v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v9, " by invoking onCaptureFailed"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    monitor-enter p0

    nop

    nop

    nop

    :try_start_5
    iput-boolean v1, p0, Lplm;->e:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v2}, Ltlk;->f([Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    throw v2

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    :try_start_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v7, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v5, v6, v9, v10}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v7, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v9, "Aborting "

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_37
    goto/32 :goto_2c

    nop

    :goto_38
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v4}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    check-cast v6, Lpll;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    new-array v2, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v8, p0, Lplm;->b:Lpcu;

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

    :goto_3d
    invoke-virtual {v2}, Lryy;->em()Lscp;

    move-result-object v2

    nop

    :goto_3e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lplm;->o:Lnar;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v10, " by invoking onCaptureFailed"

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

    :goto_41
    const-string v8, "Aborting "

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_42
    invoke-virtual {v0, v4}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    check-cast v7, Lpll;

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

    nop

    :goto_44
    goto :goto_3e

    nop

    :goto_45
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpjz;)V
    .locals 9

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v0, 0xe

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

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Lpfi;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object v1, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    :goto_10
    goto :goto_11

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2, v2}, Lnar;->A(IZ)V

    :try_start_3
    new-instance v1, Lrzb;

    nop

    nop

    nop

    nop

    sget-object v3, Lsav;->a:Lsav;

    nop

    nop

    invoke-direct {v1, v3}, Lrzb;-><init>(Ljava/util/Comparator;)V

    new-instance v3, Landroid/util/ArrayMap;

    nop

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, p1, v1, v3, v2}, Lplm;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpjz;Lrzb;Ljava/util/Map;Z)Lprj;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    monitor-enter p0

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lplm;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iget-object v6, p1, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    if-nez v5, :cond_2

    nop

    iget-object v5, p0, Lplm;->b:Lpcu;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, p1, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    nop

    nop

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {v5, v0}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    iput-object v0, p0, Lplm;->l:Ljava/util/Set;

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v0, Lpll;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrzb;->a()Lrzd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lplm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {v0, p0, v1, v3}, Lpll;-><init>(Lplm;Lrzd;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lplm;->l(Lpjz;Lpll;)Z

    move-result p1

    nop

    invoke-virtual {p0, v4, v0, v2, p1}, Lplm;->f(Lprj;Lpll;ZZ)I

    move-result p1

    nop

    iget-object v1, p0, Lplm;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    new-instance v2, Lkwi;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xe

    nop

    nop

    invoke-direct {v2, v0, p1, v3}, Lkwi;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "SimpleRequestProcessor#setRepeating"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "Submit repeating "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lplm;->o:Lnar;

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
.end method

.method public final c()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lplm;->g:Lpld;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpld;->b()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lpfi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpjz;)V
    .locals 9

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v2, "Failed to submit "

    nop

    nop

    nop

    invoke-static {p1, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-interface {v1, p1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "SimpleRequestProcessor#submit"

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

    :goto_7
    return-void

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v0

    nop

    nop

    :cond_1
    new-instance v0, Lpfi;

    nop

    nop

    nop

    nop

    const-string v1, "Request has input image but InputImageProcessor is unavailable."

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lpfi;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_2
    new-instance v1, Lrzb;

    nop

    nop

    nop

    nop

    sget-object v2, Lsav;->a:Lsav;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lrzb;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Landroid/util/ArrayMap;

    nop

    nop

    nop

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {p0, p1, v1, v2, v3}, Lplm;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpjz;Lrzb;Ljava/util/Map;Z)Lprj;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, p1, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lpcu;->f(Ljava/lang/String;)V

    new-instance v0, Lpll;

    nop

    nop

    invoke-virtual {v1}, Lrzb;->a()Lrzd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lplm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {v0, p0, v1, v2}, Lpll;-><init>(Lplm;Lrzd;Ljava/util/Map;)V

    iget-object v1, p1, Lpjz;->e:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Lplm;->l(Lpjz;Lpll;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4, v0, v3, v1}, Lplm;->f(Lprj;Lpll;ZZ)I

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v2, p0, Lplm;->c:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpgx;

    nop

    nop

    nop

    iget-object v1, v1, Lpgx;->a:Lprw;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    const-string v3, "The request contains an input image "

    nop

    nop

    nop

    invoke-static {v1, v3}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v2, Lplk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p1, v4, v0}, Lplk;-><init>(Lplm;Lpjz;Lprj;Lpll;)V

    invoke-interface {v1, v2}, Lprw;->h(Lprs;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    check-cast v1, Lpol;

    nop

    nop

    invoke-virtual {v1}, Lpol;->l()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
    const-string v0, "Submit "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_f

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    :try_start_5
    check-cast v1, Lpol;

    nop

    nop

    invoke-virtual {v1}, Lpol;->l()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/util/List;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

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

    :goto_4
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lrzb;

    nop

    nop

    nop

    sget-object v1, Lsav;->a:Lsav;

    nop

    nop

    invoke-direct {v0, v1}, Lrzb;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Landroid/util/ArrayMap;

    nop

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :cond_0
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lpjz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v4, v0, v1, v5}, Lplm;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpjz;Lrzb;Ljava/util/Map;Z)Lprj;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_6

    nop

    iget-object v3, p0, Lplm;->b:Lpcu;

    nop

    nop

    const-string v4, "Submit burst of "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v4}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v3, v4}, Lpcu;->f(Ljava/lang/String;)V

    new-instance v3, Lpll;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrzb;->a()Lrzd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lplm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {v3, p0, v0, v1}, Lpll;-><init>(Lplm;Lrzd;Ljava/util/Map;)V

    iget-object v0, v3, Lpll;->b:Ljava/util/Map;

    nop

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    const/4 v1, 0x1

    nop

    nop

    if-gt v0, v1, :cond_2

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_2
    move v0, v5

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-ge v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lpjz;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lplm;->q(Lpjz;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    move v5, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_4
    :goto_7
    invoke-direct {p0, v2, v3, v5}, Lplm;->b1051a9d8893542362ad09051775f8f6m(Ljava/util/List;Lpll;Z)I

    move-result v0

    nop

    invoke-virtual {v3, v0}, Lpll;->a(I)V

    monitor-enter p0

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_5

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lprj;

    nop

    iget-object v2, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    nop

    nop

    :cond_5
    monitor-exit p0

    nop

    goto :goto_9

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lplm;->b:Lpcu;

    nop

    const-string v2, "Failed to submit burst "

    nop

    invoke-static {p1, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-interface {v1, p1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lplm;->a:Lpdf;

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

    :goto_f
    iget-object v0, p0, Lplm;->a:Lpdf;

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

    nop

    :goto_10
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    :goto_15
    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "SimpleRequestProcessor#submit-burst"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop
.end method

.method public final declared-synchronized f(Lprj;Lpll;ZZ)I
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return v2

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

    :try_start_1
    throw v0

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    new-instance v1, Lpfi;

    nop

    invoke-direct {v1, v0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    iget-object v1, p0, Lplm;->a:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    if-gez v2, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture failed: isRepeating="

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isRecording="

    nop

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", request="

    nop

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with invalid sequenceId "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    invoke-interface {v1, p3}, Lpcu;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lplm;->j(Lprj;Lpll;)V

    :cond_0
    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    :try_start_4
    iget-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lplm;->m:Lprj;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lplm;->m:Lprj;

    nop

    nop

    :goto_4
    iget-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    if-gez v2, :cond_2

    nop

    nop

    iget-object v0, p0, Lplm;->b:Lpcu;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isRecording="

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", request="

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with invalid sequenceId "

    nop

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    invoke-interface {v0, p3}, Lpcu;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lplm;->j(Lprj;Lpll;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v0, 0x8

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

    nop

    :goto_9
    const-string v1, "Capture failed: isRepeating="

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    if-nez p3, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_6
    iget-object v3, p0, Lplm;->o:Lnar;

    nop

    nop

    invoke-virtual {v3, v2, v2}, Lnar;->A(IZ)V

    iget-object v2, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    const-string v3, "captureSession#setRepeatingRequest"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lplm;->o:Lnar;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2, v4}, Lnar;->A(IZ)V

    iget-object v2, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    const-string v3, "captureSession#capture"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    :goto_f
    monitor-enter p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "idx="

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

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, -0x1

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

    :goto_18
    if-nez p3, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_7
    iget-object v3, p0, Lplm;->g:Lpld;

    nop

    iget-object v4, p0, Lplm;->i:Landroid/os/Handler;

    nop

    invoke-interface {v3, p1, p2, v4, p4}, Lpld;->e(Lprj;Lpll;Landroid/os/Handler;Z)I

    move-result v2

    nop

    iget-object v3, p0, Lplm;->f:Lpkm;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lpkm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    nop

    nop

    nop

    iget-object v5, v3, Lpkm;->c:Ljava/lang/Float;

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    invoke-interface {p1, v6}, Lprj;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Float;

    nop

    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    if-eqz v5, :cond_7

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    nop

    sub-float/2addr v6, v5

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    const v6, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    nop

    cmpl-float v5, v5, v6

    nop

    nop

    if-lez v5, :cond_8

    nop

    nop

    nop

    :cond_7
    :goto_19
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-interface {p1, v5}, Lprj;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Float;

    nop

    iput-object v5, v3, Lpkm;->c:Ljava/lang/Float;

    nop

    nop

    iget-object v5, v3, Lpkm;->a:Lpcu;

    nop

    nop

    nop

    iget-object v3, v3, Lpkm;->c:Ljava/lang/Float;

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", zoom_ratio="

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_1b

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lplm;->g:Lpld;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lplm;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, p2, v3, p4}, Lpld;->c(Lprj;Lpll;Landroid/os/Handler;Z)I

    move-result v0

    nop

    nop

    move v2, v0

    nop

    nop

    nop

    :cond_8
    :goto_1b
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()J
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lplm;->j:J

    nop

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    nop

    nop

    add-long/2addr v2, v0

    nop

    nop

    nop

    iput-wide v2, p0, Lplm;->j:J

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    throw v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop
.end method

.method public final i(Lpjz;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, v2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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
    const-string v1, "Failed to submit a CaptureRequest for "

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

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    invoke-interface {v0, v1}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_5
    const v1, 0x1c

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, ": There were no surfaces on the request."

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-object v0, p0, Lplm;->b:Lpcu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lplm;->i:Landroid/os/Handler;

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

    :goto_10
    invoke-static {p1, p0}, Lpuq;->bt(Lpjz;Landroid/os/Handler;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final j(Lprj;Lpll;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, p2, p1, v1}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v0, 0x17

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    iget-object p0, p0, Lplm;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    new-instance v0, Lpho;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(J)V
    .locals 4

    goto/32 :goto_8

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lprj;

    nop

    nop

    invoke-static {v1}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    cmp-long v2, v2, p1

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lplm;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lplm;->b:Lpcu;

    nop

    nop

    const-string v1, "removeInflightRequest "

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, v1}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lpcu;->b(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    nop

    nop

    nop

    return-void

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

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
