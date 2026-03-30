.class final Lfiu;
.super Ljava/io/ByteArrayOutputStream;
.source "PG"


# instance fields
.field final synthetic a:Lfiv;


# direct methods
.method public constructor <init>(Lfiv;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfiu;->a:Lfiv;

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
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, -0x1

    nop

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

    :goto_1
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lfiu;->count:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget v0, p0, Lfiu;->count:I

    nop

    nop

    :goto_5
    :try_start_0
    new-instance v1, Ljava/lang/String;

    nop

    iget-object v2, p0, Lfiu;->buf:[B

    nop

    nop

    nop

    iget-object p0, p0, Lfiu;->a:Lfiv;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfiv;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-direct {v1, v2, v3, v0, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_8
    iget v0, p0, Lfiu;->count:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    aget-byte v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_e
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lfiu;->buf:[B

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lfiu;->count:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_5

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0xd

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

    nop

    :goto_15
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

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

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop
.end method
