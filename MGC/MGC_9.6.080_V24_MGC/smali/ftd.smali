.class public final Lftd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjl;


# static fields
.field public static final synthetic b:I


# instance fields
.field private final c:I

.field private final d:Lfjl;


# direct methods
.method public constructor <init>(ILfjl;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lftd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p2, p0, Lftd;->d:Lfjl;

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
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Lfjl;->a(Ljava/security/MessageDigest;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget p0, p0, Lftd;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lftd;->d:Lfjl;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, p1, Lftd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

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

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lftd;->d:Lfjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    instance-of v0, p1, Lftd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    if-eq v0, v2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Lfjl;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    iget v0, p0, Lftd;->c:I

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

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_16
    check-cast p1, Lftd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Lftd;->d:Lfjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object v0, p0, Lftd;->d:Lfjl;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Lftw;->d(Ljava/lang/Object;I)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lftd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
