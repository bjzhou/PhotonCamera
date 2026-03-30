.class public final Lqlk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqlj;


# instance fields
.field public final b:Lsuu;

.field private final c:Lqle;


# direct methods
.method public constructor <init>(Lqle;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqlk;->c:Lqle;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqlk;->b:Lsuu;

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

    :goto_4
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqkn;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0, v1}, Lqle;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object v1, p1, Lqkn;->c:Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lqkn;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    iget-object v0, p1, Lqkn;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqlk;->c:Lqle;

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x8

    nop

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

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public final b(Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqlk;->b:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method
