.class final Ljvf;
.super Ljava/lang/Object;

# interfaces
.implements Ljve;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkad;)V
    .locals 0

    invoke-interface {p1}, Lkad;->close()V

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-interface {v0}, Lkad;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method
