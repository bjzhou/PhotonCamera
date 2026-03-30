.class final Lckw;
.super Luan;
.source "PG"


# instance fields
.field a:J

.field b:J

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcky;

.field e:I

.field f:Lcky;


# direct methods
.method public constructor <init>(Lcky;Ltzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lckw;->d:Lcky;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Luan;-><init>(Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object v0, p0, Lckw;->d:Lcky;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lckw;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lckw;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/high16 v0, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Lckw;->e:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    or-int/2addr p1, v0

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

    :goto_11
    const v1, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual/range {v0 .. v5}, Lcky;->c(JJLtzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    move-object v5, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
