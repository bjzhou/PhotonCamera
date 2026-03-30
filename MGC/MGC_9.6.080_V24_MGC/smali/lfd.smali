.class public final Llfd;
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

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Llfd;->c:Ltxm;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llfd;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Llfd;->b:Ltxm;

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
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Llfd;->b()Lhdu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public final b()Lhdu;
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Llfd;->a:Ltxm;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    move-object v0, v6

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
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

    :goto_7
    iget-object v2, p0, Llfd;->b:Ltxm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const/4 v5, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v5}, Lhdu;-><init>(Ltxm;Ltxm;Ltxm;[B[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Llfd;->c:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v6, Lhdu;

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

    :goto_f
    return-object v6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
