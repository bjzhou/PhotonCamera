.class public final synthetic Ljwd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljwf;

.field public final synthetic b:Lsui;

.field public final synthetic c:Lqep;


# direct methods
.method public synthetic constructor <init>(Ljwf;Lsui;Lqep;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljwd;->c:Lqep;

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

    :goto_2
    iput-object p2, p0, Ljwd;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljwd;->a:Ljwf;

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
.end method


# virtual methods
.method public final run()V
    .locals 13

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ltnw;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljava/util/List;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_4
    or-int/lit8 v1, v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_6
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-ltz v5, :cond_1

    nop

    nop

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
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_a
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ltoa;

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

    :goto_e
    or-int/lit8 v12, v12, 0x4

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v6, v0, Ljwf;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

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

    :goto_12
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_16
    check-cast v7, Lrss;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_17
    iget-boolean v5, v0, Ljwf;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v8, Lrss;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1d
    if-nez v3, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface/range {v6 .. v11}, Lscz;->A(Ljava/lang/String;JJ)V

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v5, Ljwf;->a:Lsdb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    iget-object v6, v0, Ljwf;->d:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_27
    check-cast v6, Lscz;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_28
    check-cast v1, Ltoc;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_29
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-long v1, v3, v1

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

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Ltkb;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_31
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_32
    array-length v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-boolean v5, v11, Ltnw;->e:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_38
    check-cast v5, Ltnz;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v1, v5, Ltnz;->b:I

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v6, Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v6, v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmp-long v5, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3e
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3f
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_41
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_42
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_43
    or-int/lit8 v1, v1, 0x10

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    :goto_45
    move-wide v8, v3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_5a

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_49
    check-cast v1, Ltnz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4a
    or-int/lit8 v10, v10, 0x2

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Ljwd;->b:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_4c
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v0

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

    :goto_4e
    invoke-static {v1, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_4f
    iput v1, v2, Ltnw;->b:I

    nop

    :goto_50
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v2, Ltnw;

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

    :goto_53
    move-object v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_25

    nop

    nop

    :goto_56
    invoke-interface {p0}, Lqep;->close()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

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

    :goto_58
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v2, Ltnw;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_5c
    move-wide v10, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5e
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {p0, v0, v1}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_56

    nop

    nop

    :goto_60
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

    :goto_61
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v2, "meta + V2 isn\'t supported yet!"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_63
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_64
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_66
    iput-object v1, v2, Ltnw;->f:Ltoc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_67
    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_68
    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_69
    or-int/lit8 v1, v1, 0x8

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6a
    iget v1, v2, Ltnw;->b:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6b
    check-cast v1, Ltnz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_6e
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v1, Ltnz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_70
    iput-object v1, v5, Ltnz;->f:Ltoa;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_71
    iput-wide v3, v10, Ltnw;->c:J

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

    :goto_72
    iput-wide v1, v5, Ltnw;->d:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_73
    or-int/lit8 v11, v11, 0x1

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v10, Ltnw;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_77
    iget v1, v2, Ltnw;->b:I

    nop

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

    :goto_78
    iget-object v8, v0, Ljwf;->f:Lsui;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_79
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_7a
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_7b
    iput v10, v5, Ltnw;->b:I

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

    :goto_7c
    invoke-static {v8}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7d
    iget-object p0, p0, Ljwd;->c:Lqep;

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

    :goto_7e
    cmp-long v4, v1, v4

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

    :goto_7f
    sget v1, Lcom/google/android/libraries/microvideo/xmp/nativemotionphotos/NativeMotionPhotoProcessor;->a:I

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

    nop

    :goto_80
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_81
    const/16 v6, 0xa9c

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_84
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v6}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v0}, Lcom/google/android/libraries/microvideo/xmp/nativemotionphotos/NativeMotionPhotoProcessor;->encodeVideoMetadata([B)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_87
    iput v1, v2, Ltnw;->b:I

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_91

    nop

    nop

    :goto_8a
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_8c
    sget-object v9, Ltnw;->a:Ltnw;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    cmp-long v4, v4, v1

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8e
    invoke-static {v3}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_8f
    if-ltz v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_90
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_92
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_93
    iput-object v1, v2, Ltnw;->g:Ltnz;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_94
    check-cast v5, Ltnw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_95
    iput v11, v10, Ltnw;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_96
    if-nez v0, :cond_b

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

    :cond_b
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v7, v0, Ljwf;->e:Lsui;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move-object v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_99
    if-eqz v5, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v5, v9, Ltkb;->b:Ltkg;

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

    :goto_9b
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    xor-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_9e
    iget v12, v11, Ltnw;->b:I

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

    :goto_9f
    iget-object v0, p0, Ljwd;->a:Ljwf;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_a0
    iget v10, v5, Ltnw;->b:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_a1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

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

    :goto_a2
    iget v1, v5, Ltnz;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a3
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v2, v1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_a

    nop

    nop

    :goto_a5
    invoke-virtual {v6, v5}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v3, v0, Ljwf;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v0, Ltnw;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez v1, :cond_d

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_aa
    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_ab
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_ac
    iget v11, v10, Ltnw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_ad
    invoke-static {v7}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v7

    nop

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

    :goto_ae
    iget-boolean v0, v0, Ljwf;->h:Z

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v5, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_b0
    iput v12, v11, Ltnw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_b2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_b3
    const-string v7, "A shutter timestamp (%d) with value less than the starting timestamp (%d) was selected. Overwriting timestamp with starting timestamp."

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_b4
    check-cast v11, Ltnw;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_b5
    if-nez v3, :cond_f

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_f
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
