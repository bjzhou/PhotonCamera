.class public abstract Lpku;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final b:Lpmm;

.field protected final c:Lsui;


# direct methods
.method public constructor <init>(Lpmm;Lsui;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpku;->c:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    iput-object p1, p0, Lpku;->b:Lpmm;

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
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpku;->c:Lsui;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpku;->c:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
