.class public Ljcv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;

.field private static final g:[F


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lqht;

.field public final d:Lqjw;

.field public final e:Landroid/view/Surface;

.field public final f:Lqjs;

.field private final h:Lpcg;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lqku;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljcv;->g:[F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "jcv"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_4
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ljcv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Liof;Ljqp;Ljava/util/concurrent/Executor;Ljava/io/FileOutputStream;Lpck;Lpcg;ZILrss;Lrss;Lrss;)V
    .locals 11

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7f

    nop

    nop

    :goto_2
    iput-object v2, v0, Ljcv;->h:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v8, 0x8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v7, v3}, Lqku;-><init>(Lqlb;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_37

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p6 .. p6}, Lpcg;->ordinal()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_b
    invoke-direct {v3, v4}, Lqke;-><init>(Landroid/view/Surface;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_c
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_34

    nop

    nop

    :goto_e
    iput-object v4, v0, Ljcv;->b:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v3, v0, Ljcv;->d:Lqjw;

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

    :goto_10
    const-string v2, "video/avc"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, v0, Ljcv;->f:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v6, v4, v5}, Lqfd;-><init>(II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v8, :cond_0

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

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_15
    double-to-float v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_16
    move-object/from16 v7, p9

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_17
    double-to-float v7, v7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_18
    iput-object v7, v3, Lqlg;->c:Lsui;

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    iput-object v8, v3, Lqlg;->b:Lsui;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Lqkv;->b()Lqau;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1e
    iget v9, v5, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    move/from16 v7, p8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v2}, Liof;->d(Ljava/lang/String;)Lqht;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_22
    iput-object v4, v0, Ljcv;->e:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v4, v2, Lqkv;->e:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_7a

    nop

    :goto_27
    goto/32 :goto_79

    nop

    nop

    :goto_28
    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, v2, Lpcg;->e:I

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v7, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2b
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2, v3, v6}, Lqjs;->k(Lqht;Lqlt;Lqfd;)Lqjs;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v7, v7, Lqld;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move/from16 v3, p7

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_8a

    nop

    nop

    :goto_31
    new-instance v6, Lqfd;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_33
    invoke-direct {v3, p3}, Lqlg;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/high16 v3, 0x10000

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {p5 .. p5}, Lpck;->g()Lpck;

    move-result-object v5

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v4}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v8, Ljcl;

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

    :goto_3a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_1
    goto/32 :goto_7e

    nop

    :goto_3b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7c

    nop

    nop

    :goto_3c
    move-object/from16 v2, p6

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

    :goto_3d
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v4, v5, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v8}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_40
    invoke-static {v2, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_41
    const-string v9, "profile"

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_42
    iput-object v1, v0, Ljcv;->i:Ljava/util/concurrent/Executor;

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

    :goto_43
    move-object/from16 v5, p5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_44
    const v7, 0x7f000789

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_46
    const v3, 0x8000

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v3, Lqke;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_48
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v7, v2}, Lqku;->c(Landroid/media/MediaFormat;)Lqkv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

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

    :goto_4c
    const v3, 0x243d580

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4d
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4e
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_50
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v7, v8, p3}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v8, 0x3

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

    :goto_53
    return-void

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v3, Ljava/lang/Float;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_56
    const/4 v6, 0x0

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

    :goto_57
    move-object/from16 v7, p10

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

    :goto_58
    if-ne v7, v3, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_59
    const-string v2, "video/hevc"

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5c
    iput-object v5, v0, Ljcv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v3, "frame-rate"

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

    :goto_5e
    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v7, v0, Ljcv;->k:Lqku;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v6}, Lqlg;->b(I)V

    goto/32 :goto_6c

    nop

    nop

    :goto_61
    invoke-virtual {v3}, Lqlg;->a()Lqlb;

    move-result-object v3

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v7, v3}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_63
    const-string v7, "level"

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_64
    invoke-virtual {v7, v3}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_65
    const-string v2, "glContext"

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_66
    invoke-direct {v3, v2}, Lqjw;-><init>(Lqht;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_67
    iput-boolean v6, v2, Lqkv;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_68
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    if-ne v5, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v3, p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p2}, Ljqp;->c()Lrss;

    move-result-object v7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v7, v3}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object v1, p3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_70
    iget v8, v5, Lpck;->a:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_71
    const-string v7, "color-standard"

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_72
    check-cast v7, Landroid/location/Location;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_73
    iput-object v2, v0, Ljcv;->c:Lqht;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_74
    const-string v3, "color-format"

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

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

    :goto_76
    new-instance v3, Lqjw;

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

    :goto_77
    if-ne v7, v3, :cond_4

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

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v4

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

    :goto_79
    move v8, v7

    nop

    nop

    :goto_7a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7c
    const-string v4, "resource-closing"

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_80
    if-ne v5, v7, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v3, Lqlg;

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

    nop

    :goto_82
    move-object v10, p4

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v7, Lqld;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_84
    invoke-virtual {v2, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const-string v7, "i-frame-interval"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_86
    new-instance v7, Lqku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_87
    invoke-direct {v8, p4, v9}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v3, v7}, Lqlg;->c(Ljava/io/FileDescriptor;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_8a
    if-ne v7, v3, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    :goto_8b
    const-string v7, "bitrate"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v7}, Lqku;->b()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8e
    iget v5, v5, Lpck;->b:I

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

    :goto_8f
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lsui;
    .locals 1

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
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Ljcv;->c()V

    iget-object v0, p0, Ljcv;->k:Lqku;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqku;->b:Lqlb;

    nop

    nop

    nop

    invoke-interface {v0}, Lqlb;->a()Lsui;

    move-result-object v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized b(Landroid/hardware/HardwareBuffer;J)V
    .locals 10

    goto/32 :goto_a

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

    nop

    :try_start_0
    iget-object v0, p0, Ljcv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    sget-object p2, Ljcv;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    const/16 p3, 0x849

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    nop

    sget-object p3, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->eOGvoyPXfC:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    :catchall_0
    move-exception p2

    nop

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v7}, Lqia;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catchall_4
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_5
    new-instance v6, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    invoke-direct {v6, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Ljcv;->c:Lqht;

    nop

    invoke-static {v0, v6}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v7

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v0, p0, Ljcv;->f:Lqjs;

    nop

    nop

    nop

    new-instance v1, Lkhy;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-direct {v1, v2}, Lkhy;-><init>(I)V

    new-instance v3, Lkhz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p2, p3, v2}, Lkhz;-><init>(JI)V

    invoke-virtual {v0, v1, v3}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    iget-object p2, p0, Ljcv;->h:Lpcg;

    nop

    sget-object p3, Ljcv;->g:[F

    nop

    nop

    nop

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    nop

    check-cast p3, [F

    nop

    nop

    nop

    nop

    const/high16 v0, 0x3f000000    # 0.5f

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    invoke-static {p3, v9, v0, v0, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget p2, p2, Lpcg;->e:I

    nop

    nop

    nop

    int-to-float v2, p2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    const/4 v3, 0x0

    nop

    nop

    move-object v0, p3

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p2, -0x41000000    # -0.5f

    nop

    invoke-static {p3, v9, p2, p2, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p2, p0, Ljcv;->d:Lqjw;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljcv;->f:Lqjs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v7, v0, p3}, Lqjw;->c(Lqiu;Lqjs;[F)V

    iget-object p2, p0, Ljcv;->b:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    new-instance p3, Lhfj;

    nop

    nop

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    move-object v0, p3

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v6

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v7}, Lqia;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v6}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    :goto_12
    const v1, 0x17

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
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, v2}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x84b

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
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

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

    :goto_6
    invoke-interface {v0, v1, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_14

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

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    sget-object p0, Ljcv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    new-instance v1, Ljcl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljcv;->i:Ljava/util/concurrent/Executor;

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

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljcv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const v1, 0xa

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

    nop

    :goto_10
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljcv;->k:Lqku;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Shutdown already called. Skipping additional requests."

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_18
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lqku;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0}, Ljcv;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
