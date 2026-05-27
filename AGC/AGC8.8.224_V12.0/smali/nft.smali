.class public final synthetic Lnft;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lnfw;

.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lnfw;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnft;->a:Lnfw;

    iput-object p2, p0, Lnft;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lnft;->a:Lnfw;

    new-instance v1, Lnfv;

    invoke-direct {v1, v0}, Lnfv;-><init>(Lnfw;)V

    new-instance v0, Lnfu;

    iget-object v2, v1, Lnfv;->c:Lj$/util/Spliterator;

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-object v4, v1, Lnfv;->d:Lj$/util/Spliterator;

    invoke-interface {v4}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnfu;-><init>(Lnfv;J)V

    return-object v0
.end method
