.class public Llrc;
.super Llrg;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Llrk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "lrc"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Llrc;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llxa;Llrk;)V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    move-object v2, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Llrc;->b:Llrk;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x4

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    move-object v5, p4

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

    :goto_7
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v3, p3

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v5}, Llrg;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)I
    .locals 1

    goto/32 :goto_1

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

    nop

    :goto_1
    sget-object v0, Lpcg;->a:Lpcg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lpcg;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_32

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lmjn;->f(J)V

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v1

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

    :goto_2
    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Lprw;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_58

    nop

    nop

    :goto_5
    iget-object p0, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lpfv;->b()Lpfv;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide v1, v0, Lmjn;->b:J

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catch_0
    :try_start_0
    sget-object v0, Llrc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0xf76

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "CaptureResults not added to photoCaptureDoneEvent event due to Interrupted Exception."

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Llrc;->h:Llqo;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_57

    nop

    nop

    nop

    :catch_1
    :try_start_1
    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    sget-object v2, Lnim;->a:Lnik;

    nop

    new-instance v4, Lhui;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lhui;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-wide v6, p0, Llrc;->d:J

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

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
    iget-object v6, v0, Llqw;->a:Lprw;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iget-wide v6, p0, Llrc;->d:J

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

    :goto_13
    iget v3, v11, Llre;->b:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v7, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_15
    iget-object p0, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llrc;->f:Llxa;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_17
    iget-object v7, p0, Llrc;->e:Llqw;

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

    :goto_18
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_19
    new-array v2, v2, [B

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

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

    :goto_1b
    new-instance v4, Lmla;

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

    nop

    :goto_1c
    iget-object p0, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Llxa;->ag()Lmjn;

    move-result-object v1

    nop

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

    nop

    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw v0

    nop

    :goto_21
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v3, v6, v7, v1}, Lpfv;->f(IILpcg;Lrss;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Llrc;->h:Llqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Llxa;->ag()Lmjn;

    move-result-object p0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v2, Lfvz;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3e

    nop

    nop

    :goto_29
    sget-object v0, Llrc;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Llqw;->a:Lprw;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_2d
    const-string v3, "Failed to allocate jpeg buffer for encoding."

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0, v1}, Lmjn;->f(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lpfv;->b()Lpfv;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_35
    iput-object v3, v1, Lmjn;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

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

    :goto_36
    new-instance v4, Lpfv;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v6, v7, v11, v4}, Llrg;->j(JLlre;I)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v4, v6}, Lmla;-><init>(Lpsz;)V

    goto/32 :goto_7c

    nop

    nop

    :goto_3a
    const/4 v6, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, v0, Llqw;->a:Lprw;

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

    :goto_3d
    iget v6, v11, Llre;->a:I

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v6}, Llrl;->close()V

    :goto_42
    goto/32 :goto_f

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v1

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

    nop

    :goto_45
    iget-object v2, p0, Llrc;->h:Llqo;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_48
    throw p0

    nop

    nop

    :goto_49
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Llqw;->a:Lprw;

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

    nop

    :goto_4b
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Llqw;->a:Lprw;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4d
    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

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

    :goto_4e
    iget-object v0, v0, Llqw;->a:Lprw;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1, v2}, Llrc;->i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    :try_start_2
    iget-object v2, v0, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    iget-object v2, v0, Llqw;->a:Lprw;

    nop

    invoke-interface {v2}, Lprw;->b()I

    new-instance v2, Lpck;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    invoke-direct {v2, v6, v1}, Lpck;-><init>(II)V

    new-instance v11, Llre;

    nop

    iget-object v1, v0, Llqw;->b:Lpcg;

    nop

    iget v6, v2, Lpck;->a:I

    nop

    iget v2, v2, Lpck;->b:I

    nop

    nop

    invoke-direct {v11, v1, v6, v2}, Llre;-><init>(Lpcg;II)V

    iget-wide v1, p0, Llrc;->d:J

    nop

    nop

    invoke-virtual {p0, v1, v2, v11, v4}, Llrg;->j(JLlre;I)V

    iget v1, v11, Llre;->b:I

    nop

    mul-int/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    iget v2, v11, Llre;->a:I

    nop

    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v1, v1, 0x2

    nop

    div-int/lit8 v2, v1, 0x2

    nop

    nop

    iget-object v6, p0, Llrc;->b:Llrk;

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Llrk;->c(Ljava/lang/Object;)Llrl;

    move-result-object v6

    nop

    invoke-virtual {v6}, Llrl;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    sget-object v2, Lnim;->a:Lnik;

    nop

    new-instance v4, Lhui;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lhui;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Llrl;->close()V

    goto :goto_50

    nop

    nop

    nop

    :cond_1
    iget-object v8, v0, Llqw;->a:Lprw;

    nop

    nop

    iget-object v9, v0, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-static {v8, v7, v9}, Llrc;->a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)I

    move-result v8

    nop

    nop

    nop

    nop

    if-le v8, v2, :cond_b

    nop

    nop

    nop

    invoke-virtual {v6}, Llrl;->close()V

    iget-object v2, p0, Llrc;->b:Llrk;

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v2, v1}, Llrk;->c(Ljava/lang/Object;)Llrl;

    invoke-virtual {v6}, Llrl;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/nio/ByteBuffer;

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    nop

    sget-object v2, Lnim;->a:Lnik;

    nop

    nop

    nop

    nop

    new-instance v4, Lhui;

    nop

    invoke-direct {v4, v3}, Lhui;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Llrl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_50
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Llrc;->e:Llqw;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_52
    iget-object v8, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

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

    :goto_54
    iget-object v2, p0, Llrc;->h:Llqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Llrl;->close()V

    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Error compressing jpeg."

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v8, v9, v10, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    :goto_57
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_5a
    iget-object v4, p0, Llrg;->h:Llqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

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

    :goto_5c
    new-instance v6, Llto;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5e
    throw v1

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_60
    const-string v0, "Unsupported input image format for TaskCompressImageToJpeg"

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
    invoke-direct {v3, v6, v7, v11, v4}, Llrf;-><init>(JLlre;I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/16 v1, 0xf75

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v2, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_66
    iget-object v3, v0, Llqw;->c:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_67
    const-string v1, "CaptureResults unavailable to photoCaptureDoneEvent event."

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_68
    const/16 v2, 0x23

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_69
    throw v1

    nop

    nop

    :goto_6a
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {p0}, Llxa;->ag()Lmjn;

    move-result-object p0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object p0, p0, Llrc;->f:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6e
    if-eq v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_3
    :try_start_4
    iget-object v1, v0, Llqw;->a:Lprw;

    nop

    invoke-interface {v1}, Lprw;->g()Ljava/util/List;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    nop

    nop

    nop

    new-array v6, v2, [B

    nop

    nop

    nop

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v6}, Lpfv;->a([B)Lcom/google/android/libraries/camera/exif/ExifInterface;

    move-result-object v1

    nop

    nop

    invoke-static {v1}, Lpfo;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lpfo;

    move-result-object v7

    nop

    nop

    nop

    nop

    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    nop

    nop

    nop

    invoke-virtual {v1, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    invoke-static {v7}, Lpfo;->a(Lpfo;)Lpcg;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v0, Llqw;->b:Lpcg;

    nop

    nop

    iget v10, v10, Lpcg;->e:I

    nop

    nop

    iget v11, v7, Lpcg;->e:I

    nop

    nop

    add-int/2addr v10, v11

    nop

    invoke-static {v10}, Lpcg;->b(I)Lpcg;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    nop

    iget-object v11, v0, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    sget-object v12, Lpcg;->a:Lpcg;

    nop

    nop

    nop

    if-eq v10, v12, :cond_5

    nop

    nop

    sget-object v12, Lpcg;->c:Lpcg;

    nop

    nop

    nop

    if-ne v10, v12, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_6f

    nop

    nop

    nop

    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    nop

    nop

    iget v12, v11, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    iget v13, v11, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    iget v11, v11, Landroid/graphics/Rect;->right:I

    nop

    nop

    invoke-direct {v10, v12, v13, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_70

    nop

    nop

    nop

    nop

    :cond_5
    :goto_6f
    new-instance v10, Landroid/graphics/Rect;

    nop

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_70
    invoke-static {v8, v9, v10}, Llrc;->h(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    nop

    nop

    nop

    new-instance v11, Llre;

    nop

    nop

    invoke-direct {v11, v7, v8, v9}, Llre;-><init>(Lpcg;II)V

    iget-object v8, v0, Llqw;->a:Lprw;

    nop

    new-instance v9, Landroid/graphics/Rect;

    nop

    invoke-interface {v8}, Lprw;->c()I

    move-result v12

    nop

    invoke-interface {v8}, Lprw;->b()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v5, v5, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_6

    nop

    nop

    new-instance v11, Llre;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    invoke-direct {v11, v7, v3, v8}, Llre;-><init>(Lpcg;II)V

    invoke-static {v6, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    nop

    iget v3, v10, Landroid/graphics/Rect;->left:I

    nop

    nop

    iget v6, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    invoke-static {v2, v3, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    nop

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    const/16 v7, 0x5f

    nop

    nop

    nop

    invoke-virtual {v2, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    nop

    nop

    nop

    array-length v3, v2

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_71
    invoke-interface {v1, v2, v4}, Llxa;->s([BLmla;)Lsui;

    move-result-object v1

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

    :goto_72
    invoke-interface {p0}, Llxa;->ag()Lmjn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_73
    invoke-interface {v4, v3, v6}, Llqs;->c(Llrf;Llto;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_74
    invoke-direct {v4, v1}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_99

    nop

    nop

    :goto_77
    iget-object v3, v4, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Llrc;->f:Llxa;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {p0}, Llxa;->ag()Lmjn;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_8
    :try_start_7
    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    nop

    invoke-interface {v1}, Llxa;->ag()Lmjn;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lsui;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lprk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v5}, Lmjn;->d(Lprk;Z)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p0, Llrc;->h:Llqo;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4, v3}, Lmla;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_5f

    nop

    nop

    :goto_7f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0, v0, v1}, Lmjn;->f(J)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v0, Lscz;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v5, 0x0

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

    :goto_83
    iget-object v2, p0, Llrc;->h:Llqo;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_40

    nop

    nop

    :catch_2
    :try_start_8
    sget-object v0, Llrc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0xf77

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "CaptureResults not added to photoCaptureDoneEvent event due to Execution Exception."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v4, v4, Llqo;->k:Llqt;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_87
    iget-object v1, v0, Llqw;->a:Lprw;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v0}, Llxa;->ag()Lmjn;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8a
    check-cast v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-wide v9, v7, Llqw;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8c
    invoke-interface {p0}, Llxa;->ag()Lmjn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v0, v0, Llqw;->c:Lsui;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v7, v8}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_90
    sget-object v6, Lpsz;->c:Lpsz;

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

    :goto_91
    invoke-virtual {p0, v1, v2}, Lmjn;->f(J)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_92
    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v3}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_95
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_96
    check-cast v7, Lpcg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_97
    check-cast v1, Lprk;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v1, p0, Llrc;->h:Llqo;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v6}, Llto;-><init>()V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_9c
    return-void

    nop

    nop

    :cond_a
    :try_start_9
    iget-object v2, v0, Llqw;->a:Lprw;

    nop

    iget-object v3, v0, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1, v3}, Llrc;->a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)I

    move-result v2

    nop

    move-object v3, v1

    nop

    nop

    nop

    goto :goto_9d

    nop

    :cond_b
    move-object v3, v7

    nop

    move v2, v8

    nop

    nop

    nop

    :goto_9d
    if-ltz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9e
    iget-object v1, v1, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p0, v0, v1}, Lmjn;->f(J)V

    goto/32 :goto_55

    nop

    nop

    :goto_a0
    invoke-direct {v2, p0, v11, v3}, Lfvz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_a3

    nop

    nop

    :goto_a1
    invoke-virtual {v2, v6, v7}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/16 v3, 0xb

    nop

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

    :goto_a3
    invoke-static {v1, v2}, Lolx;->bm(Lsui;Lpbz;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    new-instance v3, Llrf;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, v0, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v2, 0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v2, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v1, p0, Llrc;->f:Llxa;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a9
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_7e

    nop

    :goto_aa
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v7, v11, Llre;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_ac
    iget-object p0, p0, Llrc;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_ae
    add-int v0, v0, v1

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

    :goto_af
    iget-object v7, v0, Llqw;->a:Lprw;

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
.end method
