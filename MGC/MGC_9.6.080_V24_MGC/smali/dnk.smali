.class final Ldnk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Lbrd;

.field private final c:Ldnk;


# direct methods
.method public constructor <init>(Lbrd;Ldnk;)V
    .locals 0

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ldnk;->c:Ldnk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldnk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Ldnk;->b:Lbrd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldnk;->c:Ldnk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldnk;->b:Lbrd;

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

    :goto_c
    iget-object v1, p0, Ldnk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ldnk;->a()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_10
    const/4 v0, 0x0

    nop

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

    nop

    :goto_11
    const v0, 0x15

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

    :goto_12
    invoke-interface {v0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    const v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop
.end method
