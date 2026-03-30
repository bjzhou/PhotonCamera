.class public final Lcee;
.super Lbzy;
.source "PG"

# interfaces
.implements Lcss;


# instance fields
.field public a:Lubk;


# direct methods
.method public constructor <init>(Lubk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcee;->a:Lubk;

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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Lcoy;J)Lcpa;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget p3, p2, Lcpp;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-interface {p2, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p2, p0}, Lced;-><init>(Lcpp;Lcee;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p3, p4, v0}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget p4, p2, Lcpp;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lced;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final cl()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcee;->a:Lubk;

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Lcrx;->e(Lcrw;I)Lcva;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
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

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

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
    invoke-virtual {v0, p0, v1}, Lcva;->ak(Lubk;Z)V

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget-object v0, v0, Lcva;->t:Lcva;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcee;->a:Lubk;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    const-string v1, "BlockGraphicsLayerModifier(block="

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
