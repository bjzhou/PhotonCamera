.class public final Lstc;
.super Lssr;
.source "PG"


# instance fields
.field private b:Lstb;


# direct methods
.method public constructor <init>(Lrxq;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    new-instance p1, Lsta;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p1, p0, p4, p3}, Lsta;-><init>(Lstc;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2, v0}, Lssr;-><init>(Lrxq;ZZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lssr;->q()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lstc;->b:Lstb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrxq;ZLjava/util/concurrent/Executor;Lssw;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lssr;->q()V

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

    :goto_3
    new-instance p1, Lssz;

    nop

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

    nop

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lssr;-><init>(Lrxq;ZZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lstc;->b:Lstb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p1, p0, p4, p3}, Lssz;-><init>(Lstc;Lssw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5

    nop

    nop
.end method

.method static bridge synthetic t(Lstc;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object v0, p0, Lstc;->b:Lstb;

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
    return-void

    nop

    nop
.end method


# virtual methods
.method public final h(ILjava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final j()V
    .locals 0

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lstc;->b:Lstb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lstb;->f()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final n()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lsug;->h()V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lstc;->b:Lstb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final s(I)V
    .locals 1

    goto/32 :goto_4

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
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Lssr;->s(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lstc;->b:Lstb;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
