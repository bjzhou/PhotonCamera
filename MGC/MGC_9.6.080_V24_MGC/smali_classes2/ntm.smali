.class public final Lntm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lntm;->a:Ltxm;

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    :goto_0
    invoke-virtual {p0}, Lntm;->b()Lohe;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Lohe;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lohd;->a:Lohd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lntm;->a:Ltxm;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, v2, v3, v1}, Lohe;-><init>(Landroid/content/Context;Lnar;Logy;Lohd;)V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Losn;->a:Lnar;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Liai;->b()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Losm;->b:Losm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    new-instance v0, Lohe;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Liai;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
