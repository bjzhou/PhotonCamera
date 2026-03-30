.class public abstract Lkhl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field b:Lrss;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lkhl;->b:Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lkhl;->a:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lkhn;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    instance-of v0, p0, Lkhn;

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

    nop

    :goto_2
    check-cast p0, Lkhn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()Lkho;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p0, Lkho;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p0, Lkho;

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

    nop
.end method

.method public abstract c()Lrss;
.end method

.method public abstract d()Lsay;
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lkhl;->f()Z

    move-result p0

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
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract f()Z
.end method
