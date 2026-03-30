.class public final Lcom/google/googlex/gcam/imageproc/Resample;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lryy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

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

    :goto_1
    sget-object v2, Lsxp;->h:Lsxp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lsxp;->i:Lsxp;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/googlex/gcam/imageproc/Resample;->b:Lryy;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    sget-object v0, Lsxp;->f:Lsxp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    invoke-static {v0, v1, v2, v3}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

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

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    sget-object v1, Lsxp;->g:Lsxp;

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

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method

.method public static a(IILsxp;)[I
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/google/googlex/gcam/imageproc/Resample;->b:Lryy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    if-ne v0, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {v1, p0}, [I

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {v0, p2}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    move v1, p1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    if-eq v0, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_a

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lsxp;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    move p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move p2, v6

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    const-string v7, "src is null"

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

    nop

    nop

    :goto_9
    cmp-long p0, v4, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

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

    :goto_d
    return-void

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
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p2}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    iget p0, p1, Lsxp;->j:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    const v1, 0xc

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    goto/16 :goto_7

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    move p0, v6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, v7}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2, p0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, p0, v4, v5}, Lcom/google/googlex/gcam/imageproc/Resample;->rotateInterleavedU8Impl(JIJ)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    cmp-long p0, v0, v2

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

    nop

    nop

    :goto_1f
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    const-string p0, "dst is null"

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

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static c(Lcom/google/googlex/gcam/YuvReadView;Lsxp;Lcom/google/googlex/gcam/YuvWriteView;)V
    .locals 8

    goto/32 :goto_9

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
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    move p2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, p0, v4, v5}, Lcom/google/googlex/gcam/imageproc/Resample;->rotateYuvImpl(JIJ)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v7}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const-string p0, "dst is null"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_d
    const/4 v6, 0x0

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

    :goto_e
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    move p0, v6

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move p0, p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-static {p2}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long p0, v4, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    goto :goto_10

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    :goto_1b
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    iget p0, p1, Lsxp;->j:I

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

    :goto_1e
    invoke-static {p2, p0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v7, "src is null"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop
.end method

.method public static native downsampleImpl(JIJ)Z
.end method

.method public static native resampleLanczosYuvImpl(JFJ)Z
.end method

.method private static native rotateInterleavedU8Impl(JIJ)Z
.end method

.method private static native rotateYuvImpl(JIJ)Z
.end method
