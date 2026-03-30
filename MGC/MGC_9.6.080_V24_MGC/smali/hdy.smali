.class public final Lhdy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lhee;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lhee;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhdy;->a:Lhee;

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
    return-void

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

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget v2, p0, Lhdy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Reason"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, p0}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget v2, p0, Lhdy;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lhdy;->a:Lhee;

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

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const-string v1, "Reboot count"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const-string v1, "Impressions before reboot"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const-string v1, "Impressions after reboot"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lhdy;->d:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
