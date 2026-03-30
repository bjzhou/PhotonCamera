.class public final synthetic Ltbr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

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

    :goto_1
    iput-object p1, p0, Ltbr;->a:Ljava/lang/Object;

    nop

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput p2, p0, Ltbr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onDataAvailable(ILjava/nio/ByteBuffer;II)V
    .locals 0

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    check-cast p0, Linb;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-static {p3}, Lrrf;->x(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lind;->c()Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p4}, Lcom/google/googlex/gcam/BufferUtils;->d(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    check-cast p0, Lili;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lili;->a(Lfdn;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    const/4 p4, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lind;->c()Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-eq p2, p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

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

    nop

    :goto_e
    move p3, p4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p2}, Lili;->a(Lfdn;)V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    iget-object p0, p0, Ltbr;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    if-eq p1, p4, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_13
    check-cast p0, Lili;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ltbr;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    invoke-direct {p2, p1}, Lfdn;-><init>(Ljava/nio/ByteBuffer;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p2, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    iget p1, p0, Linb;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, p2}, Lfdn;-><init>(Ljava/nio/ByteBuffer;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    move p3, p4

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    :goto_1d
    iget-object p0, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ltbr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Ltbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget p1, p0, Ltbr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    iget p2, p0, Linb;->u:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    new-instance p1, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    check-cast p0, Linb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    invoke-static {p3}, Lrrf;->x(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
