.class public final Lnri;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lnrj;

.field private final b:Lpge;

.field private final c:Z


# direct methods
.method public constructor <init>(Lnrj;Lpge;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnri;->a:Lnrj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lnri;->b:Lpge;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-boolean p3, p0, Lnri;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cK()V
    .locals 1

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

    :goto_1
    iget-boolean v0, p0, Lnri;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lnrj;->i(Lpge;)V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnri;->b:Lpge;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnri;->a:Lnrj;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final cU()Ljava/util/concurrent/Executor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnri;->a:Lnrj;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnrj;->d:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final cV()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnri;->a:Lnrj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lnri;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnri;->b:Lpge;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lnrj;->i(Lpge;)V

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method
