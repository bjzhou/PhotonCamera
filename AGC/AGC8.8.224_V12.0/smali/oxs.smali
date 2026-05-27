.class public final Loxs;
.super Ljava/lang/Object;


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static final e:Loxq;

.field public static final f:Loxq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    invoke-static {v0, v1, v2}, Lljz;->F(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Loxs;->a:J

    sget v0, Loxc;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lonm;->f(II)I

    move-result v0

    const-string v1, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v0, v2, v3, v4}, Lljz;->E(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Loxs;->b:I

    const-string v0, "kotlinx.coroutines.scheduler.max.pool.size"

    const v1, 0x1ffffe

    const/4 v4, 0x4

    invoke-static {v0, v1, v3, v1, v4}, Lljz;->E(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Loxs;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v4, 0x3c

    invoke-static {v1, v4, v5}, Lljz;->F(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Loxs;->d:J

    new-instance v0, Loxq;

    invoke-direct {v0, v3}, Loxq;-><init>(I)V

    sput-object v0, Loxs;->e:Loxq;

    new-instance v0, Loxq;

    invoke-direct {v0, v2}, Loxq;-><init>(I)V

    sput-object v0, Loxs;->f:Loxq;

    return-void
.end method
