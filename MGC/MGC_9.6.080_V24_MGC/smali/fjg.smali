.class public final Lfjg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjk;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfjg;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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
    iput p2, p0, Lfjg;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfjf;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lftj;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/io/InputStream;

    nop

    nop

    invoke-interface {p1, v0}, Lfjf;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_b

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_1
    iget-object v0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    nop

    invoke-interface {p1, v0}, Lfjf;->b(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lftj;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lfjg;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfjg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    :goto_11
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Ljava/io/InputStream;

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
.end method
