.class public final synthetic Lszk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lszn;

.field public final synthetic b:Lszh;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/ar/core/Frame;

.field public final synthetic e:Lszf;

.field public final synthetic f:Lcom/google/googlex/gcam/YuvWriteView;

.field public final synthetic g:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lszn;Lszh;ILcom/google/ar/core/Frame;Lszf;Lcom/google/googlex/gcam/YuvWriteView;Landroid/util/Size;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p5, p0, Lszk;->e:Lszf;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lszk;->a:Lszn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object p7, p0, Lszk;->g:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lszk;->c:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lszk;->b:Lszh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lszk;->f:Lcom/google/googlex/gcam/YuvWriteView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lszk;->d:Lcom/google/ar/core/Frame;

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
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_11

    nop

    nop

    :goto_0
    iget-object v4, p0, Lszk;->e:Lszf;

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

    :goto_1
    iget-object v5, p0, Lszk;->f:Lcom/google/googlex/gcam/YuvWriteView;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    iget-object v3, p0, Lszk;->d:Lcom/google/ar/core/Frame;

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

    :goto_5
    invoke-virtual/range {v0 .. v6}, Lszn;->d(Lszh;ILcom/google/ar/core/Frame;Lszf;Lcom/google/googlex/gcam/YuvWriteView;Landroid/util/Size;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Lszk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v0, p0, Lszk;->a:Lszn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, p0, Lszk;->g:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object v1, p0, Lszk;->b:Lszh;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
