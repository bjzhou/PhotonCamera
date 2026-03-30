.class public final Lfws;
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

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfws;->b:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

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

    nop

    :goto_3
    iput-object p1, p0, Lfws;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfws;->b()Liof;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Liof;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    new-instance v1, Liof;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfws;->a:Ltxm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    check-cast v0, Ljhf;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfws;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    check-cast p0, Llyv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    invoke-direct {v1, v0, p0, v2}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljhf;->b()Lfdn;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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
.end method
