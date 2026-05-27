.class public final Ldxs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkaf;

.field public static final b:Lkaf;

.field public static final c:Lkaf;

.field public static final d:Lkaf;

.field public static final e:Lkaf;

.field public static final f:Lkaf;

.field public static final g:Lkaf;

.field public static final h:Lkaf;

.field public static final i:J

.field public static final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/agc/LensSettings;->getMicroVideoWeight()I

    move-result v0

    invoke-static {}, Lcom/agc/LensSettings;->getMicroVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->a:Lkaf;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->b:Lkaf;

    const/16 v0, 0x800

    const/16 v1, 0x600

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->c:Lkaf;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->d:Lkaf;

    const/16 v0, 0xfc0

    const/16 v1, 0xbd0

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v1

    sput-object v1, Ldxs;->e:Lkaf;

    const/16 v1, 0x8dc

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->f:Lkaf;

    const/16 v0, 0xb40

    const/16 v1, 0x870

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->g:Lkaf;

    const/16 v0, 0xf00

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldxs;->h:Lkaf;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    div-long/2addr v0, v4

    sput-wide v0, Ldxs;->i:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Ldxs;->j:J

    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x3e6eeeef

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    return-void
.end method
