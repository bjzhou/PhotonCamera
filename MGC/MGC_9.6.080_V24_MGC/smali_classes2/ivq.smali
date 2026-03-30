.class public Livq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liwh;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Landroid/media/MediaCodec;

.field public c:Z

.field public d:Z

.field private final e:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sput-object v0, Livq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "ivq"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v2, p0, Livq;->d:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->TcIFArESapu:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const/4 v0, 0x0

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

    nop

    :goto_10
    const v1, 0xc

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

    :goto_11
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    const v2, 0xac44

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v2, p0, Livq;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Livq;->e:Landroid/media/MediaFormat;

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

    :goto_15
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Livq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Livq;->d:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v3, 0x1f400

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3
    const/16 v0, 0x799

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_7
    const-string v2, "bitrate"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, "max-input-size"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    iget-object v2, p0, Livq;->e:Landroid/media/MediaFormat;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Livq;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :try_start_1
    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->dNKtOCeUH:Ljava/lang/String;

    nop

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    nop

    iput-object v0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    const-string v2, "aac-profile"

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
    iget-object v0, p0, Livq;->e:Landroid/media/MediaFormat;

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

    :goto_10
    const/16 v3, 0x4000

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

    :goto_11
    iget-object v0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_1f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_21
    sget-object p0, Livq;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    sget-object v1, Livq;->a:Lsdb;

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

    :goto_23
    iput-boolean v1, p0, Livq;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

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

    :goto_26
    const-string v0, "AudioEncoder already started!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Livq;->d:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_28
    add-int v0, v0, v1

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

    :goto_29
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2c
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v3, 0x798

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    const-string v2, "Exception when configuring MediaCodec."

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Livq;->e:Landroid/media/MediaFormat;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
