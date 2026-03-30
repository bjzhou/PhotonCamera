.class final Lgdk;
.super Lqka;
.source "PG"


# instance fields
.field final synthetic a:Ltat;


# direct methods
.method public constructor <init>(Lqgr;Ltat;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lgdk;->a:Ltat;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2, p1, v0}, Lqka;-><init>(ILqgr;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x4

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

    :goto_4
    const/4 v0, 0x3

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(ILjava/nio/ByteBuffer;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p1, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Ltat;->c:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgdk;->a:Ltat;

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

    :goto_8
    const/4 v1, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    const-string p1, "Invalid index."

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Ltat;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    const v1, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    iget p0, p0, Ltat;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_1d
    if-ne p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lgdk;->a:Ltat;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_29
    iget p0, p0, Ltat;->d:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lgdk;->a:Ltat;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lgdk;->a:Ltat;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_27

    nop

    nop

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    nop
.end method
