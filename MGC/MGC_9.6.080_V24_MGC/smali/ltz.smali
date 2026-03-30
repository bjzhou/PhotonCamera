.class public final Lltz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# instance fields
.field public final a:I

.field private final b:Loyd;


# direct methods
.method public constructor <init>(Loyd;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lltz;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lltz;->b:Loyd;

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

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p2, p1}, Llty;-><init>(Lltz;Ljava/util/concurrent/Executor;Lpcm;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Loyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lltz;->b:Loyd;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Llty;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Loyo;-><init>()V

    goto/32 :goto_4

    nop

    nop
.end method

.method public final bridge synthetic cM()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lltz;->b:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Loxv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
