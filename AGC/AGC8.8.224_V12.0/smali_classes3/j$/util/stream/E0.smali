.class abstract Lj$/util/stream/E0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/X1;


# static fields
.field private static final a:Lj$/util/stream/h0;

.field private static final b:Lj$/util/stream/L;

.field private static final c:Lj$/util/stream/M;

.field private static final d:Lj$/util/stream/K;

.field private static final e:[I

.field private static final f:[J

.field private static final g:[D


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/util/stream/h0;

    invoke-direct {v0}, Lj$/util/stream/h0;-><init>()V

    sput-object v0, Lj$/util/stream/E0;->a:Lj$/util/stream/h0;

    new-instance v0, Lj$/util/stream/f0;

    invoke-direct {v0}, Lj$/util/stream/f0;-><init>()V

    sput-object v0, Lj$/util/stream/E0;->b:Lj$/util/stream/L;

    new-instance v0, Lj$/util/stream/g0;

    invoke-direct {v0}, Lj$/util/stream/g0;-><init>()V

    sput-object v0, Lj$/util/stream/E0;->c:Lj$/util/stream/M;

    new-instance v0, Lj$/util/stream/e0;

    invoke-direct {v0}, Lj$/util/stream/e0;-><init>()V

    sput-object v0, Lj$/util/stream/E0;->d:Lj$/util/stream/K;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lj$/util/stream/E0;->e:[I

    new-array v1, v0, [J

    sput-object v1, Lj$/util/stream/E0;->f:[J

    new-array v0, v0, [D

    sput-object v0, Lj$/util/stream/E0;->g:[D

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a()[D
    .locals 1

    sget-object v0, Lj$/util/stream/E0;->g:[D

    return-object v0
.end method

.method static bridge synthetic e()[I
    .locals 1

    sget-object v0, Lj$/util/stream/E0;->e:[I

    return-object v0
.end method

.method static bridge synthetic f()[J
    .locals 1

    sget-object v0, Lj$/util/stream/E0;->f:[J

    return-object v0
.end method

.method static g(JLjava/util/function/IntFunction;)Lj$/util/stream/J;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Lj$/util/stream/j0;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/j0;-><init>(JLjava/util/function/IntFunction;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/A0;

    invoke-direct {v0}, Lj$/util/stream/A0;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static h(Lj$/util/stream/F;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 5

    invoke-virtual {p0, p1}, Lj$/util/stream/F;->w(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    invoke-interface {p3, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    new-instance p3, Lj$/util/stream/y0;

    invoke-direct {p3, p1, p0, p2}, Lj$/util/stream/y0;-><init>(Lj$/util/Spliterator;Lj$/util/stream/F;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/S;

    invoke-direct {p0, p2}, Lj$/util/stream/S;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/U;

    invoke-direct {v0, p1, p0, p3}, Lj$/util/stream/U;-><init>(Lj$/util/Spliterator;Lj$/util/stream/F;Ljava/util/function/IntFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/O;

    if-eqz p2, :cond_2

    invoke-static {p0, p3}, Lj$/util/stream/E0;->m(Lj$/util/stream/O;Ljava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static i(Lj$/util/stream/F;Lj$/util/Spliterator;Z)Lj$/util/stream/L;
    .locals 8

    invoke-virtual {p0, p1}, Lj$/util/stream/F;->w(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "Stream size exceeds max array size"

    const-wide/32 v5, 0x7ffffff7

    cmp-long v7, v0, v2

    if-ltz v7, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long p2, v0, v5

    if-gez p2, :cond_0

    long-to-int p2, v0

    new-array p2, p2, [I

    new-instance v0, Lj$/util/stream/w0;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/w0;-><init>(Lj$/util/Spliterator;Lj$/util/stream/F;[I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/k0;

    invoke-direct {p0, p2}, Lj$/util/stream/k0;-><init>([I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/U;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lj$/util/stream/U;-><init>(ILj$/util/Spliterator;Lj$/util/stream/F;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/L;

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lj$/util/stream/O;->u()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-gez v0, :cond_2

    long-to-int p2, p1

    new-array p1, p2, [I

    new-instance p2, Lj$/util/stream/B0;

    invoke-direct {p2, p0, p1}, Lj$/util/stream/B0;-><init>(Lj$/util/stream/L;[I)V

    invoke-virtual {p2}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/k0;

    invoke-direct {p0, p1}, Lj$/util/stream/k0;-><init>([I)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static j(Lj$/util/stream/F;Lj$/util/Spliterator;Z)Lj$/util/stream/M;
    .locals 8

    invoke-virtual {p0, p1}, Lj$/util/stream/F;->w(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "Stream size exceeds max array size"

    const-wide/32 v5, 0x7ffffff7

    cmp-long v7, v0, v2

    if-ltz v7, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long p2, v0, v5

    if-gez p2, :cond_0

    long-to-int p2, v0

    new-array p2, p2, [J

    new-instance v0, Lj$/util/stream/x0;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/x0;-><init>(Lj$/util/Spliterator;Lj$/util/stream/F;[J)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/t0;

    invoke-direct {p0, p2}, Lj$/util/stream/t0;-><init>([J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/U;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lj$/util/stream/U;-><init>(ILj$/util/Spliterator;Lj$/util/stream/F;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/M;

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lj$/util/stream/O;->u()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-gez v0, :cond_2

    long-to-int p2, p1

    new-array p1, p2, [J

    new-instance p2, Lj$/util/stream/B0;

    invoke-direct {p2, p0, p1}, Lj$/util/stream/B0;-><init>(Lj$/util/stream/M;[J)V

    invoke-virtual {p2}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/t0;

    invoke-direct {p0, p1}, Lj$/util/stream/t0;-><init>([J)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method static k(Lj$/util/stream/v1;Lj$/util/stream/O;Lj$/util/stream/O;)Lj$/util/stream/Q;
    .locals 2

    sget-object v0, Lj$/util/stream/P;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p0, Lj$/util/stream/W;

    check-cast p1, Lj$/util/stream/K;

    check-cast p2, Lj$/util/stream/K;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/W;-><init>(Lj$/util/stream/K;Lj$/util/stream/K;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unknown shape "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lj$/util/stream/Y;

    check-cast p1, Lj$/util/stream/M;

    check-cast p2, Lj$/util/stream/M;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/Y;-><init>(Lj$/util/stream/M;Lj$/util/stream/M;)V

    return-object p0

    :cond_2
    new-instance p0, Lj$/util/stream/X;

    check-cast p1, Lj$/util/stream/L;

    check-cast p2, Lj$/util/stream/L;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/X;-><init>(Lj$/util/stream/L;Lj$/util/stream/L;)V

    return-object p0

    :cond_3
    new-instance p0, Lj$/util/stream/a0;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a0;-><init>(Lj$/util/stream/O;Lj$/util/stream/O;)V

    return-object p0
.end method

.method static l(Lj$/util/stream/v1;)Lj$/util/stream/i0;
    .locals 2

    sget-object v0, Lj$/util/stream/P;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p0, Lj$/util/stream/E0;->d:Lj$/util/stream/K;

    :goto_0
    check-cast p0, Lj$/util/stream/i0;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown shape "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lj$/util/stream/E0;->c:Lj$/util/stream/M;

    goto :goto_0

    :cond_2
    sget-object p0, Lj$/util/stream/E0;->b:Lj$/util/stream/L;

    goto :goto_0

    :cond_3
    sget-object p0, Lj$/util/stream/E0;->a:Lj$/util/stream/h0;

    return-object p0
.end method

.method public static m(Lj$/util/stream/O;Ljava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 5

    invoke-interface {p0}, Lj$/util/stream/O;->u()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/C0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/O;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/S;

    invoke-direct {p0, p1}, Lj$/util/stream/S;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method static n(J)Lj$/util/stream/H;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Lj$/util/stream/l0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/l0;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/m0;

    invoke-direct {v0}, Lj$/util/stream/m0;-><init>()V

    :goto_0
    return-object v0
.end method

.method static o(J)Lj$/util/stream/I;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Lj$/util/stream/u0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/u0;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/v0;

    invoke-direct {v0}, Lj$/util/stream/v0;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public synthetic b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/P0;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/F;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/M0;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/E0;->p()Lj$/util/stream/M0;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    check-cast v0, Lj$/util/stream/M0;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract p()Lj$/util/stream/M0;
.end method
