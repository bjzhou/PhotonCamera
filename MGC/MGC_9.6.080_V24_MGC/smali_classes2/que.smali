.class public abstract Lque;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected final a:Luqi;


# direct methods
.method public constructor <init>(Luqi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lque;->a:Luqi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)J
.end method

.method public abstract b(Ljava/lang/Long;)Luqi;
.end method

.method public abstract c(Ljava/lang/Long;)Luqi;
.end method

.method public abstract d()Z
.end method

.method public final e()Luqi;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    iput-wide v1, p0, Luqi;->c:J

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

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, v0, Ltkb;->b:Ltkg;

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

    :goto_9
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    sget-object v1, Luqi;->a:Luqi;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Luqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Lque;->b(Ljava/lang/Long;)Luqi;

    move-result-object p0

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

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x5

    nop

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

    nop

    :goto_17
    iget v1, p0, Luqi;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    or-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Luqi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Luqi;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
