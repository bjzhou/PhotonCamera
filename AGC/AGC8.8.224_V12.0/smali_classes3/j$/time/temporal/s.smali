.class public final Lj$/time/temporal/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final h:Lj$/time/temporal/TemporalUnit;


# instance fields
.field private final a:Lj$/time/c;

.field private final b:I

.field private final transient c:Lj$/time/temporal/l;

.field private final transient d:Lj$/time/temporal/l;

.field private final transient e:Lj$/time/temporal/l;

.field private final transient f:Lj$/time/temporal/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/temporal/s;->g:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lj$/time/temporal/s;

    sget-object v2, Lj$/time/c;->MONDAY:Lj$/time/c;

    invoke-direct {v0, v2, v1}, Lj$/time/temporal/s;-><init>(Lj$/time/c;I)V

    sget-object v0, Lj$/time/c;->SUNDAY:Lj$/time/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/time/temporal/s;->f(Lj$/time/c;I)Lj$/time/temporal/s;

    sget-object v0, Lj$/time/temporal/i;->d:Lj$/time/temporal/TemporalUnit;

    sput-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>(Lj$/time/c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lj$/time/temporal/r;->k(Lj$/time/temporal/s;)Lj$/time/temporal/r;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/s;->c:Lj$/time/temporal/l;

    invoke-static {p0}, Lj$/time/temporal/r;->m(Lj$/time/temporal/s;)Lj$/time/temporal/r;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/l;

    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-static {p0}, Lj$/time/temporal/r;->n(Lj$/time/temporal/s;)Lj$/time/temporal/r;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/l;

    invoke-static {p0}, Lj$/time/temporal/r;->l(Lj$/time/temporal/s;)Lj$/time/temporal/r;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/s;->f:Lj$/time/temporal/l;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Lj$/time/temporal/s;->a:Lj$/time/c;

    iput p2, p0, Lj$/time/temporal/s;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minimal number of days is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstDayOfWeek"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static bridge synthetic a(Lj$/time/temporal/s;)Lj$/time/temporal/l;
    .locals 0

    iget-object p0, p0, Lj$/time/temporal/s;->c:Lj$/time/temporal/l;

    return-object p0
.end method

.method static bridge synthetic b(Lj$/time/temporal/s;)Lj$/time/temporal/l;
    .locals 0

    iget-object p0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/l;

    return-object p0
.end method

.method public static f(Lj$/time/c;I)Lj$/time/temporal/s;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/s;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/s;

    if-nez v2, :cond_0

    new-instance v2, Lj$/time/temporal/s;

    invoke-direct {v2, p0, p1}, Lj$/time/temporal/s;-><init>(Lj$/time/c;I)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lj$/time/temporal/s;

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final c()Lj$/time/temporal/l;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->c:Lj$/time/temporal/l;

    return-object v0
.end method

.method public final d()Lj$/time/c;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->a:Lj$/time/c;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lj$/time/temporal/s;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/temporal/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lj$/time/temporal/s;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final g()Lj$/time/temporal/l;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->f:Lj$/time/temporal/l;

    return-object v0
.end method

.method public final h()Lj$/time/temporal/l;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/l;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/temporal/s;->a:Lj$/time/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lj$/time/temporal/s;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lj$/time/temporal/l;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/l;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/temporal/s;->a:Lj$/time/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeekFields["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lj$/time/temporal/s;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
