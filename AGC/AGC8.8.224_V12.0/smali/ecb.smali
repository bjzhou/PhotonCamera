.class public final Lecb;
.super Ljava/lang/Object;


# static fields
.field public static final a:J


# instance fields
.field public b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lecb;->a:J

    return-void
.end method

.method public constructor <init>(Ljvs;Ljava/util/concurrent/Executor;Ljuf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecb;->b:Ljava/util/HashMap;

    new-instance v0, Ldsk;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldsk;-><init>(Lecb;I)V

    invoke-interface {p1, v0, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method
