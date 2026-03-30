.class public final Lppl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprw;


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;

.field private final c:Lcom/google/googlex/gcam/YuvReadView;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/YuvImage;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lsgj;->u(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lppl;-><init>(Lcom/google/googlex/gcam/YuvReadView;J)V

    goto/32 :goto_2

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
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvReadView;J)V
    .locals 23

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v8, v9, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_width(JLcom/google/googlex/gcam/GrayReadViewU8;)I

    move-result v8

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

    :goto_1
    move-object/from16 v0, v22

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    add-long/2addr v3, v5

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    long-to-int v0, v12

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5
    move-object/from16 v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-long v12, v20, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_b
    mul-long/2addr v12, v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_d
    aput-object v5, v4, v8

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v0, v2, v5, v8}, Lppk;-><init>(Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-long v9, v9

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_12
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_14
    long-to-int v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_15
    sget-object v3, Lsyn;->c:Lsyn;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->c()Lsyn;

    move-result-object v3

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

    :goto_17
    move-wide/from16 v18, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_18
    sget-object v3, Lsyn;->b:Lsyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v20, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_1a
    move-object v2, v9

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v22, v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->c()Lsyn;

    move-result-object v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-long v5, v5

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

    :goto_1f
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

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

    nop

    :goto_20
    iput-wide v4, v3, Lppl;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_21
    invoke-static {v6, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_chroma(JLcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v16, v2

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lsyh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-long/2addr v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    iget-wide v6, v1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    int-to-long v14, v15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_29
    mul-long/2addr v4, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-long v8, v8

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2b
    add-long/2addr v6, v11

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2d
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lsyh;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_2e
    new-instance v5, Lppk;

    nop

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

    :goto_2f
    invoke-static {v1}, Lsyh;->a(Lsyh;)J

    move-result-wide v3

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_30
    const-string v3, "Format of yuvReadView can only be NV12 or NV21!"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_32
    mul-long/2addr v0, v12

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_33
    invoke-static {v3, v4, v0}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_34
    invoke-static {v6, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_luma(JLcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_2

    nop

    nop

    :goto_37
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    int-to-long v9, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v12

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 v3, v16, -0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->b()I

    move-result v9

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

    :goto_3c
    if-eq v3, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3}, Lsyh;->a(Lsyh;)J

    move-result-wide v3

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

    :goto_3e
    invoke-static {v3}, Lsyh;->a(Lsyh;)J

    move-result-wide v3

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_3f
    sget-object v1, Lsyn;->b:Lsyn;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v15, v15, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_41
    const v1, 0xc

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

    :goto_42
    if-eqz v16, :cond_1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v1, Lppk;

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

    :goto_44
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/gcam/GrayReadViewU8;->b()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_45
    move-wide/from16 v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_46
    int-to-long v4, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v2}, Lsyh;->a(Lsyh;)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_23

    nop

    nop

    :goto_4a
    invoke-direct {v5, v2, v6, v7, v8}, Lppk;-><init>(Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_d

    nop

    nop

    :goto_4b
    add-int/lit8 v14, v14, -0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4d
    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-wide/16 v11, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_51
    add-long/2addr v12, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_52
    iget-wide v8, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v2, Lsyh;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-array v4, v4, [Lprv;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_55
    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->c()Lsyn;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_57
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_58
    aput-object v1, v4, v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_59
    move-object/from16 v0, p0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-wide/from16 v20, v12

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v2, v9, v10}, Lsyh;-><init>(J)V

    :goto_5c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v16, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v2, v6, v7}, Lcom/google/googlex/gcam/GrayReadViewU8;-><init>(J)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v3, v4, v0}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

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

    nop

    nop

    :goto_60
    iget-wide v11, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_61
    int-to-long v10, v11

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->d()I

    move-result v14

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-object v0, v3, Lppl;->b:Ljava/util/List;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_64
    goto/16 :goto_96

    nop

    nop

    :goto_65
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v8, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_67
    aput-object v2, v4, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_68
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_69
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/gcam/GrayReadViewU8;->a()I

    move-result v7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6a
    new-instance v2, Lppk;

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

    nop

    :goto_6b
    mul-long v9, v18, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6d
    iput-object v4, v3, Lppl;->c:Lcom/google/googlex/gcam/YuvReadView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

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

    :goto_6f
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->b()I

    move-result v16

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-wide v6, v1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-long/2addr v6, v9

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

    :goto_72
    int-to-long v6, v6

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

    :goto_73
    invoke-static {v1}, Lsyh;->a(Lsyh;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-wide v9, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_75
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lsyh;

    move-result-object v3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    add-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_77
    new-instance v3, Lcom/google/googlex/gcam/InterleavedReadViewU8;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_78
    int-to-long v0, v1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->c()I

    move-result v15

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7a
    int-to-long v12, v12

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v9, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-static {v3, v4, v0}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

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

    nop

    :goto_7f
    invoke-static {v2, v3, v6}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_80
    mul-long/2addr v6, v8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_82
    add-int/lit8 v8, v8, -0x1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_83
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_84
    invoke-direct {v2, v1, v5, v6, v8}, Lppk;-><init>(Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_85
    int-to-long v5, v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_86
    if-lez v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_87
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v5

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

    :goto_88
    invoke-static {v3, v4, v0}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_89
    new-instance v2, Lcom/google/googlex/gcam/GrayReadViewU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_8a
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_data(JLcom/google/googlex/gcam/GrayReadViewU8;)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->a()I

    move-result v6

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_8c
    cmp-long v16, v9, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v11, v12, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_height(JLcom/google/googlex/gcam/GrayReadViewU8;)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8e
    if-ne v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_8f
    int-to-long v12, v3

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

    :goto_90
    move-wide/from16 v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_91
    invoke-direct {v3, v6, v7}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(J)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lsyh;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v2, 0x1

    nop

    :goto_96
    goto/32 :goto_30

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvWriteView;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lppl;-><init>(Lcom/google/googlex/gcam/YuvReadView;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x23

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvReadView;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lppl;->c:Lcom/google/googlex/gcam/YuvReadView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvReadView;->b()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lppl;->c:Lcom/google/googlex/gcam/YuvReadView;

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
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final d()J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lppl;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    add-int v0, v0, v1

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
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lppl;->b()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

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

    :goto_6
    invoke-virtual {p0}, Lppl;->c()I

    move-result v1

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
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

    nop

    goto/32 :goto_5

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Landroid/hardware/HardwareBuffer;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final g()Ljava/util/List;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lppl;->b:Ljava/util/List;

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
.end method

.method public final synthetic h(Lprs;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic i()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final j()Lpic;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance p0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop
.end method
