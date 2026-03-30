.class public final Lgrb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lrss;

.field public b:Loze;

.field private c:Lgrl;

.field private d:I

.field private e:B


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

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

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgrb;->a:Lrss;

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
.method public final a()Lgrc;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Lgrb;->a:Lrss;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    iget-byte v0, p0, Lgrb;->e:B

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgrb;->c:Lgrl;

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

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Lgrb;->d:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lgrb;->b:Loze;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, v0, v3, p0, v1}, Lgra;-><init>(Lgrl;Lrss;ILoze;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    :goto_18
    new-instance v2, Lgra;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lgrl;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgrb;->c:Lgrl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-byte p1, p0, Lgrb;->e:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lgrb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
