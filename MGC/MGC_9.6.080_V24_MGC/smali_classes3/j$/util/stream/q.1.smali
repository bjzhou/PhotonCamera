.class final Lj$/util/stream/q;
.super Lj$/util/stream/r;
.source "SourceFile"


# static fields
.field static final c:Lj$/util/stream/o;

.field static final d:Lj$/util/stream/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v6, Lj$/util/stream/o;

    sget-object v7, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lj$/util/stream/n;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Lj$/util/stream/n;-><init>(I)V

    new-instance v5, Lj$/util/stream/f;

    const/16 v0, 0x9

    invoke-direct {v5, v0}, Lj$/util/stream/f;-><init>(I)V

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/o;-><init>(ZLj$/util/stream/N1;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/q;->c:Lj$/util/stream/o;

    new-instance v6, Lj$/util/stream/o;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lj$/util/stream/n;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Lj$/util/stream/n;-><init>(I)V

    new-instance v5, Lj$/util/stream/f;

    const/16 v0, 0x9

    invoke-direct {v5, v0}, Lj$/util/stream/f;-><init>(I)V

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/o;-><init>(ZLj$/util/stream/N1;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/q;->d:Lj$/util/stream/o;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/r;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/r;->b:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
