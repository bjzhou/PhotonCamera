.class public Linw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liob;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Z

.field private final c:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Linw;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-string v0, "inw"

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

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lhmt;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_6
    const v1, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    sget-object p1, Lnyl;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Linw;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

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

    :goto_11
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    sget-object v0, Lhmt;->d:Lhmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    if-nez p1, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Linw;->c:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/32 :goto_3

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

    :goto_3
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)Lrss;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    :goto_6
    sget-object v0, Linw;->a:Lsdb;

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

    :goto_7
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p0

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

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    :catch_0
    move-exception p1

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

    :goto_a
    sget-object p1, Linw;->a:Lsdb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "3A_DEBUG captureResult is null"

    nop

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

    :goto_d
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    iget-boolean p0, p0, Linw;->b:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Linw;->a:Lsdb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x6aa

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

    :goto_19
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    :goto_1f
    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

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

    :goto_20
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x6a9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "Ignoring unexpected exception %s"

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

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_2a
    const-string v0, "3A_DEBUG 3A debug metadata is expected but missing!"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    sget-object v0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lnyl;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    sget-object v1, Lnyl;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {p1, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    goto :goto_2e

    nop

    nop

    :cond_4
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    const-string v2, "aecDebug"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, [B

    nop

    invoke-static {v0, v2, v1}, Linw;->c(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_5
    sget-object v1, Lnyl;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    sget-object v1, Lnyl;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, [B

    nop

    nop

    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    goto :goto_2f

    nop

    nop

    :cond_6
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    const-string v2, "afDebug"

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    invoke-static {v0, v2, v1}, Linw;->c(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_7
    sget-object v1, Lnyl;->j:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    sget-object v1, Lnyl;->j:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, [B

    nop

    nop

    nop

    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_30

    nop

    :cond_8
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    :goto_30
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    const-string v1, "awbDebug"

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, [B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p1}, Linw;->c(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    nop

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v1, 0x6a2

    nop

    goto/32 :goto_2c

    nop

    nop
.end method

.method public final b(Lpro;Ljava/io/InputStream;Lrss;Llxm;)Ljava/io/InputStream;
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, [B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

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

    :goto_3
    invoke-direct {p3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    return-object p2

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/io/SequenceInputStream;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p4, Llxm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    new-instance p3, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iget p1, p4, Llxm;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Linw;->a(Lpro;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p3}, Lioc;->a([BLrss;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, p2, p3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
