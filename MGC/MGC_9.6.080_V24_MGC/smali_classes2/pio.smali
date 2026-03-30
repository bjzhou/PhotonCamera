.class public final Lpio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpio;->b:Ltxm;

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpio;->a:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lpio;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    :goto_0
    invoke-virtual {p0}, Lpio;->b()Lhdn;

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

    nop

    nop

    nop

    nop
.end method

.method public final b()Lhdn;
    .locals 8

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    move-object v0, v7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lpio;->a:Ltxm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    const v1, 0x9

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

    :goto_7
    new-instance v7, Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object v3, p0, Lpio;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lpio;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v5, 0x0

    nop

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

    :goto_d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v7

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

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

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const/4 v4, 0x0

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

    :goto_12
    invoke-direct/range {v0 .. v6}, Lhdn;-><init>(Ltxm;Ltxm;Ltxm;[B[B[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
