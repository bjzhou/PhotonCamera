.class public final synthetic Lisa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lirz;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lisa;->b:I

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

    :goto_1
    iput-object p1, p0, Lisa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/ShotMetadata;Llxa;Lijd;Lioy;)V
    .locals 19

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3}, Lpsg;-><init>()V

    goto/32 :goto_1a

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

    :goto_2
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v5, v3, v1, v6}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v7, v3, Lpsg;->b:J

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_72

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_8
    sget-object v0, Linx;->a:Lsdb;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_62

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v11, v3

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Linx;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lprk;->e()J

    move-result-wide v6

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    move-object/from16 v4, p3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f
    check-cast v10, [B

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v2, p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v4, v5}, Lpsg;->b(J)V

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const/16 v4, 0x6b5

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_14
    check-cast v0, Lscz;

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

    :goto_15
    iget-wide v5, v3, Lpsg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-direct/range {v4 .. v11}, Liny;-><init>(JJ[B[B[B)V

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    nop

    iget-object v1, v0, Liny;->a:[B

    nop

    nop

    invoke-static {v1}, Linx;->a([B)[B

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Liny;->b:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Linx;->a([B)[B

    move-result-object v14

    nop

    nop

    iget-object v0, v0, Liny;->c:[B

    nop

    invoke-static {v0}, Linx;->a([B)[B

    move-result-object v15

    nop

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v16

    nop

    nop

    nop

    move-object/from16 v18, p1

    nop

    nop

    nop

    nop

    invoke-static/range {v12 .. v18}, Lcom/google/googlex/gcam/GcamModuleJNI;->AddG3aMetadata(I[B[B[BJLcom/google/googlex/gcam/ShotMetadata;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Linx;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_18
    invoke-direct {v5, v3, v1, v6}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    :goto_19
    iput-wide v6, v3, Lpsg;->a:J

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lrss;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v6}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v4, v5}, Lpsg;->b(J)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v6, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    move-object/from16 v0, p0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_23
    const-string v3, "3A_DEBUG XMP Error saving metadata from cameraId=%s."

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

    :goto_24
    invoke-interface {v1}, Lprk;->b()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface/range {p2 .. p2}, Llxa;->m()Lpro;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    check-cast v1, Lirz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4, v5}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    or-int/lit8 v6, v6, 0x1

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

    :goto_2a
    iput-byte v6, v3, Lpsg;->c:B

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

    :goto_2b
    goto/32 :goto_a

    nop

    :goto_2c
    if-eqz v6, :cond_3

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v9, [B

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, v0, Lkct;->b:Lj$/util/Optional;

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

    :goto_32
    const/4 v1, 0x3

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v5, Lgbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Lisa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_36
    const/16 v1, 0x6b6

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

    :goto_37
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    iget-object v4, v0, Lkct;->a:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3b
    const/16 v6, 0xa

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 v6, 0xb

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    new-instance v3, Lpsg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v4}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-byte v6, v3, Lpsg;->c:B

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_40
    iget-byte v0, v3, Lpsg;->c:B

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

    :goto_41
    move-object/from16 v5, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

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

    :goto_43
    iget-object v3, v3, Lpsg;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_44
    const/16 v5, 0xc

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v4, v3, Lpsg;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_46
    iget-object v1, v3, Lpsg;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    invoke-direct {v4, v3, v1, v5}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_48
    new-instance v5, Lgbt;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_49
    return-void

    nop

    :goto_4a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_4e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_50
    sget-object v1, Linx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_51
    const-string v1, "3A_DEBUG XMP Capture result is null, cannot save metadata."

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_52
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v4, Lgbt;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_55
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v10, v4

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

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_58
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_30

    nop

    nop

    :goto_5a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5c
    if-eq v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_6a

    nop

    nop

    :goto_5d
    throw v0

    nop

    nop

    :goto_5e
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v1, v0, Lisa;->b:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_60
    const-string v1, "3A_DEBUG XMP camera ID is null, cannot save metadata."

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

    :goto_61
    return-void

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_2b

    nop

    nop

    :goto_63
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_9

    nop

    :goto_64
    const/16 v1, 0x6b7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_65
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_66
    iget-object v0, v0, Lkct;->c:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_68
    invoke-interface {v1, v2, v3, v4, v5}, Lirz;->a(Lcom/google/googlex/gcam/ShotMetadata;Llxa;Lijd;Lioy;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const v1, 0xd

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6a
    new-instance v0, Liny;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v4, v5}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v0, 0x12

    nop

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

    :goto_6f
    check-cast v11, [B

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, v0, Linx;->b:Lkct;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_71
    invoke-static {v3, v2, v4, v1, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_73
    int-to-byte v6, v6

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

    nop

    :goto_74
    iget-object v0, v0, Lisa;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method
