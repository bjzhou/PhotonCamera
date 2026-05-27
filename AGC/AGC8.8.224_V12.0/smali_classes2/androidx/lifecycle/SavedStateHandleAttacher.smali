.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field private final a:Lalm;


# direct methods
.method public constructor <init>(Lalm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Lalm;

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 1

    sget-object v0, Lakq;->ON_CREATE:Lakq;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lakv;->getLifecycle()Laks;

    move-result-object p1

    invoke-virtual {p1, p0}, Laks;->c(Laku;)V

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Lalm;

    invoke-virtual {p1}, Lalm;->b()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Next event must be ON_CREATE, it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
