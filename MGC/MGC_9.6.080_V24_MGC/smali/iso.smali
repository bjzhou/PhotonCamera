.class public final Liso;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Liso;->b:Ltxm;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Liso;->a:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Liso;->b()Ljava/lang/Long;

    move-result-object p0

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
    return-object p0

    nop
.end method

.method public final b()Ljava/lang/Long;
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-long/2addr v1, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lnzk;->H(I)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    check-cast v0, Lijl;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    sget-wide v1, Lisn;->a:J

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto :goto_8

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object p0, p0, Liso;->b:Ltxm;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_e
    int-to-long v3, p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lhoh;

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

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lhmu;->ao:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    iget p0, v0, Lijl;->a:I

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

    nop

    :goto_14
    invoke-virtual {p0, v1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Liso;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    const-wide/32 v3, 0x3b9aca00

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

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

    :goto_1b
    mul-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_1d
    const v1, 0x16

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1b

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    const/16 p0, 0x1f4

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    sget-wide v1, Lisn;->b:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
