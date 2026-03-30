.class public final Lkie;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhx;


# static fields
.field public static final a:Lj$/time/Duration;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Lpnu;

.field public final e:Landroid/media/MediaFormat;

.field public final f:Llqk;

.field public final g:Lpcu;

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:Lqht;

.field public final l:Lnpr;

.field private final m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    const-wide/16 v0, 0x3

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

    :goto_2
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lkie;->a:Lj$/time/Duration;

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

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v1, 0x17

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Landroid/os/Handler;Llqk;Lpnu;Lqht;Lhoh;Lpcu;Lnpr;)V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p7, 0x15

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkie;->e:Landroid/media/MediaFormat;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    sget-object p3, Libw;->a:Lpck;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p3, p7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_7
    goto/32 :goto_2a

    nop

    nop

    :goto_8
    sget-object p2, Lhna;->I:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    new-instance v0, Lpcy;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const-string p3, "x"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p2, p0, Lkie;->j:I

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

    :goto_10
    iput-object p2, p0, Lkie;->m:Landroid/os/Handler;

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

    :goto_11
    iput-object p3, p0, Lkie;->f:Llqk;

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

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne p3, p7, :cond_1

    nop

    goto/32 :goto_7

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

    nop

    :goto_14
    iput-object p5, p0, Lkie;->k:Lqht;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iput-object v0, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p7, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p7

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

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean p2, p0, Lkie;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-virtual {p6, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    const-string p6, "height"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p7, p3}, Lpcy;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

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
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const p7, 0x7fa30c00

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    iput-object p8, p0, Lkie;->l:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p6, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

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

    :goto_25
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    mul-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    iput-boolean p2, p0, Lkie;->i:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object p2, Lhna;->H:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    mul-int/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_30
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    const v1, 0x1

    nop

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

    :goto_33
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Lkie;->g:Lpcu;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    :goto_37
    iput-object v0, p0, Lkie;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    :goto_38
    const-string v0, "MomentsTrackEncoder"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

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

    :goto_3b
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object p4, p0, Lkie;->d:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3d
    const-string p2, "width"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3e
    const-string p3, "color-format"

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3f
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkie;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Lqep;Lpcg;)Lkgn;
    .locals 6

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p2, "Reached maximum number of active codecs running. Dropping moments track..."

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-gtz v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, p0, v1, v0, p2}, Lkid;-><init>(Lkie;Landroid/media/MediaCodec;Landroid/os/Handler;Lpcg;)V

    :try_start_0
    invoke-virtual {v3, p1}, Lkid;->a(Lqep;)Lkgn;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    :try_start_1
    const-string v1, "video/avc"

    nop

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v3, p0, Lkie;->g:Lpcu;

    nop

    nop

    nop

    iget-object v4, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkie;->g:Lpcu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v2}, Lkin;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const-string v3, "Exception trying to launch encoder..."

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

    :goto_11
    iget-object v0, p0, Lkie;->g:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkie;->m:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lqep;->close()V

    goto/32 :goto_19

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lqep;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lqep;->close()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Lkin;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, v3, p2}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Lkin;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    new-instance v3, Lkid;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :catch_1
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0, p2}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v2}, Lkin;-><init>(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    const-string v0, "Created codec successfully; current count: "

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lqht;->close()V

    goto/32 :goto_1

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
    iget-object p0, p0, Lkie;->k:Lqht;

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

.method public final d(Lqle;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkie;->g:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

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

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, v0, v6}, Lqle;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

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

    nop

    :goto_8
    add-int/2addr v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide p2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    const-string v2, "Submit image to muxer: "

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    :goto_10
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p2}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_14
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

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

    :goto_18
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto/32 :goto_10

    nop

    nop

    :goto_19
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

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

    :goto_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v0, v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

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

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
