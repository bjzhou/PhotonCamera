.class public final Lsyp;
.super Lcom/google/googlex/gcam/YuvWriteView;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/googlex/gcam/YuvImage;

.field private final d:Lcom/google/googlex/gcam/YuvImage;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/googlex/gcam/YuvImage;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lsyp;->d:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_1(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

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

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lsyp;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

    nop

    goto/32 :goto_4

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop
.end method
