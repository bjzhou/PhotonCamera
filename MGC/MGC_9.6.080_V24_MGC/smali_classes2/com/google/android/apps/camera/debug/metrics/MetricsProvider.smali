.class public Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;
.super Lpcz;
.source "PG"


# instance fields
.field public a:Lpic;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Lpcz;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/PrintWriter;)V
    .locals 17

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_0
    check-cast v4, Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    check-cast v4, Lpqr;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_3
    invoke-interface {v1, v0}, Lhqm;->d(Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;)V

    :goto_4
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_5
    aput v7, v11, v14

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_93

    nop

    nop

    :goto_7
    iget-object v6, v6, Lpqc;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Lnar;->x()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_a
    aput v14, v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v6, Lpqr;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_d
    aget-object v12, v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_e
    aget v7, v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput v13, v11, v9

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

    :goto_12
    array-length v9, v5

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v6, v7, :cond_1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Lnar;->x()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_16
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b7

    nop

    nop

    :goto_1a
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v12, v9, :cond_2

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget v7, v11, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_1f
    const-string v6, "  "

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    check-cast v1, Lhqm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v12, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_3
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object v4, v0

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_25
    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_27
    sub-long/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_28
    const-string v7, "%s"

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_29
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2a
    const-string v4, "\n"

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

    :goto_2b
    array-length v11, v8

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v8, v4, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v15, v15, Lpqb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    move v10, v7

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v3, Landroid/util/PrintWriterPrinter;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_31
    aput-object v15, v14, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_32
    aput v10, v14, v13

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    :goto_34
    iget-object v0, v0, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->a:Lpic;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_37
    array-length v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_39
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v6, 0x0

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_3b
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_3d
    aget-object v14, v5, v12

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_58

    nop

    nop

    :goto_3f
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_40
    aput v12, v14, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_41
    iget-object v4, v4, Lpqn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_43
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_0
    check-cast v0, Lpqn;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpqn;->b:Lpqm;

    nop

    nop

    iget-object v0, v0, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v5, Lpic;

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    invoke-direct {v5, v6, v6}, Lpic;-><init>([B[C)V

    check-cast v0, Lpic;

    nop

    iget-object v0, v0, Lpic;->a:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_7

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    iget-object v8, v5, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lnar;

    nop

    new-instance v10, Lnar;

    nop

    nop

    nop

    iget-object v11, v7, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v11, Ltlk;

    nop

    nop

    nop

    invoke-direct {v10, v11}, Lnar;-><init>(Ltlk;)V

    iget-object v7, v7, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    if-eqz v11, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    check-cast v11, Ljava/util/Map$Entry;

    nop

    nop

    iget-object v12, v10, Lnar;->a:Ljava/lang/Object;

    nop

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Lpqc;

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Lpqr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lpqr;->a()Lpqr;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-virtual {v12, v13, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_87

    nop

    nop

    :goto_46
    const-class v10, Ljava/lang/String;

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

    :goto_47
    const-string v7, "s:%"

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_48
    aget-object v8, v10, v8

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v11, Lpqc;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_4a
    aget-object v11, v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v15, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v5, ": "

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v8, v8, Lpqc;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4f
    invoke-static {v4}, Lpuq;->bc(Lpqr;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_52
    new-array v11, v10, [I

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_53
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string v4, "\n"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_58
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v14, v14, Lpqb;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_5a
    iget-object v1, v0, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->a:Lpic;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v4, v4, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    :goto_5d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v12, ""

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_60
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    :goto_61
    invoke-virtual {v4}, Lnar;->y()[Lpqb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_62
    aget-object v15, v5, v12

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_63
    aget-object v7, v10, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_64
    aput v7, v11, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_65
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_67
    const-class v2, Lhqm;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_68
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_6b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_6e
    aget v7, v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v4, p1

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_71
    long-to-double v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_74
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_77
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_79
    aget-object v14, v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const-string v2, "\n\nMetrics dumped in %.6f ms"

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7e
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

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

    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_80
    check-cast v4, Lpqn;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d4

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_cc

    nop

    nop

    :goto_83
    aget-object v6, v6, v14

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move v12, v7

    nop

    nop

    :goto_85
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v0, v5, Lpic;->a:Ljava/lang/Object;

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

    :goto_88
    check-cast v10, [[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_5d

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8d
    const-string v8, "%-"

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

    :goto_8e
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8f
    add-int/2addr v7, v13

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_90
    aget-object v11, v11, v10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/debug/metrics/MetricsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_93
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v6, Lpqc;

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

    :goto_96
    invoke-interface {v3, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    :goto_99
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9a
    iget-object v0, v0, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    aget-object v5, v10, v7

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

    :goto_9c
    aget-object v6, v10, v13

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9d
    move-object/from16 v6, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_9e
    add-int/lit8 v10, v9, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a1
    move v8, v13

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_17

    nop

    nop

    :goto_a3
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v11, v11, Lpqc;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

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

    :goto_a8
    goto/16 :goto_b9

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_72

    nop

    nop

    :goto_aa
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_ab
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_ac
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    array-length v4, v10

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const-string v7, "%-"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_b1
    if-lt v14, v9, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    :cond_a
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {v6}, Lpuq;->bc(Lpqr;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    aget-object v7, v10, v8

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v3, v4}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    goto/32 :goto_34

    nop

    nop

    :goto_b6
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    add-int/2addr v7, v13

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_2f

    nop

    :goto_bc
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast v9, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_be
    aput-object v12, v5, v9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_bf
    const-string v8, "%s"

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_c1
    sget-object v8, Lpqc;->a:Lpqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_c2
    if-lt v13, v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_92

    nop

    nop

    :goto_c5
    aget v7, v11, v14

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_c6
    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_c7
    aput-object v6, v7, v9

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_c8
    add-int v0, v0, v1

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_cc
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_ce
    goto/16 :goto_94

    nop

    nop

    :goto_cf
    goto/32 :goto_38

    nop

    nop

    :goto_d0
    invoke-interface {v1, v2}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d1
    const/4 v14, 0x2

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_d2
    const v0, 0x5

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_d3
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_d4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_d5
    new-array v14, v14, [I

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_d6
    move v14, v7

    nop

    nop

    :goto_d7
    goto/32 :goto_b1

    nop

    nop

    :goto_d8
    invoke-virtual {v4}, Lnar;->y()[Lpqb;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    const-string v4, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_da
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_db
    check-cast v1, Liye;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_dc
    div-double/2addr v1, v4

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    aget v7, v11, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_de
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_df
    check-cast v4, Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e0
    if-nez v11, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    :cond_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    nop

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

    :goto_e2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_e3
    add-int/lit8 v7, v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e4
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_e5
    const/4 v8, 0x0

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

    :goto_e6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_e7
    const-string v7, "s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v4, :cond_d

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_d
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_ec
    move-object v4, v6

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const-string v7, "s"

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

    :goto_ef
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_f0
    if-eq v11, v12, :cond_e

    nop

    goto/32 :goto_e9

    nop

    :cond_e
    :goto_f1
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    aput-object v6, v7, v14

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

    :goto_f3
    add-int/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    check-cast v12, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-lt v10, v11, :cond_f

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4a

    nop

    nop

    nop
.end method
