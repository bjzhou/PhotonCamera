.class public final Lrzk;
.super Lrwr;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lrsk;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrsk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lrzk;->b:Lrsk;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrwr;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrzk;->a:Ljava/lang/Iterable;

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

    nop

    nop
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrzk;->b:Lrsk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Lrgw;->U(Ljava/util/Iterator;Lrsk;)Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrzk;->a:Ljava/lang/Iterable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lryb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
