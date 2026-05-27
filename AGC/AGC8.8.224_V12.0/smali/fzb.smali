.class public final Lfzb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Lkbc;

.field public final d:Lnph;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/lifecycle/CameraAsyncTaskRunner"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfzb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lnph;Ljava/util/concurrent/Executor;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzb;->b:Ljava/util/Set;

    iput-object p4, p0, Lfzb;->c:Lkbc;

    iput-object p2, p0, Lfzb;->d:Lnph;

    new-instance p1, Lkbi;

    const-string p2, "CameraStarter"

    invoke-direct {p1, p3, p4, p2}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    iput-object p1, p0, Lfzb;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 6

    iget-object v0, p0, Lfzb;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    iget-object v0, p0, Lfzb;->b:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lefv;->j:Lefv;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lfzb;->c:Lkbc;

    const-string v2, "CameraStarter.start"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lfzb;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcik;

    :try_start_0
    invoke-interface {v2}, Lcik;->bl()Lnou;

    move-result-object v3

    new-instance v4, Leth;

    const/4 v5, 0x7

    invoke-direct {v4, v2, v5}, Leth;-><init>(Lcik;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v3, v4, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lfzb;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "Failed to run task"

    const/16 v5, 0x9dd

    invoke-static {v3, v4, v5, v2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {v2}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfzb;->c:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lefv;->k:Lefv;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lfjd;->d:Lfjd;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/Stream;->count()J

    move-result-wide v1

    iget-object v3, p0, Lfzb;->c:Lkbc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraStarter.startAsync:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v1

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    new-instance v2, Leth;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Leth;-><init>(Lkbf;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Lgij;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lfzb;I)V

    iget-object v2, p0, Lfzb;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
