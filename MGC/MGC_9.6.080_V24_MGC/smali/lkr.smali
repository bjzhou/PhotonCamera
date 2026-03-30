.class public Llkr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llld;
.implements Ljpv;
.implements Ljoz;
.implements Ljoy;


# static fields
.field public static final a:Lsdb;

.field private static final i:Lryh;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Z

.field public final d:Ltxm;

.field public final e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

.field public f:Z

.field public final g:Ljava/util/concurrent/locks/ReentrantLock;

.field public final h:Lhoh;

.field private final j:Lpdf;

.field private final k:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Llkr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v1, 0x7

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

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_5
    invoke-static {v0}, Lryh;->l(Ljava/lang/Iterable;)Lryh;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    const-string v3, "3F960EFFF9FC2CDF78E67B6CCC3EBA29"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x9

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0xc

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

    :goto_a
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    :goto_c
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v3, "C9DDF79CBA8F9E7801CF492760C8BB40"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_13
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    const-string v2, "face_light_256_256-P23-custom_op.tflite"

    nop

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

    :goto_15
    const-string v3, "A67E567502B263D1E6918F323601CB1C"

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

    :goto_16
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    const-string v2, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P21-custom_op.tflite"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x4

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v2, "facemesh-full-P22-custom_op.tflite"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    const-string v2, "facemesh-full-P23-custom_op.tflite"

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P23-custom_op.tflite"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_20
    sput-object v0, Llkr;->i:Lryh;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P21-custom_op.tflite"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_22
    const-string v2, "face_light_256_256-P21-custom_op.tflite"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    aput-object v1, v0, v2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    new-array v0, v0, [Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    :goto_29
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    :goto_34
    const-string v3, "AD6B39D065BAA50CBCB7C653475026C9"

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

    nop

    nop

    :goto_35
    const-string v2, "face_light_256_256-P22-custom_op.tflite"

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_36
    const-string v3, "A891DF2BC3F5F99941681615A5B730CA"

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

    :goto_37
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v2, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P23-custom_op.tflite"

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

    nop

    :goto_39
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_49

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3c
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3e
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    :goto_3f
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_40
    const-string v2, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P22-custom_op.tflite"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_41
    const-string v3, "411964205B9443CC789BFB38114EBA8E"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_42
    const-string v3, "1C82F3E862DF5445241304BB73CEF678"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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

    :goto_44
    const-string v3, "6E94AF81E6B3A3559AEA3264C08B44C8"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_45
    const-string v2, "facemesh-full-P21-custom_op.tflite"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_46
    const-string v3, "F099417EC82DF3EB41A7587090831E85"

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_47
    const-string v3, "F396FA80313C1E513F60AD010E1F5532"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_48
    const-string v3, "71047F4A027EBFAFF158DEC586038D04"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x1

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

    :goto_4a
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x3

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

    :goto_4e
    aput-object v1, v0, v2

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

    :goto_4f
    const-string v0, "lkr"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_52
    const/4 v2, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_53
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_54
    const-string v3, "927636C05786D1C56F64F2350CD63849"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_55
    aput-object v1, v0, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_56
    aput-object v1, v0, v2

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

    nop

    :goto_57
    const-string v2, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P22-custom_op.tflite"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_58
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v2, 0x2

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
.end method

.method public constructor <init>(Lpdf;Landroid/content/Context;Lhoh;Ltxm;Ljava/util/concurrent/Executor;Z)V
    .locals 1

    goto/32 :goto_c

    nop

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

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_2
    iput-object p2, p0, Llkr;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Llkr;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_6
    iput-object p1, p0, Llkr;->e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Llkr;->h:Lhoh;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p6, p0, Llkr;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Llkr;->d:Ltxm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Llkr;->j:Lpdf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    iput-object p5, p0, Llkr;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()J
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-object p0, p0, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_7
    return-wide v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object p0, p0, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iget-object v0, p0, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Llkr;->e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->getPortraitRelightingProcessorHandle()J

    move-result-wide v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

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
    goto/32 :goto_9

    nop

    nop

    :goto_4
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

    :goto_5
    new-instance v0, Lldq;

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
    iget-object p0, p0, Llkr;->k:Ljava/util/concurrent/Executor;

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

    :goto_7
    const/4 v1, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, v1}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const v0, 0x1f

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
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    const v1, 0x1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0x7

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
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Llkr;->k:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lldq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, v1}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_d

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

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x6

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

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lldq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Llkr;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final e(Z)Z
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    :goto_6
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lhni;->D:Lhmn;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    :goto_9
    iget-object p1, p0, Llkr;->h:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

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

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Llkr;->a()J

    move-result-wide v0

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
    const v0, 0xa

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lhnk;->c:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    cmp-long p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    const/4 p0, 0x0

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

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Llkr;->h:Lhoh;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    invoke-interface {p3, v0}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xef9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    move-object v1, v2

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

    :goto_9
    iget-object p0, p0, Llkr;->j:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_a
    invoke-interface {p2, v2}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Llkr;->j:Lpdf;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const-string p2, "EE0F689D8C7579BC1A11DEE1D035717E"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Llkr;->j:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0xf01

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    const-string v1, "FireflyMgr#loadModelAsset"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2, v0}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    const-string p2, "MD5"

    nop

    nop

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lsig;->f:Lsig;

    nop

    nop

    nop

    invoke-virtual {v0, p3}, Lsig;->h(Ljava/lang/CharSequence;)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {p2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    sget-object v0, Llkr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xef8

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "Checksum is %s, expecting %s"

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lsig;->f:Lsig;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Lsig;->g([B)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p2, p3}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_16
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    new-array p1, v0, [B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    const-string v2, "Unable to load the asset: %s"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p3, v0, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p2}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Llkr;->j:Lpdf;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3}, Lscs;->b()Lsdo;

    move-result-object p3

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

    :goto_1e
    const-string v1, "Unable to decrypt bytes: %s"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "6B63910ECDC9F72F9B907AC6E8E6A53519A194834FB5417CFEB12AD4174286CC"

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v2, Lsig;->f:Lsig;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Lsig;->h(Ljava/lang/CharSequence;)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v2, Lsig;->f:Lsig;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Lsig;->h(Ljava/lang/CharSequence;)[B

    move-result-object p2

    nop

    nop

    nop

    nop

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    nop

    nop

    nop

    nop

    const-string v3, "AES"

    nop

    nop

    nop

    invoke-direct {p2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES_256/CBC/PKCS5Padding"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    invoke-virtual {v0, v3, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-array v1, v0, [B

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    new-array v2, p2, [B

    nop

    invoke-static {p1, v2, v0, p2}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v3

    nop

    nop

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    sget-object v4, Llkr;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    const/16 v5, 0xf05

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "There is more data. This is problematic"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eq v3, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Llkr;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 p2, 0xf04

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const-string p2, "Didn\'t finish reading the asset."

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p2, p0, Llkr;->j:Lpdf;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    check-cast p3, Lscz;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_31

    nop

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p2, "FireflyMgr#decrypt"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    const-string v0, "FireflyMgr#md5"

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

    :goto_2b
    invoke-interface {p2, v2, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    :goto_30
    return-object p1

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4

    nop

    nop

    :goto_32
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    sget-object p2, Llkr;->a:Lsdb;

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

    :goto_34
    sget-object v0, Llkr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_35
    iget-object v0, p0, Llkr;->j:Lpdf;

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

    :goto_36
    const/16 v2, 0xf02

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    const-string v0, "Failed to compute MD5 hash: %s"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p2}, Lpdf;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p3, Llkr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const-string p2, ".enc"

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

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "%s-%s-custom_op.tflite"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p3, "/"

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

    nop

    :goto_a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const-string v0, ""

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p2, v0}, Lryh;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_f
    const v1, 0xc

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Llkr;->i:Lryh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
