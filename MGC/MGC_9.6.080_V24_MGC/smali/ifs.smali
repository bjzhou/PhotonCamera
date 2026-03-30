.class public final Lifs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lifr;


# static fields
.field private static final a:Ltbs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ltbs;

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

    :goto_1
    sput-object v0, Lifs;->a:Ltbs;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ltbs;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;I)Lcom/google/googlex/gcam/YuvReadView;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lprw;->c()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Lsgj;->y(I)Lsxp;

    move-result-object p2

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

    :goto_3
    invoke-interface {p1}, Lprw;->b()I

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    goto/32 :goto_f

    nop

    nop

    :goto_c
    sget-object p0, Lifs;->a:Ltbs;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Lprw;->c()I

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v2, v0, v3}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILsyn;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const v1, 0x1f

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

    nop

    :goto_13
    invoke-static {v0, v1, p2}, Lcom/google/googlex/gcam/imageproc/Resample;->a(IILsxp;)[I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    aget v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    invoke-interface {p1}, Lprw;->b()I

    move-result v1

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
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvReadView;->c()Lsyn;

    move-result-object v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x15

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

    :goto_1b
    aget v0, v0, v3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-static {p0, p2, v0}, Lcom/google/googlex/gcam/imageproc/Resample;->c(Lcom/google/googlex/gcam/YuvReadView;Lsxp;Lcom/google/googlex/gcam/YuvWriteView;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1f
    const/4 v3, 0x1

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
.end method
