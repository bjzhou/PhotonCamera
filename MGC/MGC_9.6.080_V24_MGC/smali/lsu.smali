.class public final synthetic Llsu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljvy;


# instance fields
.field public final synthetic a:Lows;

.field public final synthetic b:Llsr;


# direct methods
.method public synthetic constructor <init>(Lows;Llsr;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llsu;->a:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llsu;->b:Llsr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(J)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Llsr;->b(J)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Llsu;->b:Llsr;

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

    :goto_4
    invoke-virtual {v0}, Lows;->b()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Llsu;->a:Lows;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method
