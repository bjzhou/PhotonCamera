.class public final synthetic Ledw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ledx;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, v2, Lsbh;->c:I

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

    :goto_1
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_5
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    move-object v2, p0

    nop

    nop

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

    :goto_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

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

    :goto_d
    goto :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    return-object p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, Ldvz;->e(ZLjava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget v1, v2, Lsbh;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move p0, v0

    nop

    nop

    :goto_16
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    if-lt p1, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v2, Lsbh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v0, v1, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    :goto_22
    check-cast v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    move p1, v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, 0x1

    nop

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

    :goto_25
    add-int/lit8 v2, v2, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_31

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1}, Ldwa;->f(Ljava/nio/ByteBuffer;)Lryb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x12

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    :goto_30
    move v1, p1

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    const v1, 0x1c

    nop

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

    nop

    :goto_33
    const-string v1, "The input buffer should have position set to 0."

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
