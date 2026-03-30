.class public final synthetic Lkyk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkyy;


# instance fields
.field public final synthetic a:Lkyy;


# direct methods
.method public synthetic constructor <init>(Lkyy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkyk;->a:Lkyy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final E(Lkyw;Lkyq;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p2, p3}, Lkyq;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p3, Lkyq;->s:Lkyq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkyk;->a:Lkyy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1, p2, p3}, Lkyy;->E(Lkyw;Lkyq;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-void

    nop
.end method
