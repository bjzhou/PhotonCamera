.class final Lkgi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgd;


# instance fields
.field final synthetic a:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic b:Landroid/media/MediaCodec;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkgi;->b:Landroid/media/MediaCodec;

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

    :goto_1
    iput p3, p0, Lkgi;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkgi;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lkgi;->c:I

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkgi;->b:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop
.end method
