.class abstract Lojq;
.super Lojs;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field final synthetic c:Lojy;


# direct methods
.method protected constructor <init>(Lojy;ILandroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lojq;->c:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput p2, p0, Lojq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    :goto_5
    iput-object p3, p0, Lojq;->b:Landroid/os/Bundle;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v0}, Lojs;-><init>(Lojy;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected abstract a(Lofz;)V
.end method

.method protected final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method protected abstract c()Z
.end method

.method protected final bridge synthetic d()V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    const-string v1, "pendingIntent"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-virtual {p0, v2}, Lojq;->a(Lofz;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    iget-object v0, p0, Lojq;->b:Landroid/os/Bundle;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lojq;->c()Z

    move-result v0

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iget-object v0, p0, Lojq;->c:Lojy;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    new-instance v0, Lofz;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

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

    :goto_c
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lojq;->a(Lofz;)V

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Landroid/app/PendingIntent;

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v2}, Lojy;->F(Lojy;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v2, Lofz;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lojq;->c:Lojy;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v2, v0, v1}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    const v0, 0x20

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v2}, Lojy;->F(Lojy;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lojq;->a:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Lojq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0x8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v2, v1}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
