.class public final Lijg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsya;

.field public static final b:Lsya;

.field public static final c:Lsya;

.field public static final d:Lsya;

.field public static final e:J


# instance fields
.field private final f:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lijg;->b:Lsya;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    :goto_4
    sput-object v0, Lijg;->a:Lsya;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lsya;->b:Lsya;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lijg;->c:Lsya;

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

    :goto_8
    sput-object v0, Lijg;->d:Lsya;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    or-long/2addr v0, v2

    nop

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

    :goto_b
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_INPUT_METERING_get()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lsya;->f:Lsya;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_INPUT_PAYLOAD_get()J

    move-result-wide v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_METADATA_get()J

    move-result-wide v2

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

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    sput-wide v0, Lijg;->e:J

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

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_14
    or-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    sget-object v0, Lsya;->f:Lsya;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lsya;->d:Lsya;

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

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lijg;->f:Lhoh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Lpnu;Lkxj;)Lcom/google/googlex/gcam/PostviewParams;
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    int-to-float v1, p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    and-int/lit8 p0, p0, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

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

    :goto_3
    iget-object p1, p1, Lkxj;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    iget p0, v1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_7
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    :goto_a
    goto/32 :goto_30

    nop

    nop

    :goto_b
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Lpby;->j(Lpck;)Lpby;

    move-result-object p1

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
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

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

    nop

    :goto_13
    new-instance v0, Lcom/google/googlex/gcam/PostviewParams;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_15
    const v2, 0x3f866666    # 1.05f

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_16
    div-float/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    iget p0, v1, Lpck;->a:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Lpck;->b:I

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
    iget p1, v1, Lpck;->b:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PostviewParams;->b(Lsya;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    move v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

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

    :goto_1d
    invoke-direct {v1, p0, p1}, Lpck;-><init>(II)V

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_31

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gt v1, p0, :cond_1

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

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_23
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float p0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iget-object p0, p0, Lpou;->b:Lpck;

    nop

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

    :goto_27
    move p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lpby;->c()F

    move-result p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-gt p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Lpck;

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

    :goto_2b
    div-float/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2c
    move p0, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2f
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

    nop

    :goto_30
    return-object v0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3d

    nop

    nop

    :goto_32
    int-to-float v1, p0

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

    :goto_33
    sget-object v1, Lijg;->a:Lsya;

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

    :goto_34
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_35
    and-int/lit8 p1, p1, -0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-float/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_37
    invoke-static {p0}, Ltbt;->i(Lpnu;)Lpou;

    move-result-object p0

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

    :goto_38
    const/high16 v3, 0x40c00000    # 6.0f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_39
    goto :goto_2d

    nop

    nop

    :goto_3a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0}, Lcom/google/googlex/gcam/PostviewParams;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v1, p0, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_4
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "yyyyMMdd_HHmmss_SSS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const-string v1, "UTC"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "XXXX_"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

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

    :goto_a
    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2, p3}, Lijg;->c(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_f
    new-instance p3, Ljava/io/File;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    const-string p2, "Gcam debug directory not valid or doesn\'t exist: "

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

    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_14
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    const-string p2, "Gcam debug data folder already exists: "

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p0

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

    nop

    :goto_20
    const-string p2, "Could not create Gcam debug data folder: "

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "gcam_debug"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2f

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ljava/io/IOException;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p0, Ljava/lang/RuntimeException;

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

    nop

    :goto_31
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lijg;->f:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

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

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lhne;->p:Lhmn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lils;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Lils;->d:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lijg;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

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
