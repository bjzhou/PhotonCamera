.class public Ldkz;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public b:Z

.field public c:Lj$/time/Instant;

.field final synthetic d:Ldlb;

.field private final e:Lgxz;

.field private final f:Lj$/time/Instant;

.field private final g:Lgya;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lj$/time/Instant;

.field private j:I

.field private k:Lkbf;

.field private l:Lkbh;


# direct methods
.method public constructor <init>(Ldlb;Lgxz;Lj$/time/Instant;)V
    .locals 2

    iput-object p1, p0, Ldkz;->d:Ldlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Ldkz;->b:Z

    sget-object p1, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    iput-object p1, p0, Ldkz;->i:Lj$/time/Instant;

    iput v0, p0, Ldkz;->j:I

    sget-object p1, Lkbf;->b:Lkbf;

    iput-object p1, p0, Ldkz;->k:Lkbf;

    sget-object p1, Lkbh;->a:Lkbh;

    iput-object p1, p0, Ldkz;->l:Lkbh;

    iget-wide v0, p2, Lgxz;->b:J

    iput-wide v0, p0, Ldkz;->a:J

    iput-object p2, p0, Ldkz;->e:Lgxz;

    iput-object p3, p0, Ldkz;->f:Lj$/time/Instant;

    iget-object p1, p2, Lgxz;->d:Lgya;

    iput-object p1, p0, Ldkz;->g:Lgya;

    iput-object p3, p0, Ldkz;->c:Lj$/time/Instant;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->f:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    const-string v1, "CANCELED"

    invoke-virtual {p0, v0, v1}, Ldkz;->d(Lj$/time/Instant;Ljava/lang/String;)V

    iget-object v1, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldkz;->d:Ldlb;

    iget-object v1, v1, Ldlb;->h:Ldli;

    iget-wide v2, p0, Ldkz;->a:J

    invoke-interface {v1, v2, v3, v0}, Ldli;->b(JLj$/time/Instant;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldkz;->d:Ldlb;

    invoke-virtual {p1}, Ldlb;->l()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "canceled"

    invoke-virtual {p0, p1}, Ldkz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->f:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    const-string v1, "DELETED"

    invoke-virtual {p0, v0, v1}, Ldkz;->d(Lj$/time/Instant;Ljava/lang/String;)V

    iget-object v1, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldkz;->d:Ldlb;

    iget-object v1, v1, Ldlb;->h:Ldli;

    iget-wide v2, p0, Ldkz;->a:J

    invoke-interface {v1, v2, v3, v0}, Ldli;->c(JLj$/time/Instant;)V

    return-void

    :cond_0
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ldkz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->f:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ldkz;->d(Lj$/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lj$/time/Instant;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Ldkz;->c:Lj$/time/Instant;

    iget-object v0, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->h:Ldli;

    iget-wide v1, p0, Ldkz;->a:J

    invoke-interface {v0, v1, v2, p1, p2}, Ldli;->d(JLj$/time/Instant;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Ldkz;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->d:Lkaq;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-wide v2, p0, Ldkz;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object v2, p0, Ldkz;->e:Lgxz;

    aput-object v2, v1, p1

    const-string p1, "%s() on shot %d (%s), but it was already finished."

    invoke-static {p1, v1}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->d:Lkaq;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Ldkz;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Ldkz;->e:Lgxz;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "On shot %d (%s) tried to log \'%s\', but shot was already finished."

    invoke-static {p1, v1}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->h(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/Integer;)V
    .locals 5

    iget v0, p0, Ldkz;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldkz;->j:I

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->f:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    iput-object v0, p0, Ldkz;->c:Lj$/time/Instant;

    if-eqz p1, :cond_0

    iget-object v1, p0, Ldkz;->l:Lkbh;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lkbh;->c(I)V

    :cond_0
    iget-object p1, p0, Ldkz;->i:Lj$/time/Instant;

    invoke-virtual {v0, p1}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldkz;->d:Ldlb;

    iget-object p1, p1, Ldlb;->d:Lkaq;

    iget-object v1, p0, Ldkz;->e:Lgxz;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldkz;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShotProgress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lkaq;->b(Ljava/lang/String;)V

    sget-object p1, Ldlb;->b:Lj$/time/Duration;

    invoke-virtual {v0, p1}, Lj$/time/Instant;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object p1

    iput-object p1, p0, Ldkz;->i:Lj$/time/Instant;

    iget-object p1, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldkz;->d:Ldlb;

    iget-object p1, p1, Ldlb;->h:Ldli;

    iget-wide v1, p0, Ldkz;->a:J

    invoke-interface {p1, v1, v2, v0}, Ldli;->e(JLj$/time/Instant;)V

    return-void

    :cond_1
    const-string p1, "makingProgress"

    invoke-virtual {p0, p1}, Ldkz;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public h(Lj$/time/Instant;)V
    .locals 3

    iget-object v0, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldkz;->b:Z

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->h:Ldli;

    iget-wide v1, p0, Ldkz;->a:J

    invoke-interface {v0, v1, v2, p1}, Ldli;->g(JLj$/time/Instant;)V

    return-void

    :cond_0
    const-string p1, "markStuck"

    invoke-virtual {p0, p1}, Ldkz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->f:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    const-string v1, "PERSISTED"

    invoke-virtual {p0, v0, v1}, Ldkz;->d(Lj$/time/Instant;Ljava/lang/String;)V

    iget-object v1, p0, Ldkz;->k:Lkbf;

    invoke-interface {v1}, Lkbf;->a()V

    sget-object v1, Lkbf;->b:Lkbf;

    iput-object v1, p0, Ldkz;->k:Lkbf;

    iget-object v1, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldkz;->d:Ldlb;

    iget-object v1, v1, Ldlb;->h:Ldli;

    iget-wide v2, p0, Ldkz;->a:J

    invoke-interface {v1, v2, v3, v0}, Ldli;->h(JLj$/time/Instant;)V

    return-void

    :cond_0
    const-string v0, "persisted"

    invoke-virtual {p0, v0}, Ldkz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Ldkz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->h:Ldli;

    iget-object v1, p0, Ldkz;->e:Lgxz;

    iget-object v2, p0, Ldkz;->f:Lj$/time/Instant;

    iget-object v3, p0, Ldkz;->g:Lgya;

    invoke-interface {v0, v1, v2, v3}, Ldli;->i(Lgxz;Lj$/time/Instant;Lgya;)V

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->e:Lkbc;

    iget-wide v1, p0, Ldkz;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shot #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    iput-object v0, p0, Ldkz;->k:Lkbf;

    iget-object v0, p0, Ldkz;->d:Ldlb;

    iget-object v0, v0, Ldlb;->e:Lkbc;

    iget-wide v1, p0, Ldkz;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShotProgress #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object v0

    iput-object v0, p0, Ldkz;->l:Lkbh;

    return-void

    :cond_0
    const-string v0, "started"

    invoke-virtual {p0, v0}, Ldkz;->e(Ljava/lang/String;)V

    return-void
.end method
