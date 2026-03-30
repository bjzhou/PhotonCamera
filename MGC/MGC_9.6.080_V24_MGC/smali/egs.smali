.class public final Legs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ltxs;

.field public final b:Lfdn;


# direct methods
.method public constructor <init>(Lfdn;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/16 v0, 0xa

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lmx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Legs;->b:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Lmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Legs;->a:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {v0, p1}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

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
    invoke-interface {p0}, Leib;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Legs;->b:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
