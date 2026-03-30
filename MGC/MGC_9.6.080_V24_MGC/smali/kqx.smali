.class public final Lkqx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksl;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkqx;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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

    :goto_1
    new-instance v0, Lkqw;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lkqw;-><init>(Lkqx;Llxa;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Llko;)Lksk;
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Lkqx;->c(Llko;)Lkqw;

    move-result-object p0

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
.end method

.method public final c(Llko;)Lkqw;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v0, Lkqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lkqw;-><init>(Lkqx;Llxa;)V

    goto/32 :goto_2

    nop

    nop
.end method
