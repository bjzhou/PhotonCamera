.class final Lnfv;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnfs;

.field public final b:Lnfs;

.field public final c:Lj$/util/Spliterator;

.field public final d:Lj$/util/Spliterator;

.field final synthetic e:Lnfw;


# direct methods
.method public constructor <init>(Lnfw;)V
    .locals 1

    iput-object p1, p0, Lnfv;->e:Lnfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnfs;

    invoke-direct {v0}, Lnfs;-><init>()V

    iput-object v0, p0, Lnfv;->a:Lnfs;

    new-instance v0, Lnfs;

    invoke-direct {v0}, Lnfs;-><init>()V

    iput-object v0, p0, Lnfv;->b:Lnfs;

    iget-object v0, p1, Lnfw;->a:Lj$/util/stream/Stream;

    invoke-interface {v0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lnfv;->c:Lj$/util/Spliterator;

    iget-object p1, p1, Lnfw;->b:Lj$/util/stream/Stream;

    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    iput-object p1, p0, Lnfv;->d:Lj$/util/Spliterator;

    return-void
.end method
