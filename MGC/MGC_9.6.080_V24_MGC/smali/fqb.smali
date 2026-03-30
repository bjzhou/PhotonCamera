.class public final Lfqb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjf;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Ljava/io/InputStream;Lfmm;)I
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    invoke-virtual {p1, p0}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result p2

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    return p2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ldzi;->a(Ljava/lang/String;)Ldzg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ldzi;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "Orientation"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ldzi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/nio/ByteBuffer;Lfmm;)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Lfti;-><init>(Ljava/nio/ByteBuffer;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lfti;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p2}, Lfqb;->c(Ljava/io/InputStream;Lfmm;)I

    move-result p0

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

    :goto_3
    sget v0, Lftj;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
