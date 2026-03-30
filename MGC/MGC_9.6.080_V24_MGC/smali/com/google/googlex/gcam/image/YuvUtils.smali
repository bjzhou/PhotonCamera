.class public final Lcom/google/googlex/gcam/image/YuvUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)Z
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->u(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long p0, v4, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-static {p1, p0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v7, "src view is null"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

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

    :goto_a
    goto/32 :goto_19

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "dst view is null"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v7}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move p1, v6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    invoke-static {v0, v1, v4, v5}, Lcom/google/googlex/gcam/image/YuvUtils;->yuvToRgbImpl(JJ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    move p0, v6

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const/4 p1, 0x1

    nop

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

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_1e
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    move p0, p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public static native rgbToYuvImpl(JJ)Z
.end method

.method public static native rgbaToYuvImpl(JJ)Z
.end method

.method private static native yuvToRgbImpl(JJ)Z
.end method
