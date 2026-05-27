.class public final Lj$/nio/file/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Lj$/lang/a;


# instance fields
.field private final a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/x;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    new-instance v0, Lj$/nio/file/v;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/nio/file/v;-><init>(Ljava/util/function/Consumer;I)V

    iget-object p1, p0, Lj$/nio/file/x;->a:Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lj$/lang/Iterable$-EL;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lj$/nio/file/y;

    iget-object v1, p0, Lj$/nio/file/x;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/nio/file/y;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/nio/file/x;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/U;->n(Ljava/util/Iterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
