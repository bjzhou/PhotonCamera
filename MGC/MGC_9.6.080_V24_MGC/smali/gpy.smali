.class public final Lgpy;
.super Lgqg;
.source "PG"


# direct methods
.method public constructor <init>(Lpnx;Lpnx;Liof;Loze;Lozg;Lrss;Lpck;Lozm;Lrss;Lrss;Lrss;Lrss;Lrss;ZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;ZZZZZZZZLryb;Lryb;Lryb;Lpog;Llxo;IZZZZZZZZLgvn;ZZZLrss;Lrss;ZLnne;ZZ)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct/range {p0 .. p49}, Lgqg;-><init>(Lpnx;Lpnx;Liof;Loze;Lozg;Lrss;Lpck;Lozm;Lrss;Lrss;Lrss;Lrss;Lrss;ZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;ZZZZZZZZLryb;Lryb;Lryb;Lpog;Llxo;IZZZZZZZZLgvn;ZZZLrss;Lrss;ZLnne;ZZ)V

    goto/32 :goto_0

    nop

    nop
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "  "

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lt v1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, 0x1

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

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop
.end method

.method private static b(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const-string v0, "\n"

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    :goto_7
    invoke-static {p1}, Lgpy;->a(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_8
    const-string p0, "null"

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

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    :goto_0
    move v1, v3

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

    :goto_1
    const v0, 0xa

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Loze;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "["

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    const-string p0, "]"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_16
    const v1, 0xb

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v4, "\n"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-static {v2}, Lgpy;->a(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3}, Lgpy;->a(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_1f
    const-string v1, ","

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    goto/32 :goto_14

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
.end method

.method private static d(Lrss;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string p0, "<absent>"

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->h()Z

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method private static e(Lrss;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

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

    nop

    :goto_3
    const-string p0, "<absent>"

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

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


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 51

    goto/32 :goto_85

    nop

    nop

    :goto_0
    invoke-static {v1, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_0
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v12}, Lgpy;->a(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v1, v27

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

    :goto_a
    iget-object v14, v0, Lgqg;->k:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_b
    iget-object v9, v0, Lgqg;->e:Lrss;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v15, v0, Lgqg;->O:Z

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

    :goto_d
    const-string v1, ",\n  fossilEnabled = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    move/from16 v32, v4

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, ",\n  emeraldEnabled = false,\n  featureCentralEnabled = false,\n  sapphireEnabled = "

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

    nop

    :goto_11
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v4, v0, Lgqg;->I:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_121

    nop

    nop

    :goto_15
    move-object v3, v12

    nop

    :goto_16
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, ",\n  useContinuousAutoFocusOnDuringRecording = "

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, ",\n  useMediaCodec = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4}, Lgpy;->d(Lrss;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_1c
    move/from16 v22, v4

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move/from16 v21, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_10a

    nop

    nop

    :goto_1f
    const-string v1, ",\n  useOpticalStabilization = "

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v27, v4

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_21
    const-string v4, "["

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_22
    const-string v1, ",\n  p11ZoomConfig = "

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_23
    invoke-static {v12, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v12

    nop

    :goto_24
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_32

    nop

    nop

    :goto_26
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v1, v49

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean v4, v0, Lgqg;->s:Z

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

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move/from16 v1, v48

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, ",\n  streamCameraId = "

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_31
    return-object v0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    const-string v1, ",\n  shouldDetectFace = "

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

    nop

    :goto_34
    move/from16 v50, v14

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_37
    iget-boolean v4, v0, Lgqg;->q:Z

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_3a
    iget-object v4, v0, Lgqg;->R:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v4, v0, Lgqg;->H:Z

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_43
    iget-object v3, v0, Lgqg;->i:Lrss;

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v49, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_45
    iget-object v15, v0, Lgqg;->o:Landroid/util/Range;

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v1, ",\n  shouldSupportSpeechMode = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_49
    iget-boolean v4, v0, Lgqg;->L:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v30, v15

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_4c
    move/from16 v1, v44

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v4, v0, Lgqg;->G:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_50
    move/from16 v40, v4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v1, ",\n  snapshotSize = "

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_52
    invoke-static {v15, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v15

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

    :goto_53
    move/from16 v19, v0

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move/from16 v24, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string v4, ","

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_56
    const-string v1, ",\n  lowResYuvStreamEnabled = "

    nop

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

    :goto_57
    iget-object v14, v0, Lgqg;->B:Lpog;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-boolean v4, v0, Lgqg;->F:Z

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_59
    move-object/from16 v1, v28

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_da

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_161

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v14, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v14, 0x1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16a

    nop

    nop

    :goto_64
    invoke-static {v4}, Lgpy;->a(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v1, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6a
    iget-object v2, v0, Lgqg;->h:Lrss;

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_165

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v15, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_6e
    iget-boolean v4, v0, Lgqg;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_109

    nop

    nop

    :goto_70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_71
    iget-boolean v15, v0, Lgqg;->N:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v5, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_73
    move-object/from16 v1, v47

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-string v1, ",\n  shouldUnlockAfAeWithSceneChange = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_76
    const-string v1, ",\n}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move-object/from16 v18, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v29, v14

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_79
    move/from16 v1, v32

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_7b
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v7, v0, Lgqg;->c:Loze;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14a

    nop

    nop

    :goto_7f
    invoke-static {v14, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v42, v15

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v13, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_82
    invoke-static {v15}, Lgpy;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v15

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_84
    const-string v1, ",\n  previewSize = "

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_87
    const-string v1, ",\n  supportedVideoResolutions = "

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_88
    move/from16 v1, v35

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_102

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_120

    nop

    nop

    :goto_8b
    iget-object v5, v0, Lgqg;->b:Lpnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_8c
    invoke-static {v9}, Lgpy;->e(Lrss;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_8d
    const-string v1, ",\n  thermalThrottleFps = "

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8e
    invoke-static {v7, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_90
    const-string v1, ",\n  previewThrottleFpsRange = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_91
    iget-object v4, v0, Lgqg;->y:Lryb;

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_92
    move/from16 v44, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_93
    const-string v1, ",\n  cameraFacing = "

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const-string v1, ",\n  amethystEnabled = "

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_97
    move/from16 v1, v26

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_98
    invoke-static {v14, v12}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_9a
    move/from16 v43, v15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_9c
    const-string v1, ",\n  stabilizationModesSupported = "

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v1, v0, Lgqg;->a:Lpnx;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v14

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {v15, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a2
    const-string v1, ",\n  underwaterColorEnabled = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v15, v0, Lgqg;->C:Llxo;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const-string v1, ",\n  allSupportedCaptureRates = "

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move/from16 v1, v34

    nop

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

    :goto_a9
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_cf

    nop

    nop

    :goto_aa
    move/from16 v1, v25

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_ab
    iget-boolean v4, v0, Lgqg;->w:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_ac
    move/from16 v1, v37

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_ad
    move-object/from16 v12, v33

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v15, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_b0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v14, v0, Lgqg;->l:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_b2
    const-string v1, ",\n  viewfinderEffectEnabled = "

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b3
    iget-boolean v4, v0, Lgqg;->r:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b4
    move/from16 v1, v41

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_b6
    iget-object v8, v0, Lgqg;->d:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_b7
    const-string v1, ",\n  sessionId = "

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v10, v0, Lgqg;->f:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move-object/from16 v4, v32

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_bc
    const-string v1, ",\n  videoEffectEnabled = false,\n  amberEnabled = "

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_be
    invoke-static {v6, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    move/from16 v1, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_c0
    const-string v1, ",\n  maxDuration = "

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_c1
    const-string v1, ",\n  useLlv = "

    nop

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

    nop

    :goto_c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_c3
    move/from16 v39, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_c4
    const-string v1, ",\n  previewThrottleFps = "

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

    :goto_c5
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    :goto_c6
    move-object/from16 v32, v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move-object/from16 v1, v42

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_125

    nop

    nop

    :goto_ca
    invoke-static {v4, v15}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v6, v0, Lgqg;->W:Liof;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_cc
    move/from16 v1, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    move/from16 v1, v40

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_cf
    const-string v1, ",\n  alternateLowStorageThreshold = "

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_d0
    invoke-static {v3, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v4, v0, Lgqg;->D:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-boolean v15, v0, Lgqg;->m:Z

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_d5
    iget-boolean v4, v0, Lgqg;->K:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d6
    goto :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_dc

    nop

    nop

    :goto_d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_da
    move-object/from16 v1, v33

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-boolean v15, v0, Lgqg;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    move-object v13, v12

    nop

    nop

    :goto_dd
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_df
    move/from16 v36, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_e0
    move-object/from16 v1, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_e1
    if-nez v32, :cond_3

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_3
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_88

    nop

    nop

    :goto_e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const-string v1, ",\n  captureSessionType = "

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    move/from16 v41, v4

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_e7
    move-object/from16 v1, v46

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

    :goto_e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    move/from16 v1, v21

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

    :goto_ea
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_ec
    move-object/from16 v17, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_ed
    const-string v14, "CaptureSessionConfig {\n  cameraId = "

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const-string v1, ",\n  camcorderCharacteristics = "

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_ef
    move-object/from16 v33, v12

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    move/from16 v1, v39

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_f1
    move/from16 v1, v19

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_f2
    const-string v12, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move/from16 v23, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_f5
    move-object/from16 v46, v4

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

    nop

    :goto_f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_f8
    move/from16 v37, v4

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

    :goto_f9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_fa
    const-string v1, ",\n  videoResolution = "

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_111

    nop

    nop

    :goto_fc
    const-string v12, "<absent>"

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

    :goto_fd
    move/from16 v34, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_fe
    move-object/from16 v1, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_ff
    const-string v1, ",\n  shouldVideoStabilizationOn = "

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_100
    iget-boolean v14, v0, Lgqg;->U:Z

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_101
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_102
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_103
    move/from16 v1, v36

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_104
    move/from16 v35, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {v2, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_106
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_107
    const-string v1, ",\n  uri = "

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v14}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

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

    nop

    :goto_109
    const-string v1, ",\n  audioZoomEnabled = "

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_10a
    const-string v1, ",\n  dataStreamEnabled = false,\n  mode = "

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    move/from16 v1, v38

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v15, v0, Lgqg;->p:Landroid/util/Range;

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

    :goto_10e
    const-string v1, ",\n  videoEncoderProfile = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    move/from16 v1, v45

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_110
    move/from16 v38, v4

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_111
    move/from16 v1, v50

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

    :goto_112
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11e

    nop

    nop

    :goto_113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_114
    const-string v1, ",\n  audioEncoderProfile = "

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_154

    nop

    nop

    :goto_116
    const-string v1, ",\n  recordFpsRange = "

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_117
    move/from16 v1, v43

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_11a
    iget-boolean v4, v0, Lgqg;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v13, v0, Lgqg;->j:Lrss;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    const-string v1, ",\n  shouldRecordLocationIfPermitted = "

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-static {v14}, Lgpy;->d(Lrss;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_11e
    const-string v1, ",\n  secondaryVideoEncoderProfile = "

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_11f
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    if-nez v14, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :cond_4
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_121
    move/from16 v1, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_122
    if-nez v14, :cond_5

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_5
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_125
    const-string v1, ",\n  supportedCaptureRates = "

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

    :goto_126
    move/from16 v20, v4

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_127
    const/4 v4, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-static {v15, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_12a
    move/from16 v48, v14

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_12b
    iget-boolean v4, v0, Lgqg;->J:Z

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_12c
    if-nez v13, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_6
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_12e
    move/from16 v1, v23

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_12f
    const-string v1, ",\n  macroFocusEnabled = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_130
    invoke-static {v8, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    move/from16 v25, v4

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_134
    move-object/from16 v31, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_135
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_138
    iget-object v14, v0, Lgqg;->A:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    :goto_13a
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_15

    nop

    nop

    :goto_13c
    const-string v12, "\n"

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_13d
    const-string v1, ",\n  trackingEnabled = "

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_13e
    invoke-static {v10, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_13f
    iget-object v15, v0, Lgqg;->n:Landroid/util/Range;

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_140
    move/from16 v26, v4

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_73

    nop

    nop

    :goto_142
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v14}, Lrss;->h()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_146
    move-object/from16 v47, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_14a
    const-string v1, ",\n  previewFpsRange = "

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

    :goto_14b
    iget-boolean v4, v0, Lgqg;->u:Z

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_14c
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v4, v0, Lgqg;->M:Lgvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_14e
    iget-object v11, v0, Lgqg;->g:Lozm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_14f
    iget-boolean v4, v0, Lgqg;->E:Z

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_150
    const-string v1, ",\n  lowResYuvStreamSize = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_152
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_153
    iget-object v15, v0, Lgqg;->Q:Lrss;

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_155
    move-object/from16 v1, v30

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-boolean v14, v0, Lgqg;->S:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_158
    invoke-static {v4}, Lgpy;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_159
    invoke-static {v15}, Lgpy;->e(Lrss;)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15a
    iget-boolean v4, v0, Lgqg;->x:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    move-object/from16 v28, v15

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_15c
    move/from16 v45, v15

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_15f
    const-string v1, ",\n  captureRate = "

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :goto_160
    move/from16 v16, v15

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_161
    const-string v1, ",\n  topShotEnabled = "

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_162
    move-object/from16 v1, v18

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_163
    check-cast v14, Lozg;

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_164
    move-object v2, v12

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_167
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    const-string v1, ",\n  maxFileSize = "

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_16b
    iget-object v15, v0, Lgqg;->z:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_16c
    invoke-static {v11, v4}, Lgpy;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-object v14, v0, Lgqg;->T:Lnne;

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_170
    move/from16 v1, v16

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_171
    iget-boolean v0, v0, Lgqg;->V:Z

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

    :goto_172
    invoke-virtual {v14}, Lryb;->t()Lscq;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop
.end method
