.class public final Lfby;
.super Ljava/lang/Object;


# static fields
.field public static final a:J


# instance fields
.field public final b:Lkaq;

.field public final c:Lfbz;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lfby;->a:J

    return-void
.end method

.method public constructor <init>(Lfbz;Lkap;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfby;->c:Lfbz;

    const-string p1, "ProcessingEvent"

    invoke-interface {p2, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfby;->b:Lkaq;

    iput-object p3, p0, Lfby;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
