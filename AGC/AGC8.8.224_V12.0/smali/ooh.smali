.class public final Looh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Looi;

.field private final b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Looi;)V
    .locals 0

    iput-object p1, p0, Looh;->a:Looi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Looi;->a:Looc;

    invoke-interface {p1}, Looc;->a()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Looh;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Looh;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Looh;->a:Looi;

    iget-object v0, v0, Looi;->b:Lomk;

    iget-object v1, p0, Looh;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
